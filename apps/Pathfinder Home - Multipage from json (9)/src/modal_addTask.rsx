<ModalFrame
  id="modal_addTask"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
>
  <Header>
    <Text id="modalTitle2" value="### Add Task" verticalAlign="center" />
    <Button
      id="modalCloseButton2"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modal_addTask"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form16"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle17" marginType="normal" verticalAlign="center" />
      </Header>
      <Body>
        <TextInput
          id="textInput_actionSummary2"
          formDataKey="action_summary"
          label="Action Summary"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
        />
        <TextArea
          id="textArea_actionDescription2"
          autoResize={true}
          formDataKey="action_description"
          label="Action Description"
          labelPosition="top"
          marginType="normal"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="select_assignee2"
          captionByIndex="{{ item.email }}"
          data="{{ getUser_FilteredProject2.data }}"
          emptyMessage="No options"
          formDataKey="assignee"
          label="Assignee"
          labelPosition="top"
          labels="{{ `${item.firstName} ${item.lastName}` }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.userID }}"
        />
        <Date
          id="date_due2"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="due_date"
          iconBefore="bold/interface-calendar"
          label="Due Date"
          labelPosition="top"
          marginType="normal"
          required={true}
          value="{{ new Date() }}"
        />
        <TextArea
          id="textArea_comment2"
          autoResize={true}
          formDataKey="comment"
          label="Comment"
          labelPosition="top"
          marginType="normal"
          minLines={2}
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton11"
          marginType="normal"
          submit={true}
          submitTargetId="form16"
          text="Add Task"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insTask"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
