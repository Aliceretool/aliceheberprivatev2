<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="case_id" value="d842b14d-b677-4398-9ce8-e0f16f7ffc1f" />
  <GlobalWidgetProp
    id="mode"
    description="mode of creating or editing"
    value="create"
  />
  <GlobalWidgetProp id="task_id" value="74ef964f-5755-43a6-8f5e-539eb829f513" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      case_id="d842b14d-b677-4398-9ce8-e0f16f7ffc1f"
      isGlobalWidgetContainer={true}
      margin="0"
      mode="create"
      task_id="ad2f3c31-8577-487a-981a-87271d4a850d"
    >
      <Form
        id="form"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showBorder={false}
      >
        <Header>
          <Text
            id="formTitle2"
            value="#### Form title"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Text
            id="containerTitle2"
            heightType="fixed"
            hidden="{{ isUpdateMode.value }}"
            style={{
              ordered: [
                { fontSize: "h3Font" },
                { fontWeight: "h3Font" },
                { fontFamily: "h3Font" },
              ],
            }}
            value="Create task - Case {{ GetCurrentCase.data.key }}"
            verticalAlign="center"
          />
          <Text
            id="Task_Title_Text"
            heightType="fixed"
            horizontalAlign="right"
            style={{
              ordered: [
                { fontSize: "h3Font" },
                { fontWeight: "h3Font" },
                { fontFamily: "h3Font" },
              ],
            }}
            value=" Task {{ taskTitleKey.value}}"
            verticalAlign="center"
          />
          <Text
            id="text7"
            style={{ ordered: [] }}
            value="##### Task definition"
            verticalAlign="center"
          />
          <Select
            id="Label_Type_Select"
            data="{{ GetTemplateTasks.data }}"
            emptyMessage="No options"
            formDataKey="templateSelect"
            hidden="{{isUpdateMode.value}}"
            hideLabel=""
            labelPosition="top"
            labels="{{ item.label_name }}"
            overlayMaxHeight={375}
            placeholder="Select"
            required={true}
            showSelectionIndicator={true}
            style={{
              ordered: [
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            value="Custom"
            values="{{ item.id }}"
          >
            <Option id="37c92" value="Custom" />
            <Option id="036d1" disabled={false} hidden={false} value="Test" />
            <Event
              event="change"
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
              pluginId="prefillFormBySelectedTemplate"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <TextInput
            id="Label_Name_Input"
            disabled=""
            formDataKey="labelName"
            hidden={'{{ Label_Type_Select.value !== "Custom" }}'}
            label="Label name"
            labelPosition="top"
            placeholder="Type name"
            readOnly=""
            required={true}
            style={{
              ordered: [
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            value="{{ isUpdateMode.value ? currentTask.value.label_name : null }}"
          />
          <Select
            id="Priority_Select"
            data="{{ GetTaskPriorities.data }}"
            disabled=""
            emptyMessage="No options"
            formDataKey="priority_id"
            label="Priority"
            labelPosition="top"
            labels="{{ item.name }}"
            overlayMaxHeight={375}
            placeholder="Select"
            readOnly=""
            required={true}
            showSelectionIndicator={true}
            style={{
              ordered: [
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            value="{{ prioritySelectDefaultValue.value?.value }}"
            values="{{ item.id  }}"
          />
          <Select
            id="Status_Select"
            data="{{ GetTaskStatuses.data }}"
            disabled=""
            emptyMessage="No options"
            formDataKey="status_id"
            hideLabel={false}
            label="Status"
            labelPosition="top"
            labels="{{ item.name }}"
            overlayMaxHeight={375}
            placeholder="Select"
            readOnly=""
            required={true}
            showSelectionIndicator={true}
            style={{
              ordered: [
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            value="{{ statusSelectDefaultValue.value?.value }}"
            values="{{ item.id }}"
          />
          <Select
            id="Category_Select"
            data="{{ GetTaskCategories.data }}"
            disabled=""
            disabledByIndex=""
            emptyMessage="No options"
            formDataKey="category_id"
            hideLabel={false}
            label="Category"
            labelPosition="top"
            labels="{{ item.name }}"
            overlayMaxHeight={375}
            placeholder="Select"
            readOnly=""
            required={true}
            showSelectionIndicator={true}
            style={{
              ordered: [
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            value="{{ categorySelectDefaultValue.value?.value }}"
            values="{{ item.id }}"
          />
          <TextArea
            id="Description_Input"
            disabled=""
            formDataKey="description"
            label="Description"
            labelPosition="top"
            minLines="5
"
            placeholder="Type task description"
            readOnly=""
            style={{
              ordered: [
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            value="{{ isUpdateMode.value ? currentTask.value.description : null }}"
          />
          <Text
            id="text8"
            style={{
              ordered: [
                { fontSize: "h6Font" },
                { fontWeight: "h6Font" },
                { fontFamily: "h6Font" },
              ],
            }}
            value="**Due date and time**"
            verticalAlign="center"
          />
          <Date
            id="Due_Date_Picker"
            dateFormat="MMM d, yyyy"
            datePlaceholder="Select"
            disabled=""
            firstDayOfWeek={1}
            formDataKey="dueDate"
            hideLabel={false}
            iconAfter="bold/interface-calendar"
            label="Due date"
            labelPosition="top"
            minDate="{{  new Date().toISOString().split('T')[0]}}"
            readOnly=""
            required={true}
            style={{
              ordered: [
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            value="{{ isUpdateMode.value ? transformTimestampIntoDate.value?.due_date : moment(new Date()).format('YYYY-MM-DD') }}"
          >
            <Event
              event="change"
              method="setValue"
              params={{ ordered: [{ value: "null" }] }}
              pluginId="Due_Time_Picker"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Date>
          <Time
            id="Due_Time_Picker"
            disabled=""
            formDataKey="dueTime"
            iconBefore="bold/interface-time-clock-circle-alternate"
            label="Due time"
            labelPosition="top"
            minTime="{{ dateValidationAndTransform.value }}"
            minuteStep={15}
            readOnly=""
            required={true}
            style={{
              ordered: [
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            timePlaceholder="HH:MM (Zone)"
            value="{{ isUpdateMode.value ?transformTimestampIntoDate.value.due_time : null }}"
          />
          <Text
            id="text9"
            value="Patient location Date and time : DD/MM/YYYY HH:MM (Zone)"
            verticalAlign="center"
          />
          <Text
            id="text10"
            style={{
              ordered: [
                { fontSize: "h6Font" },
                { fontWeight: "h6Font" },
                { fontFamily: "h6Font" },
              ],
            }}
            value=" **Deliverables**"
            verticalAlign="center"
          />
          <Text
            id="text12"
            hidden="{{ !isUpdateMode.value }}"
            style={{
              ordered: [
                { fontSize: "defaultFont" },
                { fontWeight: "defaultFont" },
                { fontFamily: "defaultFont" },
              ],
            }}
            value="**Default**"
            verticalAlign="center"
          />
          <Divider
            id="divider3"
            hidden="{{!isUpdateMode.value }}"
            style={{ ordered: [{ color: "rgba(33, 33, 33, 1)" }] }}
          />
          <Container
            id="stack1"
            _align="center"
            _flexWrap={true}
            _gap="0px"
            _type="stack"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="0"
            showBody={true}
            showBorder={false}
          >
            <View id="491c0" viewKey="View 1">
              <Button
                id="Add_Deliverable_Button"
                heightType="auto"
                style={{ ordered: [{ background: "primary" }] }}
                text="Add"
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
                  pluginId="addNewDeliverable"
                  type="datasource"
                  waitMs="0"
                  waitType="debounce"
                />
              </Button>
              <Text
                id="text11"
                style={{
                  ordered: [
                    { fontSize: "h6Font" },
                    { fontWeight: "h6Font" },
                    { fontFamily: "h6Font" },
                  ],
                }}
                value="**Added**"
                verticalAlign="center"
              />
            </View>
          </Container>
          <ListViewBeta
            id="listView"
            _primaryKeys="{{ i }}"
            data="{{ isUpdateMode.value ? deliverables.value : [] }}"
            heightType="auto"
            hidden="{{ !isUpdateMode.value}}"
            itemWidth="200px"
            margin="0"
            maxHeight="500vh"
            numColumns={3}
            padding="0"
          >
            <Container
              id="stack3"
              _gap="10px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="12px"
              showBody={true}
              showBorder={false}
            >
              <View id="336a9" viewKey="View 1">
                <Checkbox
                  id="Finished_Deliverable_Checkbox3"
                  disabled="{{ Remove_Switch3.value }}"
                  label="{{ GetDeliverablesCategories.data.find(category => category.id === item.category_id)?.name }}"
                  labelPosition="left"
                  labelWidth="100"
                  style={{
                    ordered: [
                      {
                        checkedBorder:
                          "{{ Remove_Switch3.value \n    ? 'gray' \n    : (Finished_Deliverable_Checkbox3.value \n        ? '#3CDBC0' \n        : 'primary') \n}}\n",
                      },
                      { checkedBackground: "tokens/635de113" },
                      {
                        sharedLabel:
                          "{{ Remove_Switch3.value \n    ? 'gray' \n    : (Finished_Deliverable_Checkbox3.value \n        ? '#3CDBC0' \n        : 'primary') \n}}\n",
                      },
                      { caption: "#3cdbc0" },
                      { border: "primary" },
                      {
                        check:
                          "{{ Remove_Switch3.value \n    ? 'gray' \n    : (Finished_Deliverable_Checkbox3.value \n        ? '#3CDBC0' \n        : 'primary') \n}}",
                      },
                    ],
                  }}
                  value="{{ deliverables.value[i]?.is_finished }}"
                >
                  <Event
                    event="change"
                    method="setIn"
                    params={{
                      ordered: [
                        { keyPath: "['{{ i }}', \"is_finished\"]" },
                        { value: "{{ self.value }}" },
                      ],
                    }}
                    pluginId="deliverables"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Checkbox>
                <Text
                  id="text16"
                  hidden="{{ !Finished_Deliverable_Checkbox3.value }}"
                  imageWidth="fill"
                  overflowType="hidden"
                  style={{
                    ordered: [
                      {
                        color:
                          "{{ Remove_Switch3.value \n    ? 'gray' \n    : (Finished_Deliverable_Checkbox3.value \n        ? '#3CDBC0' \n        : 'primary') \n}}",
                      },
                    ],
                  }}
                  value={'{{ Remove_Switch3.value ? "Removed" : "Done" }}'}
                />
                <Switch
                  id="Remove_Switch3"
                  formDataKey="removeSwitch"
                  hidden="{{ !isUpdateMode.value }}"
                  label="Remove"
                  value="{{ deliverables.value[i]?.is_deleted }}"
                >
                  <Event
                    event="change"
                    method="setIn"
                    params={{
                      ordered: [
                        { keyPath: "['{{ i }}', \"is_deleted\"]" },
                        { value: "{{ self.value }}" },
                      ],
                    }}
                    pluginId="deliverables"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="change"
                    method="setValue"
                    params={{ ordered: [{ value: "null" }] }}
                    pluginId="Finished_Deliverable_Checkbox3"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Switch>
              </View>
            </Container>
            <TextArea
              id="Deliverable_Existing_Comment_Input5"
              label="Comment"
              labelPosition="top"
              minLines="3"
              placeholder="Comments"
              style={{ ordered: [{ background: "canvas" }] }}
              value="{{ deliverables.value[i].comment }}"
            >
              <Event
                event="change"
                method="setIn"
                params={{
                  ordered: [
                    { keyPath: "['{{ i }}', \"comment\"]" },
                    { value: "{{ self.value}}" },
                  ],
                }}
                pluginId="deliverables"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </TextArea>
            <TextArea
              id="Deliverable_Deleting_Comment_Input"
              formDataKey="deleteComment"
              hidden="{{ !Remove_Switch3.value }}"
              label="The cause of the deleting"
              labelPosition="top"
              minLines="3"
              placeholder="Enter the cause of the deleting"
              required="{{ Remove_Switch3.value }}"
              style={{ ordered: [{ background: "canvas" }] }}
              value="{{ deliverables.value[i].deleting_comment }}"
            >
              <Event
                event="change"
                method="setIn"
                params={{
                  ordered: [
                    { keyPath: "['{{ i }}', \"deleting_comment\"]" },
                    { value: "{{ self.value}}" },
                  ],
                }}
                pluginId="deliverables"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </TextArea>
          </ListViewBeta>
          <ListViewBeta
            id="Added_Deliverables_List"
            _primaryKeys="{{ item.id }}"
            data="{{ addedDeliverables.value }}"
            heightType="auto"
            hidden="{{ addedDeliverables.value.length === 0 }}"
            itemWidth="200px"
            margin="0"
            numColumns={3}
            padding="0"
          >
            <Container
              id="stack2"
              _align="center"
              _gap="0px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
            >
              <View id="491c0" viewKey="View 1">
                <Select
                  id="Deliverable_Category_Select"
                  captionByIndex=""
                  colorByIndex=""
                  customValidation={
                    '{{   addedDeliverables.value[i].comment !== null && \n  addedDeliverables.value[i].category_id === null \n    ? "Category is required, if comment exists" \n    : ""  }}'
                  }
                  data="{{ GetDeliverablesCategories.data }}"
                  disabled=""
                  disabledByIndex=""
                  emptyMessage="No options"
                  fallbackTextByIndex=""
                  hidden=""
                  hiddenByIndex=""
                  iconByIndex=""
                  imageByIndex=""
                  label="Deliverable"
                  labelPosition="top"
                  labels="{{ item.name }}"
                  overlayMaxHeight={375}
                  placeholder="Select"
                  showSelectionIndicator={true}
                  tooltipByIndex=""
                  value="{{ item.category_id  }}"
                  values="{{ item.id }}"
                >
                  <Event
                    event="change"
                    method="setIn"
                    params={{
                      ordered: [
                        { keyPath: "['{{ i }}', \"category_id\"]" },
                        { value: "{{ self.value }}" },
                      ],
                    }}
                    pluginId="addedDeliverables"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Select>
                <TextArea
                  id="Deliverable_Comment_Input"
                  label="Comment"
                  labelPosition="top"
                  minLines="3"
                  placeholder="Comment"
                  style={{ ordered: [{ background: "canvas" }] }}
                  value="{{ item.comment }}"
                >
                  <Event
                    event="change"
                    method="setIn"
                    params={{
                      ordered: [
                        { keyPath: "['{{ i }}', \"comment\"]" },
                        { value: "{{ self.value}}" },
                      ],
                    }}
                    pluginId="addedDeliverables"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                </TextArea>
                <Button
                  id="Deliverable_Remove_Button2"
                  ariaLabel="Close"
                  heightType="auto"
                  horizontalAlign="left"
                  iconBefore={'{{  "/icon:bold/interface-delete-bin-1"  }}'}
                  margin="0"
                  style={{ ordered: [] }}
                  styleVariant="outline"
                  submitTargetId="form"
                  text="
"
                >
                  <Event
                    event="click"
                    method="setValue"
                    params={{
                      ordered: [
                        {
                          value:
                            "{{   addedDeliverables.value.filter((el) => el.id !== item.id) }}",
                        },
                      ],
                    }}
                    pluginId="addedDeliverables"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Button>
              </View>
            </Container>
          </ListViewBeta>
          <Divider
            id="divider4"
            style={{ ordered: [{ color: "rgba(33, 33, 33, 1)" }] }}
          />
          <Text
            id="assignmentTitle2"
            style={{
              ordered: [
                { fontSize: "h6Font" },
                { fontWeight: "h6Font" },
                { fontFamily: "h6Font" },
              ],
            }}
            value="**Assignment**"
            verticalAlign="center"
          />
          <Checkbox
            id="checkbox2"
            label="Assign to case owner (Case owner name)"
            labelWidth="100"
          />
          <Container
            id="container1"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            margin="0"
            padding="0"
            showBody={true}
            showBorder={false}
          >
            <Header>
              <Text
                id="containerTitle3"
                value="#### Container title"
                verticalAlign="center"
              />
            </Header>
            <View id="4ebed" viewKey="View 1">
              <Select
                id="Team_Assigned_Select"
                data="{{ GetAllTeams.data }}"
                emptyMessage="No options"
                formDataKey="team_id"
                label="Team assigned"
                labelPosition="top"
                labels="{{ item.teamName }}"
                overlayMaxHeight={375}
                placeholder="Select an option"
                showSelectionIndicator={true}
                style={{
                  ordered: [
                    { sharedLabelFontSize: "labelFont" },
                    { sharedLabelFontWeight: "labelFont" },
                    { sharedLabelFontFamily: "labelFont" },
                  ],
                }}
                values="{{ item.id }}"
              />
              <Select
                id="User_Assigned_Select"
                emptyMessage="No options"
                itemMode="static"
                label="User assigned"
                labelPosition="top"
                overlayMaxHeight={375}
                placeholder="Select an option"
                showSelectionIndicator={true}
                style={{
                  ordered: [
                    { sharedLabelFontSize: "labelFont" },
                    { sharedLabelFontWeight: "labelFont" },
                    { sharedLabelFontFamily: "labelFont" },
                  ],
                }}
              >
                <Option id="96c20" value="Option 1" />
                <Option id="b49ed" value="Option 2" />
                <Option id="5b468" value="Option 3" />
              </Select>
            </View>
          </Container>
          <Divider
            id="divider5"
            style={{ ordered: [{ color: "rgba(33, 33, 33, 1)" }] }}
          />
          <TextArea
            id="Comments_Input"
            formDataKey="comments"
            label="Comments"
            labelPosition="top"
            minLines="5
"
            placeholder="Supporting lorem ipsum"
            style={{
              ordered: [
                { background: "canvas" },
                { sharedLabelFontSize: "labelFont" },
                { sharedLabelFontWeight: "labelFont" },
                { sharedLabelFontFamily: "labelFont" },
              ],
            }}
            value="{{ isUpdateMode.value ? currentTask.value.comments : null }}"
          />
          <Button
            id="createActionButton"
            submit={true}
            submitTargetId="form"
            text={"{{ isUpdateMode.value ? 'Update' : \"Create\"}}"}
          />
        </Body>
        <Footer>
          <Button
            id="formButton2"
            submit={true}
            submitTargetId="form"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
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
          pluginId="handleCreateUpdateClick"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </ModuleContainerWidget>
  </Frame>
</App>
