<Container
  id="collapsibleContainer46"
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
      id="collapsibleTitle50"
      marginType="normal"
      value="#### {{ i18n.t('People & Dates')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="b5896" viewKey="View 1">
    <Select
      id="select73"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject9.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Assignee') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ ['Closed'].includes(getIssue17.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.email == getIssue17.data.assigned_to[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <Date
      id="date_due_detail9"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Due Date')}}"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed'].includes(getIssue17.data.status_value[0]) }}"
      value="{{ getIssue17.data.due_date[0] }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_dueDate9"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="select74"
      captionByIndex="{{ item.email }}"
      data="{{ getUser_FilteredProject9.data }}"
      emptyMessage="No options"
      imageByIndex="{{ item.avatarURL }}"
      label="{{ i18n.t('Reporter') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ ['Closed'].includes(getIssue17.data.status_value[0]) }}"
      showSelectionIndicator={true}
      value="{{ formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.email == getIssue17.data.created_by[0])[0].userID }}"
      values="{{ item.userID }}"
    />
    <DateTime
      id="dateTime_createdAt8"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Created')}}"
      labelPosition="top"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue17.data.created_at[0] }}"
      valueTimeZone="00:00"
    />
    <DateTime
      id="dateTime_updatedAt9"
      dateFormat="d MMM yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      firstDayOfWeek={1}
      iconBefore="bold/interface-calendar"
      label="{{ i18n.t('Last Update')}}"
      labelPosition="top"
      manageTimeZone={true}
      marginType="normal"
      minuteStep={15}
      readOnly="true"
      value="{{ getIssue17.data.updated_at[0] }}"
      valueTimeZone="00:00"
    />
    <Text
      id="text114"
      heightType="fixed"
      marginType="normal"
      value="**{{ i18n.t('Watchers')}}**"
      verticalAlign="center"
    />
    <Button
      id="button_startWatching17"
      hidden="{{ formatDataAsArray(getWatchers9.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.email == current_user.email)[0].userID).length > 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view"
      marginType="normal"
      style={{
        ordered: [
          { background: "surfacePrimary" },
          { hoverBackground: "surfacePrimary" },
          { label: "primary" },
        ],
      }}
      tooltipText="{{ i18n.t('Start Watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insWatchers9"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Link
      id="link9"
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue17.data.status_value[0]) }}"
      hidden="{{ current_user.email == getIssue17.data.assigned_to[0] }} "
      iconBefore="line/interface-user-add"
      maintainSpaceWhenHidden={true}
      marginType="normal"
      showUnderline="hover"
      textSize="default"
      tooltipText="{{ i18n.t('Assign to Me')}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assignToMe9"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Button
      id="button_stopWatching17"
      hidden="{{ formatDataAsArray(getWatchers9.data).filter(x =>  x.userID == formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.email == current_user.email)[0].userID).length == 0 }} "
      horizontalAlign="center"
      iconBefore="line/interface-edit-view-off"
      marginType="normal"
      style={{
        ordered: [
          { background: "surfacePrimary" },
          { activeBackground: "surfacePrimary" },
          { label: "primary" },
        ],
      }}
      tooltipText="{{ i18n.t('Stop Watching') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="delWatchers9"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <AvatarGroup
      id="avatarGroup9"
      fallbacks=""
      images="{{ getWatchers9.data.avatarURL}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </View>
</Container>
