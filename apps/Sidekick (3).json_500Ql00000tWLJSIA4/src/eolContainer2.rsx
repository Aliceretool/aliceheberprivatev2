<Container
  id="eolContainer2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader="false"
>
  <Header>
    <Text
      id="containerTitle141"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Icon
      id="icon14"
      horizontalAlign="center"
      icon="line/interface-calendar"
      style={{}}
    />
    <Text
      id="containerTitle142"
      style={{
        fontSize: "labelFont",
        fontWeight: "labelFont",
        fontFamily: "labelFont",
      }}
      value="Evidence of learning"
      verticalAlign="center"
    />
    <IconText
      id="iconText28"
      horizontalAlign="center"
      icon="bold/interface-validation-check-alternate"
      margin="0"
      style={{ iconGap: "0px", background: "rgba(5, 166, 21, 0.08)" }}
    />
    <Text
      id="containerTitle143"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value={
        '{{\n  (() => {\n    // 1. Access the date from the selected_user variable\n    const rawDate = selected_user.value?.status.latest_evidence_of_learning_date;\n\n    // 2. Check if the date exists\n    if (rawDate) {\n       // 3. Calculate the difference in days\n       const daysDiff = moment().diff(moment(rawDate), \'days\');\n       \n       // 4. Determine if it should be singular or plural\n       const unit = daysDiff === 1 ? "day" : "days";\n       \n       // 5. Return the formatted string\n       return daysDiff + " " + unit + " ago";\n    }\n\n    // 6. Fallback\n    return "None"; \n  })()\n}}'
      }
      verticalAlign="center"
    />
    <Text
      id="containerTitle144"
      style={{
        fontSize: "labelFont",
        fontWeight: "labelFont",
        fontFamily: "labelFont",
      }}
      value={
        '{{\n  (() => {\n    // 1. Access the date from the selected_user variable with safety check\n    const rawDate = selected_user.value?.status.latest_evidence_of_learning_date;\n\n    // 2. Check if the date exists\n    if (rawDate) {\n       // 3. Format the date to match the screenshot (e.g., "11 Nov 2025")\n       return moment(rawDate).format("D MMM YYYY");\n    }\n\n    // 4. Fallback if no date is found\n    return "None"; \n  })()\n}}'
      }
      verticalAlign="center"
    />
  </View>
</Container>
