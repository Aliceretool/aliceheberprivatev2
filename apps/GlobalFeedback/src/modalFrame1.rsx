<ModalFrame
  id="modalFrame1"
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
  size="large"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### Share Your Feedback"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="ab414010"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Select
          id="feedbackType"
          emptyMessage="No options"
          itemMode="static"
          label="Feedback Type"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
        >
          <Option id="00030" value="Bug Report" />
          <Option
            id="dd07b"
            disabled={false}
            hidden={false}
            value="Missing or Incorrect Data"
          />
          <Option id="00031" value="Feature Request" />
          <Option id="00032" value="General Feedbcak & Other" />
        </Select>
        <TextArea
          id="messageInput"
          autoResize={true}
          formDataKey="message"
          label="Message"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
        <FileInput
          id="fileInput1"
          _isUpgraded={true}
          accept="['image/*']"
          iconBefore="bold/programming-browser-search"
          label="Upload Screenshot"
          labelPosition="top"
          maxCount={20}
          maxSize="250mb"
          parseFiles={true}
          placeholder="No file selected"
          textBefore="Browse"
        />
        <Select
          id="urgency"
          emptyMessage="No options"
          itemMode="static"
          label="Urgency"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="How urgent is this for you?"
          showSelectionIndicator={true}
          style={{}}
        >
          <Option id="00030" value="Very High" />
          <Option id="00031" value="High" />
          <Option id="00032" value="Medium" />
          <Option id="75337" disabled={false} hidden={false} value="Low" />
        </Select>
      </Body>
      <Footer>
        <Button
          id="feedbackSubmitButton"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        id="f993b1be"
        event="submit"
        method="trigger"
        params={{
          map: {
            options: {
              object: {
                onSuccess: null,
                onFailure: null,
                additionalScope: null,
              },
            },
          },
        }}
        pluginId="feedbackFormDataUpdate"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="fe11041c"
        event="submit"
        method="trigger"
        params={{
          map: {
            options: {
              object: {
                onSuccess: null,
                onFailure: null,
                additionalScope: null,
              },
            },
          },
        }}
        pluginId="form1SubmitHandler"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="a740be42"
        event="submit"
        method="hide"
        params={{}}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Header>
</ModalFrame>
