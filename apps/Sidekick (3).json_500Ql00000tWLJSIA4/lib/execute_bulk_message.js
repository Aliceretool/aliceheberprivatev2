return (async () => {
  // 1. START LOADING STATE
  isBulkSending.setValue(true);

  try {
    // 2. GET DATA & FILTER SETTINGS
    const allRows = table2.data;
    const filterValue = select1.value;

    // --- DIAGNOSTIC LOG ---
    console.log("Filter Target:", filterValue);
    // ----------------------

    // 3. APPLY FILTER MANUALLY
    const learners = allRows.filter(row => {
      const rowStatus = row.OTJ || row.otj || row.Status || row.otj_status || row.risk_level;
      return rowStatus === filterValue;
    });

    // SAFETY CHECK
    if (!learners || learners.length === 0) {
      utils.showNotification({
        title: "Error",
        description: `Found 0 learners with status '${filterValue}'.`,
        notificationType: "error"
      });
      return;
    }

    // 4. TEMPLATE CHECK
    const templateRaw = textArea2.value;
    if (!templateRaw) {
       utils.showNotification({ title: "Error", description: "Message template is empty!", notificationType: "error" });
       return;
    }

    // 5. LOOP (SEND MESSAGES)
    const promises = learners.map(learner => {
      // A. NAME LOGIC
      const fullName = learner.Name || learner.name || learner.fullName || "Learner";
      const firstName = fullName.split(' ')[0];

      // B. ID LOGIC
      const safeId = learner.id || learner.ID || learner.learner_id || learner.row_id;

      // C. PERSONALIZE
      let personalizedBody = templateRaw.replaceAll('[Name]', firstName);

      if (!safeId) {
          console.error("❌ SKIPPING ROW - NO ID FOUND:", learner);
          return;
      }

      return bulk_write_message.trigger({
        additionalScope: {
          learner_id: safeId,
          message_text: personalizedBody
        }
      });
    });

    // 6. EXECUTE MESSAGING
    await Promise.all(promises);

    // ============================================================
    // 7. CALCULATE STATISTICS
    // ============================================================

    // A. Timestamp
    const currentTimestamp = new Date().toLocaleString();

    // B. Risk Counts
    const highRiskCount = learners.filter(l => {
        const r = l['Risk level'] || l.risk_level || l.RiskLevel || "";
        return r === 'High';
    }).length;

    const veryHighRiskCount = learners.filter(l => {
        const r = l['Risk level'] || l.risk_level || l.RiskLevel || "";
        return r === 'Very High';
    }).length;

    // C. Cohort Breakdown
    const cohortMap = {};
    learners.forEach(l => {
        const cohortName = l.Cohort || l.cohort || "Unknown Cohort";
        if (cohortMap[cohortName]) {
            cohortMap[cohortName] += 1;
        } else {
            cohortMap[cohortName] = 1;
        }
    });

    // D. TRIGGER ZAPIER (QUERY2)
    // We send the variables to fill the slots in your new Key-Value pair
    query2.trigger({
        additionalScope: {
            timestamp_val: currentTimestamp,
            total_val: learners.length,
            high_val: highRiskCount,
            very_high_val: veryHighRiskCount,
            cohort_counts: cohortMap
        }
    });

    // ============================================================

    // 8. SUCCESS
    utils.showNotification({
      title: "Success",
      description: `Sent messages to ${learners.length} learners. Report sent to Zapier.`,
      notificationType: "success"
    });

    get_messages_for_learner.trigger();

  } catch (error) {
    console.error(error);
    utils.showNotification({ title: "Script Error", description: error.message, notificationType: "error" });

  } finally {
    isBulkSending.setValue(false);
  }
})();