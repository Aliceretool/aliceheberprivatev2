<Container
  id="collapsibleContainer29"
  _gap={0}
  disabled="{{ ['Complete'].includes(getIssue11.data.status_value[0]) }}"
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
      id="collapsibleTitle33"
      marginType="normal"
      value="#### {{ i18n.t('People & Dates')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="b5896" viewKey="View 1">
    <Select
      id="select40"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject5.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Assignee') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject5.data).filter(x => x.email == getIssue11.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    >
      <Event
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="date_due_detail5"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Due Date') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue11.data.status_value[0]) }}"
      value="{{ getIssue11.data.due_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dueDate5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="select41"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject5.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Reporter') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject5.data).filter(x => x.email == getIssue11.data.created_by[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <DateTime
      id="dateTime_createdAt4"
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
      value="{{ getIssue11.data.created_at[0] }}"
      valueTimeZone="00:00"
    />
    <Text
      id="text64"
      heightType="fixed"
      marginType="normal"
      value="{{ i18n.t('Watchers')}}
"
      verticalAlign="center"
    />
    <AvatarGroup
      id="avatarGroup5"
      fallbacks=""
      images="{{ getWatchers5.data.avatarURL}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <DateTime
      id="dateTime_updatedAt5"
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
      value="{{ getIssue11.data.updated_at[0] }}"
      valueTimeZone="00:00"
    />
    <Link
      id="link5"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue11.data.status_value[0]) }}"
      hidden="{{ current_user.email == getIssue11.data.assigned_to[0] }} "
      iconAfter="line/interface-user-add"
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
        pluginId="updIssue_assignToMe5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Button
      id="button_startWatching10"
      hidden="{{ formatDataAsArray(getWatchers5.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject5.data).filter(x => x.email == current_user.email)[0].userID).length == 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view-off"
      marginType="normal"
      style={{
        ordered: [{ background: "surfacePrimary" }, { label: "primary" }],
      }}
      tooltipText="{{ i18n.t('Stop watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="delWatchers5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button_startWatching9"
      hidden="{{ formatDataAsArray(getWatchers5.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject5.data).filter(x => x.email == current_user.email)[0].userID).length > 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view"
      marginType="normal"
      style={{
        ordered: [{ label: "primary" }, { background: "surfacePrimary" }],
      }}
      tooltipText="{{ i18n.t('Start Watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insWatchers5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
