<Container
  id="mainDigestContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="{{ (coachCalendarEvents.data?.items?.length || 0) === 0 }}"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="personalisedGreetingText"
      margin="8px 8px"
      value="### **{{ sessionGreeting.value }}**"
      verticalAlign="center"
    />
    <Text
      id="alertText"
      heightType="fixed"
      margin="8px 8px"
      style={{
        map: {
          background:
            "{{ theme.mode === 'Dark' ? 'rgba(59, 130, 246, 0.1)' : '#F0F7FF' }}",
        },
      }}
      value="📌  **Important:** Please check your calendar for event details and attendee accuracy. Events with hidden attendees are not covered in this digest."
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Include src="./noLearnerDataContainer.rsx" />
    <Text
      id="todaysSessionsText"
      style={{ fontSize: "h4Font", fontWeight: "h4Font", fontFamily: "h4Font" }}
      value="Today's Sessions "
      verticalAlign="center"
    />
    <Text
      id="CardCTAText"
      style={{
        fontSize: "labelFont",
        fontWeight: "labelFont",
        fontFamily: "labelFont",
      }}
      value="Select a session to prepare for your call"
      verticalAlign="center"
    />
    <Container
      id="spinner_Container"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="{{ !selectedEvent.value || (!allLearnersMasterList.isFetching && !filteredLearnerList.isFetching) }}"
      loading="{{ allLearnersMasterList.isFetching || filteredLearnerList.isFetching }}"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle168"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="spinnerContainerText"
          horizontalAlign="center"
          value="Taking a quick lap while the data arrives... 🏎️"
          verticalAlign="center"
        />
      </View>
    </Container>
    <ListViewBeta
      id="calendarEventsList"
      _primaryKeys=""
      data="{{ coachCalendarEvents.data.items }}"
      heightType="auto"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./meetingSnapshotContainer.rsx" />
    </ListViewBeta>
    <Include src="./emptyStateContainer.rsx" />
    <ListViewBeta
      id="learnerDetailsList"
      _primaryKeys="{{ item.id }}"
      data="{{ filteredLearnerList.data }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./learnerDetailsSubContainer.rsx" />
    </ListViewBeta>
  </View>
</Container>
