<Container
  id="collapsibleContainer21"
  _gap={0}
  disabled=""
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
      id="collapsibleTitle22"
      marginType="normal"
      value="#### {{ i18n.t('People & Dates')}}
"
      verticalAlign="center"
    />
  </Header>
  <View id="b5896" viewKey="View 1">
    <Select
      id="select33"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject3.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Assignee') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == getIssue6.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="date_due_detail3"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled=""
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Due Date') }}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      value="{{ getIssue6.data.due_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dueDate3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="select34"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject3.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Reporter') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select an option') }}"
      readOnly="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == getIssue6.data.created_by[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <DateTime
      id="dateTime_createdAt2"
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
      value="{{ getIssue6.data.created_at[0] }}"
      valueTimeZone="00:00"
    />
    <Button
      id="button_startWatching6"
      disabled="{{ ['CR Rejected','Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      heightType="auto"
      hidden="{{ formatDataAsArray(getWatchers3.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID).length == 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view-off"
      marginType="normal"
      style={{
        ordered: [
          { label: "primary" },
          { background: "surfacePrimary" },
          { hoverBackground: "surfacePrimary" },
        ],
      }}
      tooltipText="{{ i18n.t('Stop watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="delWatchers3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text47"
      heightType="fixed"
      marginType="normal"
      overflowType="hidden"
      value="**{{ i18n.t('Watchers')}} ({{ formatDataAsArray(getWatchers3.data).length }})**
"
      verticalAlign="center"
    />
    <DateTime
      id="dateTime_updatedAt3"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Updated') }}"
      labelPosition="top"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue6.data.updated_at[0] }}"
      valueTimeZone="00:00"
    />
    <Link
      id="link3"
      disabled="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      hidden="{{ current_user.email == getIssue6.data.assigned_to[0] }} "
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
        pluginId="updIssue_assignToMe3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <AvatarGroup
      id="avatarGroup3"
      fallbacks=""
      images="{{ getWatchers3.data.avatarURL}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Button
      id="button_startWatching5"
      hidden="{{ formatDataAsArray(getWatchers3.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject3.data).filter(x => x.email == current_user.email)[0].userID).length > 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view"
      marginType="normal"
      style={{
        ordered: [
          { label: "primary" },
          { background: "surfacePrimary" },
          { hoverBackground: "surfacePrimary" },
        ],
      }}
      tooltipText="{{ i18n.t('Start Watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insWatchers3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
