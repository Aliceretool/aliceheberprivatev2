<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  width="large"
>
  <Body>
    <Navigation
      id="Navigation"
      itemMode="static"
      orientation="vertical"
      retoolFileObject={{ ordered: [] }}
    >
      <Option
        id="f35db"
        highlight="true"
        icon="bold/interface-home-3"
        iconPosition="left"
        itemType="custom"
        label="Home"
      />
      <Option
        id="d753a"
        icon="bold/money-graph-arrow-increase"
        iconPosition="left"
        itemType="app"
        label="Dashboards"
      />
      <Option
        id="3f794"
        icon="bold/interface-setting-cog"
        iconPosition="left"
        itemType="app"
        label="Configuration"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="Avatar"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      margin="4px 4px"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
