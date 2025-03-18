<SidebarFrame
  id="sidebarFrame1"
  footerPaddingType="normal"
  headerPaddingType="normal"
  isHiddenOnMobile={true}
  isInEditMode={false}
  padding="8px 12px"
  paddingType="normal"
  showFooter={true}
  showHeader={true}
  width="240px"
>
  <Header>
    <Image
      id="sungagenNavLogo"
      fit="contain"
      heightType="fixed"
      marginType="normal"
      retoolStorageShowLegacyFiles={true}
      src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
      srcHeight={121}
      srcType="storageBlobId"
      srcWidth={606}
      storageBlobId="8bd371d1-a974-44bf-9fcf-c0b7e15de623"
    />
  </Header>
  <Body>
    <Navigation
      id="navigation"
      captionByIndex={
        '{{ \n  ["Home", "Attachments"].includes(item) ? "" : GetApplicationSectionStatuses.data?.[0]?.[item] ?? "Outstanding" \n}}'
      }
      data="{{ navigationMenuItems.value }}"
      hiddenByIndex="{{item === 'Reviewing + Decisioning'}}"
      highlightByIndex="{{opsViewTabbedContainer.currentViewKey === item}}"
      iconByIndex={
        '{{self.captionByIndex[i] === "Complete" ?  "/icon:bold/interface-validation-check"  :  "/icon:" }}'
      }
      iconPositionByIndex="right"
      labels="{{item}}"
      marginType="normal"
      orientation="vertical"
      tooltipByIndex=""
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="handleNavigation"
        type="datasource"
        waitMs="150"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{ item }}" }] }}
        pluginId="nextTabSelection"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
  </Body>
  <Footer>
    <Avatar
      id="avatar1"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      marginType="normal"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Button
      id="backToInstallerAppList"
      hidden="true"
      marginType="normal"
      text="Back To Installer App List"
    >
      <Event
        event="click"
        method="openApp"
        params={{ ordered: [{ uuid: "d06d2032-2880-11ed-87cb-ffcb90f517f0" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</SidebarFrame>
