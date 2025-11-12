<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  type="header"
>
  <Image
    id="Logo"
    fit="contain"
    heightType="fixed"
    src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
  />
  <DropdownButton
    id="AccountDropdown"
    _colorByIndex={["", "", ""]}
    _fallbackTextByIndex={["", "", ""]}
    _imageByIndex={["", "", ""]}
    _values={["", "Action 3", ""]}
    horizontalAlign="right"
    icon="bold/interface-arrows-button-down"
    iconPosition="right"
    itemMode="static"
    overlayMaxHeight={375}
    style={{ ordered: [] }}
    styleVariant="outline"
    text="{{current_user.firstName}} {{current_user.lastName}}"
  >
    <Option
      id="16e70"
      caption="{{ current_user.email }}"
      disabled="true"
      icon="bold/interface-user-circle"
      label="{{current_user.firstName}} {{current_user.lastName}}"
    />
    <Option
      id="ea3d6"
      disabled={false}
      hidden={false}
      icon="bold/interface-user-add"
      label="Invite users"
    />
    <Option
      id="516a6"
      icon="bold/interface-logout-circle-alternate"
      label="Log out"
    />
  </DropdownButton>
</Frame>
