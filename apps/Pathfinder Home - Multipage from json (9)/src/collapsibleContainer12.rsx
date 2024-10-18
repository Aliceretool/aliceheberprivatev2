<Container
  id="collapsibleContainer12"
  _gap={0}
  disabled="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle14"
      marginType="normal"
      value="#### {{ i18n.t('People & Dates')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="b5896" viewKey="View 1">
    <Date
      id="date_due_detail2"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Due Date')}}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue4.data.status_value[0]) }}"
      value="{{ getIssue4.data.due_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dueDate2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="select27"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject2.data }}"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Assignee')}}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject2.data).filter(x => x.email == getIssue4.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="select30"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject2.data }}"
      disabled="false"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Reporter')}}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject2.data).filter(x => x.email == getIssue4.data.created_by[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <Date
      id="date_incident_detail"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      firstDayOfWeek={1}
      hidden="false"
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Incident Date')}}"
      labelPosition="top"
      marginType="normal"
      readOnly="true"
      value="{{  getIssue4.data.incident_date[0]}}"
    />
    <Link
      id="link2"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ current_user.email == getIssue4.data.assigned_to[0] }} "
      iconAfter="line/interface-user-add"
      maintainSpaceWhenHidden={true}
      marginType="normal"
      showUnderline="hover"
      textSize="default"
      tooltipText="Assign to me"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assignToMe2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <DateTime
      id="dateTime_updatedAt2"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      hidden="false"
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Last Updated')}}"
      labelPosition="top"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue4.data.updated_at[0] }}"
      valueTimeZone="00:00"
    />
    <Button
      id="button_startWatching4"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ formatDataAsArray(getWatchers2.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject2.data).filter(x => x.email == current_user.email)[0].userID).length == 0 }} "
      horizontalAlign="left"
      iconBefore="line/interface-edit-view-off"
      margin="0"
      marginType="normal"
      style={{
        ordered: [
          { background: "surfacePrimary" },
          { label: "primary" },
          { hoverBackground: "surfacePrimary" },
        ],
      }}
      tooltipText="{{ i18n.t('Stop watching')}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="delWatchers2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text38"
      value="{{ i18n.t('Watchers')}} ({{ formatDataAsArray(getWatchers2.data).length }})"
      verticalAlign="center"
    />
    <AvatarGroup
      id="avatarGroup2"
      fallbacks=""
      images="{{ getWatchers2.data.avatarURL}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Button
      id="button_startWatching3"
      disabled="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      hidden="{{ formatDataAsArray(getWatchers2.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject2.data).filter(x => x.email == current_user.email)[0].userID).length > 0 }} "
      horizontalAlign="left"
      iconBefore="line/interface-edit-view"
      margin="0"
      marginType="normal"
      style={{
        ordered: [
          { background: "surfacePrimary" },
          { label: "primary" },
          { hoverBackground: "surfacePrimary" },
        ],
      }}
      tooltipText="{{ i18n.t('Start Watching')}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insWatchers2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
