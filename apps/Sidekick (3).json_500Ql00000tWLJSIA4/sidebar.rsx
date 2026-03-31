<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden=""
  padding="8px 12px"
  showFooter="True"
  width="medium"
>
  <Body>
    <Navigation
      id="navigation1"
      appTargetByIndex=""
      captionByIndex=""
      data="{{ retoolContext.pages }}"
      disabledByIndex=""
      hiddenByIndex=""
      highlightByIndex=""
      iconByIndex=""
      iconPositionByIndex=""
      itemMode="static"
      itemTypeByIndex=""
      keyByIndex=""
      labels="{{ item.title }}"
      orientation="vertical"
      parentKeyByIndex=""
      persistUrlParamsByIndex=""
      screenTargetByIndex=""
      screenTargetIdByIndex=""
      src={null}
      srcType={null}
      tooltipByIndex=""
    >
      <Option
        id="00030"
        icon="bold/interface-home-3"
        iconPosition="left"
        itemType="page"
        label="My Learners"
        persistUrlParams={true}
        screenTargetId="my_learners2"
      />
      <Option
        id="00031"
        icon="bold/interface-user-multiple"
        iconPosition="left"
        itemType="page"
        key="c26cc"
        label="My Day"
        persistUrlParams={true}
        screenTargetId="coach_digest"
      />
      <Option
        id="ec45e"
        disabled={false}
        hidden={false}
        highlight={false}
        icon="bold/interface-setting-gauge-dashboard-1"
        iconPosition="left"
        itemType="page"
        label="Performance Metrics"
        persistUrlParams={true}
        screenTargetId="{{ is_user_dm.value === 'dm' ? 'Delivery_Manager' : 'Cohort_Coach' }}"
      />
      <Option
        id="84605"
        disabled={false}
        hidden="{{ !is_api_admin.value }}"
        highlight={false}
        icon="bold/interface-setting-cog"
        iconPosition="left"
        itemType="page"
        label="Coach PM"
        persistUrlParams={true}
        screenTargetId="Cohort_Coach"
      />
      <Option
        id="77724"
        disabled={false}
        hidden="{{ !is_api_admin.value }}"
        highlight={false}
        icon="bold/interface-setting-cog"
        iconPosition="left"
        itemType="page"
        label="Admin"
        persistUrlParams={true}
        screenTargetId="coach_admin"
      />
      <Event
        id="1a4f8b99"
        event="click"
        method="openPage"
        params={{ map: { pageName: "{{ item.id }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Button
      id="button32"
      iconBefore="bold/interface-help-question-message"
      text="Get in Touch"
    >
      <Event
        id="199eaf14"
        event="click"
        method="openUrl"
        params={{ map: { url: "https://support.multiverse.io/" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Module
      id="globalFeedback1"
      hidden="true"
      margin="0"
      name="GlobalFeedback"
      overflowType="hidden"
      pageUuid="daeb9426-f81a-4555-9dea-6a2a26f94ade"
    />
  </Footer>
</SidebarFrame>
