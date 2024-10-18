<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  style={{ ordered: [] }}
  width="medium"
>
  <Body>
    <Navigation
      id="navigation3"
      horizontalAlignment="justify"
      itemMode="static"
      orientation="vertical"
      overflowMode="autoMenu"
      retoolFileObject={{ ordered: [] }}
      style={{ ordered: [] }}
    >
      <Option
        id="cb4bd"
        highlight="{{ url.href.includes('Pathfinder_home') }}"
        icon="line/interface-dashboard-layout-square"
        iconPosition="left"
        itemType="page"
        key="23905"
        label="Dashboard"
        screenTargetId="Pathfinder_home"
      />
      <Option
        id="6b3be"
        highlight="{{ url.href.includes('CRF') || url.href.includes('CAPA') || url.href.includes('DEVIATION') || url.href.includes('QPRegister') }}"
        icon="line/interface-validation-check-circle"
        iconPosition="left"
        itemType="custom"
        key="848c3"
        label="Quality Assurance"
      />
      <Option
        id="94ebd"
        disabled={false}
        hidden={false}
        highlight="{{ url.href.includes('CAPA') }}"
        iconPosition="left"
        itemType="page"
        label="CAPA"
        parentKey="848c3"
        screenTargetId="CAPA_Home"
      />
      <Option
        id="cfc58"
        disabled={false}
        hidden={false}
        highlight="{{ url.href.includes('DEVIATION') }}"
        iconPosition="left"
        itemType="page"
        label="Deviations"
        parentKey="848c3"
        screenTargetId="DEVIATION_Home"
      />
      <Option
        id="b9ca6"
        disabled={false}
        hidden={false}
        highlight="{{ url.href.includes('CRF') }}"
        iconPosition="left"
        itemType="page"
        label="Change Control"
        parentKey="848c3"
        screenTargetId="CRF_Home"
      />
      <Option
        id="90330"
        disabled={false}
        hidden={false}
        highlight="{{ url.href.includes('QPRegister') }}"
        iconPosition="left"
        itemType="page"
        label="QP Register"
        parentKey="848c3"
        screenTargetId="QPRegister_Home"
      />
      <Option
        id="b7942"
        disabled={false}
        hidden={false}
        icon="line/interface-favorite-award"
        iconPosition="left"
        itemType="app"
        key="cfd38"
        label="Quality Control"
      />
      <Option
        id="4f8b3"
        disabled={false}
        hidden={false}
        highlight="{{ url.href.includes('AINV') }}"
        iconPosition="left"
        itemType="page"
        label="Analysis & Investigations"
        parentKey="cfd38"
        screenTargetId="AINV_Home"
      />
      <Option
        id="74c2d"
        disabled={false}
        hidden={false}
        highlight="{{ url.href.includes('RSN') }} "
        iconPosition="left"
        itemType="page"
        label="Reagent Preperations"
        parentKey="cfd38"
        screenTargetId="RSN_Home"
      />
      <Option
        id="b4e6b"
        disabled={false}
        hidden={false}
        highlight="{{ url.href.includes('SPL') }} "
        iconPosition="left"
        itemType="page"
        label="Sample Registration"
        parentKey="cfd38"
        screenTargetId="SPL_Home"
      />
      <Option
        id="7dbea"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        label="Sample Retention & Archive"
        parentKey="cfd38"
      />
      <Option
        id="a69d2"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        label="Stability Studies"
        parentKey="cfd38"
      />
      <Option
        id="fec09"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="app"
        label="Out of Scope"
        parentKey="cfd38"
      />
      <Option
        id="2fbfe"
        disabled={false}
        hidden={false}
        icon="line/shopping-business-idea"
        iconPosition="left"
        itemType="app"
        label="R & D"
      />
      <Option
        id="a2adb"
        disabled={false}
        hidden={false}
        icon="line/interface-user-multiple"
        iconPosition="left"
        itemType="app"
        key="2e7f1"
        label="CRM"
      />
      <Option
        id="930f9"
        appTarget="f6a1207e-f74f-11ee-b875-bbeb13de25cc"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="page"
        label="CRM"
        parentKey="2e7f1"
        screenTargetId="CRM"
      />
      <Option
        id="73e73"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="page"
        label="Enquiries"
        parentKey="2e7f1"
        screenTargetId="Enquiries"
      />
      <Option
        id="2d0a7"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="page"
        label="Products & Services"
        parentKey="2e7f1"
        screenTargetId="Products"
      />
      <Option
        id="bca54"
        disabled={false}
        hidden={false}
        iconPosition="left"
        itemType="page"
        label="Time Tracking Codes"
        parentKey="2e7f1"
        screenTargetId="TTCodes"
      />
      <Option
        id="d3ce3"
        disabled={false}
        hidden={false}
        icon="line/money-graph-pie-chart"
        iconPosition="left"
        itemType="app"
        label="Reports & Statistics"
      />
      <Option
        id="a9d4b"
        appTarget="5b194106-9d43-11ee-8614-4f7b582eadb0"
        disabled={false}
        hidden="{{getUserData.data.sysAdmin == 0}}"
        highlight="{{ url.href.includes('System_Configuration') }}"
        icon="line/interface-setting-cog"
        iconPosition="left"
        itemType="page"
        label="System Configuration"
        screenTargetId="System_Configuration"
      />
      <Option
        id="6074c"
        disabled={false}
        hidden={false}
        icon="line/interface-time-alarm"
        iconPosition="left"
        itemType="custom"
        label="Time Tracker"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="40de7"
        disabled={false}
        hidden={false}
        highlight={false}
        icon="line/shopping-store-factory-building"
        iconPosition="left"
        itemType="custom"
        label="On Site Today"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalFrame10"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="1aa55"
        disabled={false}
        hidden={false}
        highlight={false}
        icon="line/shopping-jewelry-diamond-1"
        iconPosition="left"
        itemType="custom"
        label="AI Chat"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalAIChat"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </Navigation>
  </Body>
  <Footer>
    <Switch
      id="switch1"
      hideLabel={false}
      label="{{ i18n.t('Dark Mode') }}"
      style={{ ordered: [] }}
      value="{{ getUserData.data.darkmode[0] }}"
    >
      <Event
        event="true"
        method="setValue"
        params={{ ordered: [{ value: "1" }] }}
        pluginId="darkMode"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="false"
        method="setValue"
        params={{ ordered: [{ value: "{{ darkMode.value ? 0: 1}}" }] }}
        pluginId="darkMode"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="setUserDarkMode"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <IconText id="iconText2" icon="line/interface-setting-cog" text="Settings">
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modal_myProfile"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </IconText>
    <IconText
      id="iconText1"
      icon={'{{  "/icon:line/interface-help-question-circle"  }} '}
      text="{{ i18n.t('Help') }}"
    />
    <IconText id="iconText3" icon="line/interface-login" text="Logout" />
    <Divider id="divider1" />
    <Avatar
      id="avatar6"
      fallback="{{ `${getLoggedInUser.data.firstName[0]} ${getLoggedInUser.data.lastName[0]}` }}"
      imageSize={32}
      label="{{ getLoggedInUser.data.firstName }} 
 {{ getLoggedInUser.data.lastName }} 
"
      labelCaption="{{ current_user.email }}"
      src="{{ getLoggedInUser.data.avatarURL[0]}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
