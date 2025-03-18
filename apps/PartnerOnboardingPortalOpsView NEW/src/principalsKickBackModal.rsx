<ModalFrame
  id="principalsKickBackModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
>
  <Header>
    <Button
      id="modalCloseButton8"
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
        pluginId="principalsKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="principalsKickBackForm2"
      disableSubmit="{{ formatKickBackInvalidationsAsArray.isFetching || UpdateApplicationSectionStatus.isFetching || UpdateCreditAuthorizationForm.isFetching || FullPrincipalsKickBack.isFetching }}"
      footerPaddingType="normal"
      headerPaddingType="normal"
      loading=""
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="ownershipKickBackFormTitle2"
          marginType="normal"
          value="#### Kick Back Details"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <RadioGroup
          id="principalsKickBackSelectionRadioGroup"
          itemMode="static"
          label="Choose Kick Back Option"
          labelPosition="top"
          labelWrap={true}
          marginType="normal"
          required={true}
          value=""
        >
          <Option
            id="28667"
            label="Kick Back CAF Only"
            value="kickBackCafOnly"
          />
          <Option
            id="c144f"
            label="Kick Back Principals (full)"
            value="kickBackOwnership"
          />
          <Event
            enabled={
              '{{ principalsKickBackSelectionRadioGroup.value === "kickBackCafOnly" }}'
            }
            event="change"
            method="setValue"
            params={{
              ordered: [
                { value: '{ "creditAuthorizationReview": "Rejected" }' },
              ],
            }}
            pluginId="applicationSectionStatusUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled={
              '{{ principalsKickBackSelectionRadioGroup.value === "kickBackOwnership" }}'
            }
            event="change"
            method="setValue"
            params={{
              ordered: [{ value: '{ "principalsReview": "Rejected" }' }],
            }}
            pluginId="applicationSectionStatusUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </RadioGroup>
        <Spacer
          id="spacer39"
          hidden={
            '{{ principalsKickBackSelectionRadioGroup.value !== "kickBackCafOnly" }}'
          }
          marginType="normal"
        />
        <Multiselect
          id="principalSelectionMultiSelect"
          captionByIndex=""
          colorByIndex=""
          data="{{ GetInstallerAppUsers.data.principalList }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hidden={
            '{{ principalsKickBackSelectionRadioGroup.value !== "kickBackCafOnly" }}'
          }
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Select Owners for CAF Kickback:"
          labelPosition="top"
          labels="{{ item.fullName }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Choose one or more owners"
          required={
            '{{ principalsKickBackSelectionRadioGroup.value === "kickBackCafOnly"  }}'
          }
          showSelectionIndicator={true}
          tooltipByIndex=""
          value=""
          values="{{ item.id }}"
          wrapTags={true}
        >
          <Option id="9db9e" value="Option 1" />
          <Option id="a9b68" value="Option 2" />
          <Option id="e17e3" value="Option 3" />
        </Multiselect>
        <Spacer id="spacer40" marginType="normal" />
        <TextArea
          id="principalsRejectionReasonTextArea"
          autoResize={true}
          hidden=""
          label="Rejection Notes"
          labelPosition="top"
          marginType="normal"
          minLines="3"
          placeholder="Please enter the reason for rejecting this section..."
          required={true}
        />
        <Spacer id="spacer38" marginType="normal" />
      </Body>
      <Footer>
        <Button
          id="principalsKickBackSubmitButton2"
          marginType="normal"
          submit={true}
          submitTargetId="principalsKickBackForm2"
          text="Submit kickback"
        />
      </Footer>
      <Event
        enabled={
          '{{ principalsKickBackSelectionRadioGroup.value === "kickBackCafOnly" }}'
        }
        event="submit"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                '{{{...applicationSectionStatusUpdates.value, "creditAuthorizationKickbackNotes": principalsRejectionReasonTextArea.value }}}',
            },
          ],
        }}
        pluginId="applicationSectionStatusUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ principalsKickBackSelectionRadioGroup.value === "kickBackOwnership" }}'
        }
        event="submit"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                '{{{...applicationSectionStatusUpdates.value, "principalsKickbackNotes": principalsRejectionReasonTextArea.value }}}',
            },
          ],
        }}
        pluginId="applicationSectionStatusUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ principalsKickBackSelectionRadioGroup.value === "kickBackCafOnly"  }}'
        }
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatKickBackInvalidationsAsArray"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ principalsKickBackSelectionRadioGroup.value === "kickBackOwnership" }}'
        }
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateApplicationSectionStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Event
    event="hide"
    method="setValue"
    params={{ ordered: [{ value: "{}" }] }}
    pluginId="applicationSectionStatusUpdates"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="clearValue"
    params={{ ordered: [] }}
    pluginId="principalsRejectionReasonTextArea"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="clearValue"
    params={{ ordered: [] }}
    pluginId="principalSelectionMultiSelect"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="clearValue"
    params={{ ordered: [] }}
    pluginId="principalsKickBackSelectionRadioGroup"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="show"
    method="setValue"
    params={{ ordered: [{ value: "principals" }] }}
    pluginId="kickBackSection"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="setValue"
    params={{ ordered: [{ value: "null" }] }}
    pluginId="kickBackSection"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
