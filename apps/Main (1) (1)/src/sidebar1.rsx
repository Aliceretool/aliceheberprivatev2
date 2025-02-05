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
      id="navigation3"
      itemMode="static"
      orientation="vertical"
      src={null}
      srcType={null}
    >
      <Option id="a929b" icon="bold/interface-home-3" label="Home" />
      <Option
        id="b92c4"
        icon="bold/interface-user-multiple"
        label="Customers"
      />
      <Option id="7f5cc" icon="bold/interface-setting-cog" label="Settings" />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar6"
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
