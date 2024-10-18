<Container
  id="collapsibleContainer42"
  _gap={0}
  footerPaddingType="normal"
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
      id="collapsibleTitle46"
      marginType="normal"
      value="#### {{i18n.t('People')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="b5896" viewKey="View 1">
    <Select
      id="select67"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject8.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Assignee') }}"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      labelWidth="30"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == getIssue16.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="date_due_detail8"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Due Date') }}"
      marginType="normal"
      readOnly="{{ ['Closed','QP Rejected'].includes(getIssue16.data.status_value[0]) }}"
      value="{{ getIssue16.data.due_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dueDate8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="select68"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject8.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Reporter') }}"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      labelWidth="30"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == getIssue16.data.created_by[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <Link
      id="link8"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue16.data.status_value[0]) }}"
      hidden="{{ current_user.email == getIssue16.data.assigned_to[0] }} "
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
        pluginId="updIssue_assignToMe8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <DateTime
      id="dateTime_createdAt7"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Created') }}"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue16.data.created_at[0] }}"
      valueTimeZone="00:00"
    />
    <Text
      id="text111"
      heightType="fixed"
      marginType="normal"
      overflowType="hidden"
      value="**{{i18n.t('Watchers')}}**"
      verticalAlign="center"
    />
    <AvatarGroup
      id="avatarGroup8"
      fallbacks=""
      images="{{ getWatchers8.data.avatarURL}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <DateTime
      id="dateTime_updatedAt8"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Updated') }}"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue16.data.updated_at[0] }}"
      valueTimeZone="00:00"
    />
    <Button
      id="button_startWatching15"
      hidden="{{ formatDataAsArray(getWatchers8.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID).length > 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view"
      marginType="normal"
      style={{
        ordered: [{ background: "surfacePrimary" }, { label: "primary" }],
      }}
      tooltipText="{{ i18n.t('Start watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insWatchers8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button_startWatching16"
      hidden="{{ formatDataAsArray(getWatchers8.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject8.data).filter(x => x.email == current_user.email)[0].userID).length == 0 }} "
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
        pluginId="delWatchers8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
