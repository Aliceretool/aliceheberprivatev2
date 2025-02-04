<Container
  id="stack23"
  _flexWrap={true}
  _gap="0px"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <View id="4726f" viewKey="View 1">
    <Select
      id="Task_Type_Select"
      emptyMessage="No options"
      itemMode="static"
      label="Task type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
    >
      <Option id="0a29b" value="Option 1" />
      <Option id="7b34e" value="Option 2" />
      <Option id="c6ed0" value="Option 3" />
    </Select>
    <Multiselect
      id="Task_Status_MultiSelect"
      data="{{ [...GetTaskStatuses.data] }}"
      emptyMessage="No options"
      label="Task status"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showClear={true}
      showSelectionIndicator={true}
      value={
        "{{GetTaskStatuses.data.filter(el => el.name === \"Opened\" || el.name === 'Not Completed_Missing OPS Info').map(el => el.id) }}"
      }
      values="{{ item.id }}"
      wrapTags={true}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTasksListByCase"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Select
      id="Task_Country_Select"
      emptyMessage="No options"
      itemMode="static"
      label="Country"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
    >
      <Option id="d88ba" value="Option 1" />
      <Option id="b6457" value="Option 2" />
      <Option id="50b2c" value="Option 3" />
    </Select>
    <Select
      id="Task_Category_Select"
      data="{{ GetTaskCategories.data }}"
      emptyMessage="No options"
      label="Task category"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.id }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTasksListByCase"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="Task_Priority_Select"
      data="{{ GetTaskPriorities.data }}"
      emptyMessage="No options"
      label="Task priority"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.id }}"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTasksListByCase"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
  </View>
</Container>
