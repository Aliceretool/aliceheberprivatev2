<Container
  id="prContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader="false"
>
  <Header>
    <Text
      id="containerTitle27"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Icon
      id="icon6"
      horizontalAlign="center"
      icon="line/interface-calendar"
      style={{}}
    />
    <Text
      id="containerTitle28"
      style={{
        fontSize: "labelFont",
        fontWeight: "labelFont",
        fontFamily: "labelFont",
      }}
      value="Last Progress Review"
      verticalAlign="center"
    />
    <IconText
      id="iconText8"
      horizontalAlign="center"
      icon="bold/interface-alert-warning-circle-alternate"
      margin="0"
      style={{ iconGap: "0px", background: "rgba(166, 115, 5, 0.08)" }}
    />
    <Text
      id="containerTitle29"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value={
        '{{\n  (() => {\n    // 1. Access the date from the selected_user variable\n    const rawDate = selected_user.value?.progress_review_summary.previous_progress_review.completed_at;\n\n    // 2. Check if the date exists\n    if (rawDate) {\n       // 3. Calculate the difference in days\n       const daysDiff = moment().diff(moment(rawDate), \'days\');\n       \n       // 4. THE 84-DAY RULE (STATIC TEXT)\n       // If the review was more than 84 days ago, return the specific static phrase\n       if (daysDiff > 84) {\n           return "No PR in last 84 days";\n       }\n\n       // 5. Standard Format (Under or equal to 84 days)\n       // Show the actual days ago with singular/plural logic\n       const unit = daysDiff === 1 ? "day" : "days";\n       return daysDiff + " " + unit + " ago";\n    }\n\n    // 6. Fallback if no date is found\n    return "No PRs yet"; \n  })()\n}}'
      }
      verticalAlign="center"
    />
    <Text
      id="containerTitle30"
      style={{
        fontSize: "labelFont",
        fontWeight: "labelFont",
        fontFamily: "labelFont",
      }}
      value={
        '{{\n  (() => {\n    // 1. Access the date from the selected_user variable using the Progress Review key\n    const rawDate = selected_user.value?.progress_review_summary.previous_progress_review.completed_at;\n\n    // 2. Check if the date exists\n    if (rawDate) {\n       // 3. Format the date (e.g., "11 Nov 2025")\n       return moment(rawDate).format("D MMM YYYY");\n    }\n\n    // 4. Fallback if no date is found\n    return "None"; \n  })()\n}}'
      }
      verticalAlign="center"
    />
    <Text
      id="containerTitle31"
      hidden={
        "{{\n  (() => {\n    // 1. Access the date\n    const rawDate = selected_user.value?.['latest_progress_review_completed_date'];\n\n    // 2. Check if the date exists\n    if (rawDate) {\n       // 3. Calculate difference\n       const daysDiff = moment().diff(moment(rawDate), 'days');\n       \n       // 4. THE VISIBILITY LOGIC\n       // We want \"Hidden\" to be false (visible) ONLY if daysDiff > 84.\n       // Therefore, we return true (hidden) if daysDiff is <= 84.\n       return daysDiff <= 84;\n    }\n\n    // 5. If no date exists (No PRs yet), keep it hidden (return true)\n    return true; \n  })()\n}}"
      }
      style={{
        fontSize: "labelFont",
        fontWeight: "labelFont",
        fontFamily: "labelFont",
        color: "warning",
      }}
      value="Meeting Required"
      verticalAlign="center"
    />
    <Link
      id="link3"
      allowWrap={true}
      iconAfter="bold/interface-link-square-alternate"
      style={{
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      text="View Progress Reviews"
    >
      <Event
        id="8fd1f8ba"
        event="click"
        method="openUrl"
        params={{
          map: {
            url: "https://platform.multiverse.io/progress/coach/reviews-summary",
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
  </View>
</Container>
