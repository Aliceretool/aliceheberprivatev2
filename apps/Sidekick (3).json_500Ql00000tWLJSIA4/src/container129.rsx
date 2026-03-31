<Container
  id="container129"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  style={{
    borderRadius: "16px",
    border:
      "{{ \n  item.priority === 'High Priority' ? '#EF4444' : \n  item.priority === 'Medium Priority' ? '#F59E0B' : \n  item.priority === 'Low Priority' ? '#3B82F6' : \n  '#6B7280' \n}}",
    boxShadow: "mediumElevation",
  }}
>
  <Header>
    <Text
      id="containerTitle158"
      value="#### {{ item }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text
      id="text557"
      margin="0"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value="{{ item.subject}}"
      verticalAlign="center"
    />
    <Text
      id="text558"
      horizontalAlign="center"
      style={{
        color: "rgba(255, 255, 255, 1)",
        background:
          "{{ \n  item.priority === 'High Priority' ? '#EF4444' : \n  item.priority === 'Medium Priority' ? '#F59E0B' : \n  item.priority === 'Low Priority' ? '#3B82F6' : \n  '#6B7280' \n}}",
        fontSize: "labelEmphasizedFont",
        fontWeight: "labelEmphasizedFont",
        fontFamily: "labelEmphasizedFont",
      }}
      value="{{item.priority}}"
      verticalAlign="center"
    />
    <Button id="button30" text="{{ item.action }}">
      <Event
        id="288cd222"
        event="click"
        method="openPage"
        params={{
          options: { map: { passDataWith: "urlParams" } },
          pageName: "NBA_Cards",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Icon
      id="icon17"
      horizontalAlign="center"
      icon={
        '{{ \n  item.rectype === \'Retention Risks\' ? "/icon:line/interface-user-multiple" : \n  item.rectype === \'Compliance & Regulations\' ? "/icon:bold/interface-security-shield-4" : \n  item.rectype === \'Professional Development\' ? "/icon:line/interface-text-formatting-list-bullets" : "/icon:line/interface-text-formatting-list-bullets" \n}}'
      }
      style={{
        map: {
          color:
            "{{ \n  item.priority === 'High Priority' ? '#EF4444' : \n  item.priority === 'Medium Priority' ? '#F59E0B' : \n  item.priority === 'Low Priority' ? '#3B82F6' : \n  '#6B7280' \n}}",
        },
      }}
    />
    <Text
      id="text559"
      margin="0"
      value="{{item.subtext}}"
      verticalAlign="center"
    />
  </View>
</Container>
