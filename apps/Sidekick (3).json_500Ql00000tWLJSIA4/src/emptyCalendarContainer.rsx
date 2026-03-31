<Container
  id="emptyCalendarContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ !coachCalendarEvents.data || coachCalendarEvents.isLoading || coachCalendarEvents.data?.items?.length > 0 }}"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle112"
      value="#### testing empty Calendar "
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Icon
      id="noCoachingEventsIcon"
      horizontalAlign="center"
      icon="line/interface-calendar-warning"
      style={{}}
    />
    <Text
      id="personalisedNoEventtext"
      horizontalAlign="center"
      margin="20px 8px"
      style={{ fontSize: "h1Font", fontWeight: "h1Font", fontFamily: "h1Font" }}
      value="Hi {{ current_user.firstName || 'friend' }}, you have no coaching events in your calendar today!"
      verticalAlign="center"
    />
    <Text
      id="noEventsMessageText"
      horizontalAlign="center"
      margin="10px 8px"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value="It looks like your schedule is clear. Check back tomorrow for your next coaching sessions, 
or head over to your learner list to review progress. "
      verticalAlign="center"
    />
    <Button
      id="backToLearnerViewButton"
      heightType="auto"
      margin="14px 8px"
      style={{ activeBackground: "#6395ed", background: "#6395ed" }}
      text="View My Learners"
    >
      <Event
        id="c8d1a885"
        event="click"
        method="openPage"
        params={{
          options: { passDataWith: "urlParams", queryParams: [] },
          pageName: "my_learners2",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
