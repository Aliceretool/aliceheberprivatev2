<Container
  id="meetingSnapshotContainer"
  _gap="0px"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{}}
  styleContext={{}}
>
  <Header>
    <Button
      id="joinMeetingButton"
      disabled={
        "{{ \n  (function() {\n    // 1. Extract the potential link exactly how the URL action does\n    const link = item.hangoutLink || \n                 item.conferenceData?.entryPoints?.find(ep => ep.entryPointType === 'video')?.uri ||\n                 (item.location && item.location.includes('http') ? item.location : null) || \n                 (item.description && item.description.match(/https?:\\/\\/[^\\s<>\"]+/g)?.[0]);\n\n    // 2. Define \"Fake\" links we want to ignore (Google help, etc.)\n    const isFakeLink = !link || link.includes('g.co/calendar') || link.includes('mail.google.com');\n\n    // 3. Hide if it's a fake link OR if there's no link at all\n    return isFakeLink;\n  })() \n}}"
      }
      hidden=""
      style={{ map: { background: "#6395ed" } }}
      text="Join Meeting"
    >
      <Event
        id="51e2b1aa"
        event="click"
        method="openUrl"
        params={{
          map: {
            url: "{{ \n  item.hangoutLink || \n  item.conferenceData?.entryPoints?.find(ep => ep.entryPointType === 'video')?.uri ||\n  (item.location && item.location.startsWith('http') ? item.location : null) || \n  (item.description && item.description.match(/https?:\\/\\/(?:[a-zA-Z0-9-]+\\.)?teams\\.microsoft\\.com\\/[^\\s<>\"]+/g)?.[0]) ||\n  (item.description && item.description.match(/https?:\\/\\/[^\\s<>\"]+/g)?.[0])\n}}",
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="coachingEventSummary"
      value="#### {{ item.summary }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <IconText
      id="meetingDateIconText"
      icon="line/interface-calendar"
      style={{ map: { iconColor: "#4a90e2" } }}
      text="{{ moment(item.start.dateTime).format('MMMM D, YYYY') }}"
    />
    <IconText
      id="meetingTimeIconText"
      icon="line/interface-time-reset"
      style={{ map: { iconColor: "#4a90e2" } }}
      text="{{ moment(item.start.dateTime).format('HH:mm') }} - {{ moment(item.end.dateTime).format('HH:mm') }}"
    />
    <Icon
      id="expandCardIcon"
      horizontalAlign="center"
      icon="bold/interface-arrows-expand-4"
      style={{ map: { color: "#4a90e2" } }}
    >
      <Event
        id="281ff2fd"
        event="click"
        method="run"
        params={{
          map: {
            src: "// 1. Update the selection variable with the clicked item\nawait selectedEvent.setValue(item); \n\n// 2. Trigger the data fetch only AFTER the variable is set\n// This ensures the query doesn't look for 'null' or old data\nawait filteredLearnerList.trigger();",
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Icon>
  </View>
</Container>
