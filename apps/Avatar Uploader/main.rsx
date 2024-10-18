<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="userID"
    defaultValue="b625e28f-597c-4626-a11e-ee676587d2b8"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      refresh="getUser"
    >
      <Select
        id="select1"
        captionByIndex="{{ item.email }}"
        data="{{ getUser.data }}"
        disabled=""
        emptyMessage="No options"
        label="{{ i18n.t('User')}}"
        labelPosition="top"
        labels="{{ `${item.firstName} ${item.lastName}` }}"
        marginType="normal"
        overlayMaxHeight={375}
        placeholder="Select an option"
        readOnly="true"
        showSelectionIndicator={true}
        value="{{ getUser.data.userID[0] }}"
        values="{{ item.userID }}"
      />
      <FileInput
        id="fileInput1"
        _isUpgraded={true}
        accept="['jpg','jpeg','png']"
        iconBefore="bold/programming-browser-search"
        label=""
        labelPosition="top"
        marginType="normal"
        placeholder="{{ i18n.t('No File Selected')}}"
        textBefore="{{ i18n.t('Browse')}}"
      />
      <Button
        id="button1"
        disabled="{{ fileInput1.value.length == 0 }}"
        hidden="true"
        marginType="normal"
        text="Add Avatar with js"
      >
        <Event
          event="click"
          method="trigger"
          params={{
            ordered: [
              {
                options: {
                  object: {
                    onSuccess: null,
                    onFailure: null,
                    additionalScope: null,
                  },
                },
              },
            ],
          }}
          pluginId="avatarProcessing"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="button2"
        disabled="{{ fileInput1.value.length == 0 }}"
        marginType="normal"
        text="{{ i18n.t('Add / Change Avatar')}}"
      >
        <Event
          event="click"
          method="trigger"
          params={{
            ordered: [
              {
                options: {
                  object: {
                    onSuccess: null,
                    onFailure: null,
                    additionalScope: null,
                  },
                },
              },
            ],
          }}
          pluginId="uploadS3Simple"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </ModuleContainerWidget>
  </Frame>
</App>
