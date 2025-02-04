<Container
  id="Interaction_Card"
  _gap="0px"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hoistFetching={true}
  margin="0 0 8px 0"
  padding="5px 5px 0 5px"
  showBody={true}
  style={{
    ordered: [
      {
        background:
          "{{ \n  item.id === selectedInteraction.value?.id\n    ? theme.tokens.selected\n    : Interaction_Card.hovered\n      ? theme.tokens.hovered\n      : theme.surfacePrimary\n}}",
      },
    ],
  }}
  styleContext={{
    ordered: [
      {
        surfacePrimary:
          "{{ \n  item.id === selectedInteraction.value?.id\n    ? theme.tokens.selected\n    : Interaction_Card.hovered\n      ? theme.tokens.hovered\n      : theme.surfacePrimary\n}}",
      },
    ],
  }}
>
  <Header>
    <Text
      id="containerTitle10"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="98b1a" viewKey="View 1">
    <Container
      id="InteractionTypes_Container"
      _align="center"
      _direction="vertical"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hoistFetching={true}
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="0b67a" viewKey="View 1">
        <Icon
          id="InteractionType_Icon"
          horizontalAlign="center"
          icon="{{ item.icon }}"
        />
        <Icon
          id="IncomingIcon"
          hidden="{{ !item.isIncoming }}"
          horizontalAlign="center"
          icon="bold/interface-arrows-right"
        />
      </View>
    </Container>
    <Text
      id="Interaction_From"
      margin="0 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value={
        '<div style="display:flex;align-items:center;font-weight:500;">\n  From: {{ item.from }}\n  <span style="display:{{ item.contact ? "inline-block" : "none" }};border-radius: 50px;border: 1px solid {{ theme.surfacePrimaryBorder }};padding:2px 12px;margin-left:10px;text-wrap:nowrap;text-overflow:ellipsis;max-width:12ch;overflow:hidden;font-size:10px;">\n    {{ item.contact?.role?.name }}\n  </span>\n</div>'
      }
      verticalAlign="center"
    />
    <Container
      id="InteractionStatuses_Container"
      _align="center"
      _flexWrap={true}
      _gap="0px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hoistFetching={true}
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="0b67a" viewKey="View 1">
        <Container
          id="InteractionStatus"
          _align="center"
          _gap="5px"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="4px 1px 1px 1px"
          padding="2px 8px"
          showBody={true}
          style={{ ordered: [{ borderRadius: "50px" }] }}
        >
          <View id="db297" viewKey="View 1">
            <Text
              id="InteractionStatus_Text"
              margin="4px 0px"
              style={{
                ordered: [
                  { fontSize: "labelEmphasizedFont" },
                  { fontWeight: "labelEmphasizedFont" },
                  { fontFamily: "labelEmphasizedFont" },
                ],
              }}
              value="{{ _.startCase(item.status) }}"
              verticalAlign="center"
            />
            <Icon
              id="InteractionStatus_IsAutomatic"
              hidden="{{ !item.isAutomatic }}"
              icon={'{{ "/icon:bold/computer-robot" }}'}
              margin="4px 0 0 0"
            />
          </View>
        </Container>
        <Icon
          id="Interaction_Important"
          hidden="{{ !item.isImportant }}"
          horizontalAlign="center"
          icon="bold/interface-alert-warning-circle"
          margin="0 4px"
          style={{ ordered: [] }}
        />
        <Icon
          id="Interaction_HasAttachments"
          hidden="{{ !item.attachments?.length }}"
          horizontalAlign="center"
          icon="bold/interface-edit-attachment-2"
          margin="0 4px"
          style={{ ordered: [] }}
        />
      </View>
    </Container>
    <Text
      id="Interaction_To"
      margin="0 8px"
      style={{
        ordered: [
          { fontSize: "12px" },
          { fontWeight: "500" },
          { fontFamily: "DaxlinePro" },
        ],
      }}
      value="To: {{ item.to }}"
      verticalAlign="center"
    />
    <Include src="./Information_Container.rsx" />
  </View>
  <Event
    event="click"
    method="setValue"
    params={{ ordered: [{ value: "{{ item }}" }] }}
    pluginId="selectedInteraction"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</Container>
