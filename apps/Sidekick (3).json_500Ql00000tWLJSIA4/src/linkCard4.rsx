<Container
  id="linkCard4"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Image
      id="image10"
      horizontalAlign="center"
      margin="0"
      src="https://guidance-hub.multiverse.io/_next/image?url=https%3A%2F%2Fs3.eu-west-2.amazonaws.com%2Fariel-production%2Fproject-thumbnails%2F807266079429835.png&w=96&q=75"
    />
    <Status
      id="status2"
      horizontalAlign="center"
      itemMode="static"
      margin="0"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value="{{ item.has_review ? 'completed' : 'notStarted' }}"
    >
      <Option
        id="00030"
        color="{{ theme.success }}"
        icon="bold/interface-validation-check-circle"
        label="Completed"
        value="completed"
      />
      <Option
        id="00031"
        color="{{ theme.info }}"
        icon="bold/interface-arrows-synchronize"
        label="In Progress"
        value="in progress"
      />
      <Option
        id="00032"
        icon="bold/phone-notification-application-1-alternate"
        label="Not Started"
        value="notStarted"
      />
    </Status>
    <Spacer id="spacer24" />
    <Text
      id="containerTitle153"
      value="###### {{ item.project_title }}"
      verticalAlign="center"
    />
    <Spacer id="spacer25" />
  </View>
  <Event
    id="faf4136c"
    event="click"
    method="openUrl"
    params={{ map: { url: "{{ item.project_link}}" } }}
    pluginId=""
    type="util"
    waitType="debounce"
  />
</Container>
