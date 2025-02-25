<Container
  id="Header_Container"
  _align="center"
  _flexWrap={true}
  _gap="0px"
  _justify="space-between"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  margin="0"
  padding="12px 32px 12px 12px"
  showBody={true}
  style={{
    ordered: [{ borderRadius: "0px" }, { background: "surfacePrimaryBorder" }],
  }}
  styleContext={{
    ordered: [
      { surfacePrimary: "surfacePrimaryBorder" },
      { primary: "surfacePrimaryBorder" },
    ],
  }}
>
  <View id="49d11" viewKey="View 1">
    <Button
      id="MockIncomingCall_Button"
      heightType="auto"
      iconBefore="bold/phone-telephone-ringing"
      margin="0"
      style={{ ordered: [{ background: "warning" }] }}
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="mockIncomingCall"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Avatar
      id="User_Avatar"
      fallback="{{ current_user.fullName }}"
      imageSize={40}
      label=""
      margin="0"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Navigation
      id="Navigation"
      captionByIndex=""
      data="{{ navigationItems.value }}"
      highlightByIndex="{{ item.title === currentTab.value }}"
      labels="{{ item.title }}"
      overflowMode="autoMenu"
      parentKeyByIndex="{{ item.parentLabel }}"
      retoolFileObject={{ ordered: [] }}
    >
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "{{ item.page }}" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
    <Image
      id="Logo"
      fit="contain"
      heightType="fill"
      horizontalAlign="center"
      src="https://s3-alpha-sig.figma.com/img/8e53/fc8e/7418d87f367a5bcc5181d354b88d60f7?Expires=1738540800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Hr4wYSl5EATGR72BhoTtLj1vxaRNJQvdvkAkekjgktgfiCNru06IttnbcyC2upBGzDmB-fo-q2QZ-1uTQtt02DoZXqO2-GAvxfTAkYkCc7TubaNeGGh1e1UOhjH8-t8xFG0Hvr-j136qNVzhp~yMZ3QvtqdjEDJucxECHRBwm7VVBhvYx~DjyzPbNgPVumLtG3~R~yicdUMkwmMTNt~QX7r1G-Oj5A9S~VAyBqqXzga0YqXtHgY0w2PiM4Xox7fxtka9Wck7XckTopUhkSkwm4vPlgU2zD4cjDqyJG-3E37g2LRqmHRslvwtFZMF3rfIE0ZtJL04XUUhTRa~BoEUEA__"
    />
    <DynamicWidget_Genesys_GenesysPlugin
      id="GenesysPlugin"
      accessToken="{{ localStorage.values.genesysAuth.accessToken }}"
      collectionUuid="ba3d689a-023e-411e-b374-dc6c637024f6"
      events={[
        {
          ordered: [
            { event: "Token expired" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "handleTokenExpired" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { method: "trigger" },
            { enabled: "{{ !_.isEmpty(GenesysPlugin.lastCallEvent) }}" },
            { params: { ordered: [] } },
            { targetId: null },
            { pluginId: "handleCallEvent" },
            { waitType: "debounce" },
            { event: "Call event" },
            { type: "datasource" },
            { waitMs: "0" },
          ],
        },
      ]}
      heightType="fixed"
      lastCallEvent={null}
    />
    <Button
      id="ForceEligibility_Button"
      heightType="auto"
      iconBefore="bold/interface-add-circle-alternate"
      style={{
        ordered: [{ border: "tokens/6d3a94b8" }, { label: "tokens/6d3a94b8" }],
      }}
      styleVariant="outline"
      text="Force eligibility"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="ForceEligibility_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
