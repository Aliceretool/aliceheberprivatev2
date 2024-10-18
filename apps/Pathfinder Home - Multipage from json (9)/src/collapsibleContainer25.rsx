<Container
  id="collapsibleContainer25"
  _gap={0}
  disabled=""
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
      id="collapsibleTitle28"
      marginType="normal"
      value="#### {{i18n.t('People & Dates')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="b5896" viewKey="View 1">
    <Select
      id="select36"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject4.data }}"
      emptyMessage="No options"
      imageByIndex="{{  item.avatarURL}}"
      label="{{ i18n.t('Assignee') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject4.data).filter(x => x.email == getIssue9.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="date_due_detail4"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Expiry Date') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      value="{{ getIssue9.data.due_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dueDate4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="select37"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject4.data }}"
      emptyMessage="No options"
      imageByIndex="{{  item.avatarURL}}"
      label="{{ i18n.t('Reporter') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject4.data).filter(x => x.email == getIssue9.data.created_by[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <DateTime
      id="dateTime_createdAt3"
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
      value="{{ getIssue9.data.created_at[0] }}"
      valueTimeZone="00:00"
    />
    <Text
      id="text55"
      heightType="fixed"
      marginType="normal"
      value="{{i18n.t('Watchers')}}
"
      verticalAlign="center"
    />
    <DateTime
      id="dateTime_updatedAt4"
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
      value="{{ getIssue9.data.updated_at[0] }}"
      valueTimeZone="00:00"
    />
    <Button
      id="button_startWatching8"
      hidden="{{ formatDataAsArray(getWatchers4.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject4.data).filter(x => x.email == current_user.email)[0].userID).length == 0 }} "
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
        pluginId="delWatchers4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Link
      id="link4"
      disabled="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      hidden="{{ current_user.email == getIssue9.data.assigned_to[0] }} "
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
        pluginId="updIssue_assignToMe4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Button
      id="button_startWatching7"
      hidden="{{ formatDataAsArray(getWatchers4.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject4.data).filter(x => x.email == current_user.email)[0].userID).length > 0 }} "
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
        pluginId="insWatchers4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <AvatarGroup
      id="avatarGroup4"
      fallbacks=""
      images="{{ getWatchers4.data.avatarURL}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </View>
</Container>
