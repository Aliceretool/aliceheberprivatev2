<Container
  id="tabbedContainer5"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  disabledByIndex={[]}
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  heightType="fixed"
  hiddenByIndex={[]}
  iconByIndex={[]}
  iconPositionByIndex={[]}
  labels={[]}
  maintainSpaceWhenHidden={true}
  margin="0"
  marginType="normal"
  overflowType="hidden"
  padding="0"
  paddingType="normal"
  showBody={true}
  showBorder={false}
  showHeader={true}
  style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
  tooltipByIndex={[]}
  viewKeys={[]}
  views={[]}
>
  <Header>
    <Tabs
      id="tabs5"
      alignment="center"
      data={[]}
      disabledByIndex={[]}
      hiddenByIndex={[]}
      iconByIndex={[]}
      iconPositionByIndex={[]}
      itemMode="static"
      labels={[]}
      marginType="normal"
      navigateContainer={true}
      targetContainerId="tabbedContainer5"
      tooltipByIndex={[]}
      value="{{ self.values[0] }}"
      values={[]}
    >
      <Option id="56f40" value="Tab 1" />
      <Option id="8498a" value="Tab 2" />
      <Option id="08277" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="009a2" label="{{ i18n.t('Comments') }}" viewKey="Comments">
    <Text
      id="text55"
      hidden="{{  getComments.data.length != 0}}"
      value="**No comments yes**"
      verticalAlign="center"
    />
    <Timeline
      id="timelineNotes2"
      dateFormat="dd MMM yyyy"
      hidden="{{ getComments.data.length == 0 }}"
      isGrouped={true}
      items="{{ formatDataAsObject(getComments.data).comment_display }}"
      maintainSpaceWhenHidden={true}
      renderAsHtml={true}
      sortedDesc={true}
      timestamps="{{ formatDataAsObject(getComments.data).created_at }}"
    />
    <TextArea
      id="textArea_commentBox2"
      autoResize={true}
      hidden=""
      label="{{ i18n.t('Add Comment')}}"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      placeholder="Write comment here ..."
    />
    <Button
      id="button54"
      disabled={'{{ textArea_commentBox2.value == "" }}'}
      hidden=""
      marginType="normal"
      text="{{ i18n.t('Add Comment')}}"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="insComments"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getComments"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="2e440"
    hidden="tru"
    label="{{ i18n.t('Timeline')}}
"
    viewKey="All"
  >
    <Timeline
      id="timeline2"
      dateFormat="d mmm YY"
      isGrouped={true}
      items="{{ formatDataAsObject(format_audit_for_timeline.value).timelineHeader }}"
      renderAsHtml={true}
      sortedDesc={true}
      timestamps="{{ formatDataAsObject(format_audit_for_timeline.value).ts }}"
    />
  </View>
  <View
    id="5e970"
    disabled={false}
    hidden="true"
    iconPosition="left"
    label="{{i18n.t('Activity')}}"
    viewKey="Activity"
  />
  <View
    id="f12a5"
    disabled={false}
    hidden="false"
    iconPosition="left"
    label="{{i18n.t('Transitions')}}"
    viewKey="Transitions "
  >
    <Text
      id="text57"
      hidden="{{ formatTransitions.value.length > 0 }}"
      value="No transitions has been made"
      verticalAlign="center"
    />
    <ListViewBeta
      id="listView5"
      _primaryKeys="{{ item.id }}"
      data="{{ formatTransitions.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Text
        id="text56"
        hidden="{{ formatTransitions.value[0].statusValue }}"
        value="**No status changes has been made**"
        verticalAlign="center"
      />
      <Include src="./container3.rsx" />
    </ListViewBeta>
  </View>
  <View
    id="e29b7"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="{{ i18n.t('History') }}"
    viewKey="Audit Trail"
  >
    <Text
      id="text48"
      horizontalAlign="center"
      value="**{{ getIssue.data.issue_index[0]?getIssue.data.issue_index[0]:'Non-selected issue'}} - Displaying {{ format_audit_for_timeline.value.length }} history records**"
      verticalAlign="center"
    />
    <PageInput
      id="pageInput1"
      horizontalAlign="center"
      max="{{Math.ceil(getPathfinderAudit_issue2.data.length/10)}}"
      textAfter="of {{ self.max }}"
      textBefore="Page"
      value={1}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getPathfinderAudit_issue"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </PageInput>
    <ListViewBeta
      id="listView3"
      _primaryKeys=""
      data="{{ format_audit_for_timeline.value.slice((pageInput1.value-1)*10,(pageInput1.value)*10) }}"
      enableInstanceValues={true}
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./container2.rsx" />
    </ListViewBeta>
    <Button id="button55" submitTargetId="" text="Download raw audit">
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "utils.downloadFile(getPathfinderAudit_issue_allData.data,getIssue.data.issue_index[0],'txt')",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
