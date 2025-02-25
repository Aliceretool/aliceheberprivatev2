<Container
  id="stack15"
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
    <Multiselect
      id="TaskType_MultiSelect"
      data="{{ GetTaskTypes.data }}"
      emptyMessage="No options"
      label="Type"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.id }}"
      wrapTags={true}
    />
    <Select
      id="TaskOwner_Select"
      emptyMessage="No options"
      itemMode="static"
      label="Owner"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="dc12f" value="Option 1" />
      <Option id="2b0c8" value="Option 2" />
      <Option id="dc44e" value="Option 3" />
    </Select>
    <Select
      id="TaskTeam_Select"
      emptyMessage="No options"
      label="Team"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    />
    <Multiselect
      id="TaskCountry_MultiSelect"
      emptyMessage="No options"
      itemMode="static"
      label="Country"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      wrapTags={true}
    >
      <Option id="fc9ab" value="Option 1" />
      <Option id="81c4d" value="Option 2" />
      <Option id="4ef52" value="Option 3" />
    </Multiselect>
    <Multiselect
      id="TaskCategory_MultiSelect"
      data="{{ GetTaskCategories.data }}"
      emptyMessage="No options"
      label="Category"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.id }}"
      wrapTags={true}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTaskListByFilters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="TaskPriority_MultiSelect"
      data="{{ GetTaskPriorities.data }}"
      emptyMessage="No options"
      label="Priority"
      labelPosition="top"
      labels="{{ item.name }}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.id }}"
      wrapTags={true}
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetTaskListByFilters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="TaskStatus_MultiSelect"
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
        pluginId="GetTaskListByFilters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
  </View>
</Container>
