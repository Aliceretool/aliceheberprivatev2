<Container
  id="IncomingCall_Card"
  footerPadding="4px 12px"
  headerPadding="4px 8px"
  margin="0 0 10px 0"
  padding="0"
  showBody={true}
  showHeader={true}
  showHeaderBorder={false}
  style={{
    ordered: [
      {
        background:
          '{{\n  item.id === selectedInteractionCall.value?.id\n    ? theme.tokens.selected\n    : IncomingCall_Card.hovered\n      ? theme.tokens.hovered\n      : "transparent"\n}}',
      },
    ],
  }}
  styleContext={{
    ordered: [
      {
        surfacePrimary:
          '{{\n  item.id === selectedInteractionCall.value?.id\n    ? theme.tokens.selected\n    : IncomingCall_Card.hovered\n      ? theme.tokens.hovered\n      : "transparent"\n}}',
      },
    ],
  }}
>
  <Header>
    <Text
      id="IncomingCall_ReceivedDate"
      margin="0"
      value="###### {{ item.dateTimeLabel }}"
      verticalAlign="center"
    />
  </Header>
  <View id="e4978" viewKey="View 1">
    <Container
      id="IncomingCall_StatusContainer"
      _gap="0px"
      _justify="space-between"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="49277" viewKey="View 1">
        <Text
          id="IncomingCall_Status"
          value="###### {{ item.status }}"
          verticalAlign="center"
        />
        <Text
          id="IncomingCall_CallMeBack"
          hidden="{{ !item.isCallMeBack }}"
          value="###### Call me back"
          verticalAlign="center"
        />
      </View>
    </Container>
    <IconText
      id="iconText1"
      icon="line/phone-telephone-ringing"
      iconPosition="right"
      margin="0 8px 8px 8px"
      style={{ ordered: [{ iconGap: "30px" }] }}
      text="{{ item.phoneNumber }}"
    />
    <Text
      id="text19"
      margin="0px 8px"
      value="Waiting time: {{ item.waitingTimeLabel }}"
      verticalAlign="center"
    />
    <Text
      id="text17"
      hidden=""
      margin="0px 8px"
      value="IVR choice: {{ item.ivrChoice }}"
      verticalAlign="center"
    />
    <Text
      id="text18"
      margin="0px 8px"
      value="{{ item.businessPartner }}"
      verticalAlign="center"
    />
    <Text
      id="text20"
      margin="0px 8px"
      value="Dedicated line"
      verticalAlign="center"
    />
  </View>
  <Event
    event="click"
    method="setValue"
    params={{ ordered: [{ value: "{{ item }}" }] }}
    pluginId="selectedInteractionCall"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</Container>
