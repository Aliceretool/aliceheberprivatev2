<ModalFrame
  id="modal_done"
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
  size="medium"
>
  <Header>
    <Text
      id="modalTitle42"
      value="### {{ i18n.t('Add Results') }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton44"
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
        pluginId="modal_done"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Multiselect
      id="multiselect25"
      captionByIndex="{{item.status_value}}"
      colorByIndex={
        '{{item.status_value == \'Open\' ? "green": item.status_value ==\'Pending Testing\'? "orange" : item.status_value =="Rejected"? "red" : item.status_value ==\'Approved\'?"lightblue":\'\'}}'
      }
      data="{{ getANL.data }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      iconByIndex={
        '{{ item.status_value == \'Open\' ? "/icon:bold/shopping-business-startup": item.status_value ==\'Pending Testing\'? "/icon:bold/interface-time-alarm" : item.status_value =="Rejected"? "/icon:bold/interface-alert-warning-circle-alternate" : item.status_value ==\'Approved\'?"/icon:bold/mail-smiley-happy-face-alternate":\'\'}}\n'
      }
      imageByIndex=""
      itemAdornmentShape="square"
      label="{{ i18n.t('Select Analysis ID') }}"
      labelPosition="top"
      labels="{{ item.issue_index }} -   {{item.issue}} "
      overlayMaxHeight={375}
      placeholder="Select options"
      required={true}
      showSelectionIndicator={true}
      tooltipByIndex="{{item.status_value}}"
      values="{{ item.issueID }}"
      wrapTags={true}
    />
    <TextInput
      id="textInput_results"
      label="{{ i18n.t('Results') }}"
      labelPosition="top"
      placeholder="Enter value"
      required={true}
    />
    <Select
      id="select71"
      automaticItemColors={true}
      captionByIndex="{{item.email}}"
      data="{{ getUsers_filteredProjectRoleSPLSupervisor.data }}"
      emptyMessage="No options"
      label="{{ i18n.t('Reviewer') }}"
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      values="{{ item.userID }}"
    />
    <TextArea
      id="textArea41"
      autoResize={true}
      label="{{ i18n.t('Comments') }}"
      labelPosition="top"
      minLines="6"
      placeholder="Enter value"
      required={true}
    />
    <Module
      id="attachmentUploader11"
      issueId="{{ urlparams.hash.issueID }}"
      margin="0"
      name="Attachment Uploader"
      pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
      project="test"
      refresh="getS3Files10"
    />
  </Body>
  <Footer>
    <Button id="button156" text="{{ i18n.t('Done') }}">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_done8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modal_done"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_done"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "Test Details" }] }}
        pluginId="tabbedContainer6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
