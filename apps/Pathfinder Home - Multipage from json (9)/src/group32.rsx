<Container
  id="group32"
  _gap="0px"
  _justify="center"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="b9039" viewKey="View 1">
    <Container
      id="linkCard21"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <View id="56437" viewKey="View 1">
        <Icon
          id="icon21"
          icon="line/interface-validation-check-circle"
          style={{ ordered: [{ background: "success" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle29"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Done')}}"
          verticalAlign="center"
        />
        <Text
          id="text46"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_status_done.data.done[0]}}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="linkCard17"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="c0af3" viewKey="View 1">
        <Icon
          id="icon17"
          icon="line/interface-edit-write-1"
          marginType="normal"
          style={{ ordered: [{ background: "primary" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle24"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('QA')}}"
          verticalAlign="center"
        />
        <Text
          id="text40"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_status_pending.data.OpenCRF[0]}}"
          verticalAlign="center"
        />
      </View>
      <Event
        event="click"
        method="confetti"
        pluginId=""
        type="util"
        waitType="debounce"
      />
    </Container>
    <Container
      id="linkCard18"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="c0af3" viewKey="View 1">
        <Icon
          id="icon18"
          icon="line/interface-edit-write-2"
          marginType="normal"
          style={{ ordered: [{ background: "secondary" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle25"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Deptartment')}}"
          verticalAlign="center"
        />
        <Text
          id="text41"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_status_pending_dept.data.pending_dept[0]}}"
          verticalAlign="center"
        />
      </View>
      <Event
        event="click"
        method="confetti"
        pluginId=""
        type="util"
        waitType="debounce"
      />
    </Container>
    <Container
      id="linkCard19"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="c0af3" viewKey="View 1">
        <Icon
          id="icon19"
          icon="line/interface-user-multiple"
          marginType="normal"
          style={{ ordered: [{ background: "warning" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle26"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('Committee')}}"
          verticalAlign="center"
        />
        <Text
          id="text42"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_status_pending_CAB.data.pending_CAB[0]}}"
          verticalAlign="center"
        />
      </View>
      <Event
        event="click"
        method="confetti"
        pluginId=""
        type="util"
        waitType="debounce"
      />
    </Container>
    <Container
      id="linkCard20"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="c0af3" viewKey="View 1">
        <Icon
          id="icon20"
          icon="line/interface-hierarchy-2"
          marginType="normal"
          style={{ ordered: [{ background: "highlight" }] }}
          styleVariant="background"
        />
        <Text
          id="containerTitle27"
          horizontalAlign="right"
          marginType="normal"
          value="{{ i18n.t('In Progress')}}"
          verticalAlign="center"
        />
        <Text
          id="text43"
          horizontalAlign="right"
          marginType="normal"
          value="#### {{get_status_in_progress.data.in_progress[0]}}"
          verticalAlign="center"
        />
      </View>
      <Event
        event="click"
        method="confetti"
        pluginId=""
        type="util"
        waitType="debounce"
      />
    </Container>
  </View>
</Container>
