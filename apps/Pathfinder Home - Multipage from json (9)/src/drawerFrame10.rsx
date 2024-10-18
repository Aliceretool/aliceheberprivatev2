<DrawerFrame
  id="drawerFrame10"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  width="medium"
>
  <Header>
    <Text id="drawerTitle9" value="### Activity" verticalAlign="center" />
    <Button
      id="drawerCloseButton10"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="drawerFrame10"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="tabbedContainer51"
      _gap={0}
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPaddingType="normal"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
    >
      <Header>
        <Tabs
          id="tabs44"
          alignment="center"
          itemMode="static"
          marginType="normal"
          navigateContainer={true}
          targetContainerId="tabbedContainer51"
          value="{{ self.values[0] }}"
        >
          <Option id="56f40" value="Tab 1" />
          <Option id="8498a" value="Tab 2" />
          <Option id="08277" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="009a2" viewKey="Comments">
        <Timeline
          id="timelineNotes6"
          dateFormat="dd MMM yyyy"
          hidden=""
          isGrouped={true}
          items="{{ formatDataAsObject(getComments15.data).comment_display }}"
          renderAsHtml={true}
          sortedDesc={true}
          timestamps="{{ formatDataAsObject(getComments15.data).created_at }}"
        />
        <TextArea
          id="textArea_commentBox14"
          autoResize={true}
          hidden=""
          label="{{ i18n.t('Add Comment') }}"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          placeholder="{{ i18n.t('Write comment here ...') }}"
        />
        <Button
          id="button150"
          disabled={'{{ textArea_commentBox14.value == "" }}'}
          hidden=""
          marginType="normal"
          text="{{ i18n.t('Add Comment') }}"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="insComments11"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
      <View id="2e440" viewKey="All" />
      <View
        id="8f5d0"
        hidden="true"
        label="{{ i18n.t('Work Log (Time)') }}"
        viewKey="Work log"
      />
      <View
        id="5e970"
        disabled={false}
        hidden={false}
        iconPosition="left"
        label="{{ i18n.t('Activity (Users)') }}"
        viewKey="Activity"
      />
      <View
        id="f12a5"
        disabled={false}
        hidden={false}
        iconPosition="left"
        label="{{ i18n.t('Transitions (Status)') }}"
        viewKey="Transitions "
      />
    </Container>
  </Body>
</DrawerFrame>
