<Container
  id="collapsibleContainer8"
  _gap={0}
  disabled="{{ ['Closed','QP Rejected'].includes(getIssue2.data.status_value[0]) }}"
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
      id="collapsibleTitle8"
      marginType="normal"
      value="#### {{ i18n.t('People & Dates')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="b5896" viewKey="View 1">
    <Select
      id="select28"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject.data }}"
      disabled=""
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Assignee') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == getIssue2.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="date_due_detail"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Due Date') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      value="{{ getIssue2.data.due_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dueDate"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="select29"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Reporter') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == getIssue2.data.created_by[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <DateTime
      id="dateTime_createdAt"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Created') }}"
      labelPosition="top"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue2.data.created_at[0] }}"
      valueTimeZone="00:00"
    />
    <Text
      id="text28"
      value="Watchers ({{ formatDataAsArray(getWatchers.data).length }})"
      verticalAlign="center"
    />
    <DateTime
      id="dateTime_updatedAt"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Last Updated') }}"
      labelPosition="top"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue2.data.updated_at[0] }}"
      valueTimeZone="00:00"
    />
    <Button
      id="button_startWatching2"
      hidden="{{ formatDataAsArray(getWatchers.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == current_user.email)[0].userID).length == 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view-off"
      marginType="normal"
      style={{
        ordered: [
          { background: "surfacePrimary" },
          { hoverBackground: "surfacePrimary" },
          { label: "primary" },
        ],
      }}
      tooltipText="{{ i18n.t('Stop Watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="delWatchers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Link
      id="link1"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue2.data.status_value[0]) }}"
      hidden="{{ current_user.email == getIssue2.data.assigned_to[0] }} "
      horizontalAlign="center"
      iconBefore="line/interface-user-add"
      maintainSpaceWhenHidden={true}
      marginType="normal"
      showUnderline="hover"
      textSize="default"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assignToMe"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <AvatarGroup
      id="avatarGroup1"
      fallbacks=""
      images="{{ getWatchers.data.avatarURL}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Button
      id="button_startWatching"
      hidden="{{ formatDataAsArray(getWatchers.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject.data).filter(x => x.email == current_user.email)[0].userID).length > 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view"
      marginType="normal"
      style={{
        ordered: [
          { hoverBackground: "surfacePrimary" },
          { background: "surfacePrimary" },
          { label: "primary" },
        ],
      }}
      tooltipText="{{ i18n.t('Stop Watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insWatchers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
