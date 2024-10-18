<App>
  <Include src="./functions.rsx" />
  <Include src="./src/modalFrame1.rsx" />
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
      isGlobalWidgetContainer={true}
    >
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
        showBody={true}
        showFooter={true}
      >
        <Header>
          <Text
            id="formTitle16"
            marginType="normal"
            value="#### {{ timeTypeTemp.value }} Time"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Select
            id="select32"
            automaticItemColors={true}
            captionByIndex="{{ item.issue_index }}"
            colorByIndex=""
            data="{{ getIssues.data }}"
            emptyMessage="No options"
            label="{{ i18n.t('Task') }}"
            labelPosition="top"
            labels="{{ i18n.t(item.issue_index) }} {{i18n.t(item.issue) }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="{{ i18n.t('Select an option') }}"
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            value="{{urlparams.hash.issueID}}"
            values="{{ item.issueID }}"
          />
          <TextArea
            id="textArea_planTimeDescription2"
            autoResize={true}
            label="{{ i18n.t('Description') }}"
            labelPosition="top"
            marginType="normal"
            minLines={2}
          />
          <NumberInput
            id="numberInput_time2"
            currency="USD"
            decimalPlaces=""
            inputValue={0}
            label="{{ i18n.t('Time') }}"
            labelPosition="top"
            marginType="normal"
            placeholder="{{ i18n.t('Enter value') }}"
            required={true}
            showSeparators={true}
            showStepper={true}
            textAfter="{{  i18n.t('hrs')}}"
            value={0}
          />
          <DateRange
            id="dateRange_planTime2"
            dateFormat="dd MMM yyyy"
            endPlaceholder="End date"
            iconBefore="bold/interface-calendar-remove"
            label="{{ i18n.t('Date Range') }}"
            labelPosition="top"
            marginType="normal"
            required={true}
            startPlaceholder="Start date"
            textBetween="-"
            value={{
              ordered: [
                { start: "{{  moment().toDate()}}" },
                { end: "{{  moment().toDate()}}" },
              ],
            }}
          />
          <Select
            id="select33"
            automaticItemColors={true}
            captionByIndex="{{ item.company_name }}"
            colorByIndex=""
            data="{{ getTimeAccount.data }}"
            emptyMessage="No options"
            fallbackTextByIndex=""
            imageByIndex=""
            label="{{ i18n.t('Account') }}"
            labelPosition="top"
            labels="{{item.account_key}} {{ item.account_name }}"
            overlayMaxHeight={375}
            placeholder="{{ i18n.t('Select an option') }}"
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            values="{{ item.accountID }}"
          />
          <Switch
            id="checkbox_planTimePeriod2"
            hidden="true"
            label="{{ i18n.t('Period') }}"
            labelPosition="left"
          />
        </Body>
        <Footer>
          <Button
            id="formButton12"
            marginType="normal"
            style={{ ordered: [] }}
            submit={true}
            submitTargetId="form16"
            text="{{ i18n.t('Save Time') }}"
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
          pluginId="insTime"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </ModuleContainerWidget>
  </Frame>
</App>
