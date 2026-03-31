<Frame
  id="$header"
  enableFullBleed={null}
  isHiddenOnDesktop={false}
  isHiddenOnMobile={true}
  padding="8px 12px"
  sticky={true}
  styleContext={{}}
  type="header"
>
  <Container
    id="container108"
    _align="center"
    _gap="0px"
    _type="stack"
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    margin="0"
    overflowType="hidden"
    padding="0"
    showBody={true}
    showBorder={false}
  >
    <Header>
      <Text
        id="containerTitle124"
        value="#### Container title"
        verticalAlign="center"
      />
    </Header>
    <View id="00030" viewKey="View 1">
      <ButtonGroup2
        id="buttonGroup1"
        alignment="right"
        heightType="auto"
        overflowPosition={4}
      >
        <ButtonGroup2-Button
          id="34f4b"
          icon="bold/mail-chat-bubble-oval-alternate"
          iconPosition="replace"
          styleVariant="outline"
          text="Coach Chat"
          tooltip="Coach Chat"
        >
          <Event
            id="5abe8d89"
            event="click"
            method="openUrl"
            params={{
              map: { url: "https://platform.multiverse.io/manager/me?chat" },
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </ButtonGroup2-Button>
        <ButtonGroup2-Button
          id="9ff62"
          icon="bold/interface-user-question"
          iconPosition="replace"
          styleVariant="outline"
          text="Guru"
          tooltip="Guru"
        >
          <Event
            id="e1b48e90"
            event="click"
            method="show"
            params={{}}
            pluginId="guruSplitFrame"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ButtonGroup2-Button>
        <ButtonGroup2-Button
          id="1cc44"
          icon={
            '{{ theme.mode === \'Dark\' ? "/icon:bold/interface-lighting-light-bulb" : "/icon:bold/interface-lighting-light-bulb-alternate" }}'
          }
          iconPosition="replace"
          styleVariant="outline"
          text="Dark Mode Toggle"
          tooltip="Dark Mode"
        >
          <Event
            id="4df5515b"
            event="click"
            method="setMode"
            params={{
              map: {
                modeName: "{{ theme.mode === 'Light' ? 'Dark' : 'Light' }}",
              },
            }}
            pluginId=""
            type="theme"
            waitMs="0"
            waitType="debounce"
          />
        </ButtonGroup2-Button>
        <ButtonGroup2-Button id="361f8" styleVariant="outline" text="Log Out">
          <Event
            id="3e17c202"
            event="click"
            method="openUrl"
            params={{
              options: { map: { newTab: false } },
              url: '{{ url.href.match(/^https?:\\/\\/[^\\/]+/)[0] + "/logout" }}',
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </ButtonGroup2-Button>
      </ButtonGroup2>
      <Image
        id="image9"
        fit="contain"
        horizontalAlign="center"
        margin="4px 4px 4px 14px"
        retoolStorageFileId="accdcfd5-05cc-4203-ab9f-dde75100f557"
        src="https://lsvp.com/wp-content/smush-webp/2023/03/Multiverse-1024x306.png.webp"
        style={{ map: { borderRadius: "tokens/e298ce1b" } }}
      />
      <Spacer id="spacer8" />
    </View>
  </Container>
  <Container
    id="impersonationWarningContainer"
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    hidden="{{ !impersonate_user.value }}"
    padding="12px"
    showBody={true}
    showBorder={false}
    style={{ map: { background: "warning" } }}
  >
    <View id="00030" viewKey="View 1">
      <Text
        id="text474"
        horizontalAlign="center"
        style={{
          fontSize: "h6Font",
          fontWeight: "h6Font",
          fontFamily: "h6Font",
        }}
        value="Impersonating User: {{ impersonate_user.value.coach.preferred_name ??impersonate_user.value.coach.first_name }} {{  impersonate_user.value.coach.last_name }}"
        verticalAlign="center"
      />
      <Button
        id="button22"
        heightType="auto"
        iconBefore="bold/interface-user-delete"
        style={{ map: { background: "surfacePrimary" } }}
        text="Exit"
      >
        <Event
          id="9c5d34e7"
          event="click"
          method="setValue"
          params={{ map: { value: "{{ null }}" } }}
          pluginId="impersonate_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="ec62705d"
          event="click"
          method={null}
          params={{}}
          pluginId=""
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </View>
  </Container>
</Frame>
