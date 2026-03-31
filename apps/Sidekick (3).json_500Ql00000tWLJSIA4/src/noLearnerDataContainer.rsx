<Container
  id="noLearnerDataContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ !selectedEvent.value || allLearnersMasterList.isFetching || filteredLearnerList.isFetching || (filteredLearnerList.data && filteredLearnerList.data.length > 0) }}"
  padding="12px"
  showBody={true}
>
  <Header>
    <IconText
      id="iconText13"
      icon="bold/interface-user-single"
      style={{
        fontSize: "h2Font",
        fontWeight: "h2Font",
        fontFamily: "h2Font",
        iconColor: "#4a90e2",
      }}
      text={'{{ selectedEvent.value?.summary || "No Title Found" }}'}
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Icon
      id="noLearnerDataIcon"
      horizontalAlign="center"
      icon="line/interface-alert-warning-triangle"
      style={{ map: { color: "#916e26" } }}
    />
    <Text
      id="noLearnerDataTitle"
      horizontalAlign="center"
      style={{ fontSize: "h5Font", fontWeight: "h5Font", fontFamily: "h5Font" }}
      value="### No learner details found"
      verticalAlign="center"
    />
    <Text
      id="noLearnerDataText"
      value={
        "#### Here's what to do next:\n\n* **Check the Google Calendar guest list:** Ensure the learner's email is visible in Google Calendar. If this is a \"Hold\" or a manual block without guests, learner data won't show.\n* **Check if this is a Group Session booked via Calendly:** Group coaching will migrate from Calendly to the new MV platform scheduling tool in Q1. You'll be able to see learner details for group coaching events once launched.\n* **Verify the email address:** Ensure the email the learner used to book the event matches the one they registered with (you can check their registered email in Individual Learner page in Sidekick)."
      }
      verticalAlign="center"
    />
    <Container
      id="contactTeamInfoTextcontainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      style={{ map: { background: "canvas" } }}
    >
      <Header>
        <Text
          id="containerTitle123"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <IconText
          id="infoIconText"
          horizontalAlign="center"
          icon="bold/interface-alert-information-circle-alternate"
          style={{
            fontSize: "defaultFont",
            fontWeight: "defaultFont",
            fontFamily: "defaultFont",
          }}
          text="If you believe this is an error, please contact the Sidekick team."
        />
      </View>
    </Container>
  </View>
</Container>
