<Container
  id="lastPRContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <View id="00030" viewKey="View 1">
    <Text
      id="text606"
      value={
        "**Due:** {{\n  (() => {\n    // 1. Point to the \"latest_progress_review\" block\n    const review = item.progress_review_summary?.previous_progress_review;\n    const rawDate = review?.due_date;\n\n    // 2. If no due_date exists in that specific block, show fallback\n    if (!rawDate) return 'No data available';\n\n    // 3. Check ONLY the coach's submission status as requested\n    const coachHasSubmitted = review.coach_completed_at !== null;\n\n    const dateFormatted = moment(rawDate).format('MMMM D, YYYY');\n    \n    // 4. If coach submitted, show as (Submitted)\n    if (coachHasSubmitted) return `${dateFormatted} (Submitted)`;\n\n    // 5. Otherwise, check if it's past the due date (Dec 11, 2025)\n    const isOverdue = moment(rawDate).isBefore(moment(), 'day');\n\n    return isOverdue \n      ? `${dateFormatted} <span style=\"color: #D32F2F;\">(Overdue)</span>` \n      : dateFormatted;\n  })()\n}}"
      }
      verticalAlign="center"
    />
    <Text
      id="text607"
      value={
        'Apprentice Completed: {{ \n  item.progress_review_summary?.previous_progress_review?.apprentice_completed_at \n    ? "✅ Yes" \n    : "❌ No" \n}}'
      }
      verticalAlign="center"
    />
    <Text
      id="text608"
      value={
        'Manager Completed: {{ \n  item.progress_review_summary?.previous_progress_review?.apprentice_manager_completed_at \n    ? "✅ Yes" \n    : "❌ No" \n}}'
      }
      verticalAlign="center"
    />
    <Text
      id="text609"
      value={
        'Coach Completed: {{ \n  item.progress_review_summary?.previous_progress_review?.coach_completed_at \n    ? "✅ Yes" \n    : "❌ No" \n}}'
      }
      verticalAlign="center"
    />
    <Text
      id="text610"
      value={
        'Async Recommendation: {{ \n  item.progress_review_summary?.previous_progress_review?.async_recommendation \n    ? "✅ Yes" \n    : "❌ No" \n}}'
      }
      verticalAlign="center"
    />
  </View>
</Container>
