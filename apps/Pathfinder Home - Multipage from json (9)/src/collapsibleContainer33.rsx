<Container
  id="collapsibleContainer33"
  _gap={0}
  disabled="{{ ['Complete'].includes(getIssue13.data.status_value[0]) }}"
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
      id="collapsibleTitle37"
      marginType="normal"
      value="####  {{i18n.t('People & Dates')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="b5896" viewKey="View 1">
    <Select
      id="select44"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject6.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Assignee') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      labelWidth="29"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Approved','Rejected'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == getIssue13.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="date_due_detail6"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ ['Approved','Rejected'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Due Date') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue13.data.status_value[0]) }}"
      value="{{ getIssue13.data.due_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dueDate6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="select45"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject6.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Reporter') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      labelWidth="29"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == getIssue13.data.created_by[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <DateTime
      id="dateTime_createdAt5"
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
      value="{{ getIssue13.data.created_at[0] }}"
      valueTimeZone="00:00"
    />
    <Text
      id="text75"
      heightType="fixed"
      hidden="{{ getWatchers6.data.length = 0}} "
      marginType="normal"
      value="{{i18n.t('Watchers')}}"
      verticalAlign="center"
    />
    <DateTime
      id="dateTime_updatedAt6"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Last updated') }}"
      labelPosition="top"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue13.data.updated_at[0] }}"
      valueTimeZone="00:00"
    />
    <Button
      id="button_startWatching12"
      hidden="{{ formatDataAsArray(getWatchers6.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == current_user.email)[0].userID).length == 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view-off"
      marginType="normal"
      style={{
        ordered: [{ label: "primary" }, { background: "surfacePrimary" }],
      }}
      tooltipText="{{ i18n.t('Stop watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="delWatchers6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Link
      id="link6"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue13.data.status_value[0]) }}"
      hidden="{{ current_user.email == getIssue13.data.assigned_to[0] }} "
      iconBefore="line/interface-user-add"
      maintainSpaceWhenHidden={true}
      marginType="normal"
      showUnderline="hover"
      textSize="default"
      tooltipText="{{ i18n.t('Assign to me') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assignToMe6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Button
      id="button_startWatching11"
      hidden="{{ formatDataAsArray(getWatchers6.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject6.data).filter(x => x.email == current_user.email)[0].userID).length > 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view"
      marginType="normal"
      style={{
        ordered: [{ background: "surfacePrimary" }, { label: "primary" }],
      }}
      tooltipText="{{ i18n.t('Start Watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insWatchers6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <AvatarGroup
      id="avatarGroup6"
      fallbacks=""
      images="{{ getWatchers6.data.avatarURL}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </View>
</Container>
