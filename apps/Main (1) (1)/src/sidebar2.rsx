<SidebarFrame
  id="sidebarFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  width="large"
>
  <Body>
    <Navigation
      id="navigation5"
      itemMode="static"
      orientation="vertical"
      src={null}
      srcType={null}
    >
      <Option id="64f46" icon="bold/interface-home-3" label="Home" />
      <Option
        id="115b3"
        icon="bold/interface-user-multiple"
        label="Customers"
      />
      <Option id="9c63a" icon="bold/interface-setting-cog" label="Settings" />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar7"
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
