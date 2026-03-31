// 1. Access the items array directly from the query data
const rawData = allLearnersPRData.data?.items || [];
const today = new Date();

const processed = rawData.map(row => {
  const pr = row.progress_review_summary?.latest_progress_review;
  const dueDate = pr?.due_date ? new Date(pr.due_date) : null;
  
  // Status Flags based on your JSON structure
  const learnerDone = !!pr?.apprentice_completed_at;
  const managerDone = !!pr?.apprentice_manager_completed_at;
  const coachDone = !!pr?.coach_completed_at;
  
  // 1. Map to "Status" Dropdown (Complete vs Incomplete)
  const statusLabel = coachDone ? "Complete" : "Incomplete";

  // 2. Map to "Feedback Status" Dropdown
  let feedbackLabel = "Neither Submitted";
  if (learnerDone && managerDone) feedbackLabel = "Both Submitted";
  else if (learnerDone) feedbackLabel = "Manager Not Submitted";
  else if (managerDone) feedbackLabel = "Learner Not Submitted";

  // 3. Map to "Deadline" Logic (Days remaining calculation)
  // We use Math.floor to get the difference in full days
  const diffTime = dueDate ? (dueDate.getTime() - today.getTime()) : null;
  const diffDays = diffTime !== null ? Math.ceil(diffTime / (1000 * 60 * 60 * 24)) : 999;
  
  let deadlineLabel = "Due After 30 Days";
  if (diffDays < 0) deadlineLabel = "Overdue";
  else if (diffDays <= 7) deadlineLabel = "Due in 7 Days";
  else if (diffDays <= 14) deadlineLabel = "Due in 14 Days";
  else if (diffDays <= 30) deadlineLabel = "Due in 30 Days";

  // 4. Calculate the "75d overdue" style label for the UI
  const daysOverdueCount = diffDays < 0 ? Math.abs(diffDays) : 0;
  const overdueTag = daysOverdueCount > 0 ? `${daysOverdueCount}d overdue` : "";

  return {
    ...row,
    fullName: `${row.learner?.first_name || ''} ${row.learner?.last_name || ''}`.trim(),
    statusLabel: statusLabel,
    feedbackLabel: feedbackLabel,
    deadlineLabel: deadlineLabel,
    overdueTag: overdueTag,
    // Logic Bucketing for your List Views
    isReady: learnerDone && managerDone && !coachDone,
    isAwaiting: !learnerDone || !managerDone,
    isSubmitted: coachDone,
    isUpcoming: diffDays > 0 && diffDays <= 30 && !learnerDone
  };
});

// Update the Variable so the rest of the app can use this data
processedPRData.setValue(processed);

// Return the data so you can see it in the "Output" tab of the debugger
return processed;