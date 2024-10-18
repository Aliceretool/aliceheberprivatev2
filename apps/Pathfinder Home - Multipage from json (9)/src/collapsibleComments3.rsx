<Container
  id="collapsibleComments3"
  _gap={0}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  style={{ ordered: [] }}
>
  <Header>
    <Text
      id="collapsibleTitle24"
      value="#### Comments ({{ getComments7.data.length }})"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle7"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleComments3.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleComments3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="b6a94" viewKey="View 1">
    <Timeline
      id="timeline5"
      dateFormat="dd MMM yyyy"
      hidden=""
      isGrouped={true}
      items="{{ formatDataAsObject(getComments7.data).comment_display }}"
      maintainSpaceWhenHidden={true}
      renderAsHtml={true}
      sortedDesc={true}
      timestamps="{{ formatDataAsObject(getComments7.data).created_at }}"
    />
    <TextArea
      id="textArea_commentBox6"
      hidden=""
      label="{{ i18n.t('Add Comments') }}"
      labelPosition="top"
      marginType="normal"
      minLines="6"
      placeholder="{{ i18n.t('Write comments here') }} ..."
      showInEditor={true}
      spellCheck={true}
    />
    <Button
      id="button100"
      disabled={'{{ textArea_commentBox6.value == "" }}'}
      hidden=""
      marginType="normal"
      text="{{ i18n.t('Add Comments') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComment4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getComments7"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
