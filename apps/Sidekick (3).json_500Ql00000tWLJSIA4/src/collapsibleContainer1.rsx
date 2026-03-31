<Container
  id="collapsibleContainer1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="collapsibleTitle10"
      value="###### Save Current View"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle5"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer1.showBody }}"
    >
      <Event
        id="99f51aef"
        event="change"
        method="setShowBody"
        params={{ map: { showBody: "{{ self.value }}" } }}
        pluginId="collapsibleContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="00030" viewKey="View 1">
    <SegmentedControl
      id="viewControllerTab"
      itemMode="static"
      label="View Slot"
      labelCaption="Select view slot to update"
      labelPosition="top"
      paddingType="spacious"
      value="{{ self.values[0] }}"
    >
      <Option
        id="00030"
        label="{{ formatDataAsArray(getUserViews.data).find(row => row.view_slot == 1)?.view_name || 'View 1' }}"
        value="View 1"
      />
      <Option
        id="00031"
        label="{{ formatDataAsArray(getUserViews.data).find(row => row.view_slot == 2)?.view_name || 'View 2' }}"
        value="View 2"
      />
    </SegmentedControl>
    <TextInput
      id="view1Name"
      label="View Name"
      labelPosition="top"
      placeholder="Name or Rename Your View"
      value="{{ viewControllerTab.selectedItem.label
}}"
    />
    <Button
      id="button24"
      disabled="{{ viewController.value == 0 }}"
      text="Save View"
      tooltipText="Switch to non-default view from the view selector to save"
    >
      <Event
        id="722f0360"
        event="click"
        method="trigger"
        params={{}}
        pluginId="saveUserView"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
