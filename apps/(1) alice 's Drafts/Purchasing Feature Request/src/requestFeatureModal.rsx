<Modal
  id="requestFeatureModal"
  buttonText="Submit Feedback"
  hidden="false"
  modalHeightType="auto"
>
  <Text
    id="title_request_feature"
    _defaultValue=""
    value="## Submit Feedback"
    verticalAlign="center"
  />
  <Select
    id="select_team"
    itemMode="static"
    label="Team"
    overlayMaxHeight={375}
    placeholder="Select a type"
    required={true}
    showClear={true}
    showSelectionIndicator={true}
    value=""
  >
    <Option id="a0284" label="OEM Partnerships 🤝" value="oem_partnerships" />
    <Option
      id="2ab11"
      label="Car_Lifecyle_Management 🚗"
      value="car_lifecyle_management"
    />
    <Option
      id="3e344"
      disabled={false}
      hidden={false}
      label="Fleet Steering 🧠"
      value="fleet_steering"
    />
  </Select>
  <TextInput
    id="input_title"
    _defaultValue=""
    label="Title"
    placeholder="Name the feature"
    required={true}
    showClear={true}
  />
  <Select
    id="select_priority"
    itemMode="static"
    label="Priority"
    overlayMaxHeight={375}
    placeholder="Select the priority"
    required={true}
    showClear={true}
    showSelectionIndicator={true}
    value=""
  >
    <Option id="a4053" label="High 🔺" value="2" />
    <Option id="2ab11" label="Medium 🔸" value="3" />
    <Option id="a0284" label="Low 🔹" value="4" />
  </Select>
  <Select
    id="select_type"
    itemMode="static"
    label="Type"
    overlayMaxHeight={375}
    placeholder="Select a type"
    required={true}
    showClear={true}
    showSelectionIndicator={true}
    value=""
  >
    <Option id="a0284" label="Bug 🐛" value="bug" />
    <Option id="2ab11" label="Improvement ⚡️" value="improvement" />
    <Option
      id="3e344"
      disabled={false}
      hidden={false}
      label="New Feature ✨"
      value="new feature"
    />
  </Select>
  <TextArea
    id="textarea_description"
    _defaultValue=""
    autoResize={true}
    label="Description"
    labelPosition="top"
    minLines="10"
    placeholder="Describe the feature/bug"
    required={true}
  />
  <Button
    id="cancelButton"
    style={{ ordered: [] }}
    styleVariant="outline"
    text="Cancel"
  >
    <Event
      id="fe6fd124"
      event="click"
      method="close"
      params={{ ordered: [] }}
      pluginId="requestFeatureModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="c01ceca0"
      event="click"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="input_title"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="f8b0c46c"
      event="click"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="textarea_description"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="24ef183e"
      event="click"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="select_priority"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="ed420b13"
      event="click"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="select_type"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="submitFeatureRequestButton"
    disabled="{{ select_team.selectedIndex == null || !input_title.value || select_priority.selectedIndex == null || select_type.selectedIndex == null || !textarea_description.value }}"
    style={{ ordered: [] }}
    text="Submit"
  >
    <Event
      id="423ae6ab"
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="handleRequestFeatureSubmit"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="b41038ef"
      event="click"
      method="close"
      params={{ ordered: [] }}
      pluginId="requestFeatureModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="0b770bc8"
      event="click"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "New feature requested!" },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="937d798b"
      event="click"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
