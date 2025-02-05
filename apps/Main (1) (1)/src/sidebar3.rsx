<SidebarFrame
  id="sidebarFrame3"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  width="large"
>
  <Body>
    <Navigation
      id="navigation7"
      itemMode="static"
      orientation="vertical"
      src={null}
      srcType={null}
    >
      <Option id="a6b46" icon="bold/interface-home-3" label="Home" />
      <Option
        id="4d0d2"
        icon="bold/interface-user-multiple"
        label="Customers"
      />
      <Option id="e2f4b" icon="bold/interface-setting-cog" label="Settings" />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar8"
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
