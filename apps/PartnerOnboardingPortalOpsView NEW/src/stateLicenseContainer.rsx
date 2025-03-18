<Container
  id="stateLicenseContainer"
  disabled=""
  footerPaddingType="normal"
  headerPaddingType="normal"
  heightType="fixed"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Button
      id="licenseCheckUrlButton"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      marginType="normal"
      text="License Check Wiki Page"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://sungage.atlassian.net/wiki/spaces/SUNGAGE/pages/49905873/License+Requirements+and+Verification+by+State",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text13"
      marginType="normal"
      value="### States Currently Doing Business In"
      verticalAlign="center"
    />
    <Modal
      id="statesAndLicensesKickBackModalDeprecated"
      buttonText="Kick Back Section"
      disabled={
        '{{ \nisLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.statesLicensesReview === "Rejected" }}'
      }
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "applicationSectionStatusUpdates" },
            { targetId: null },
            {
              params: {
                ordered: [{ value: '{"statesLicensesReview": "Rejected" }' }],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "applicationSectionStatusUpdates" },
            { targetId: null },
            { params: { ordered: [{ value: "{}" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "widget" },
            { method: "clearValue" },
            { pluginId: "statesAndLicensesKickBackRejectionReasonTextArea" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "open" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "kickBackSection" },
            { targetId: null },
            { params: { ordered: [{ value: "statesAndLicenses" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "kickBackSection" },
            { targetId: null },
            { params: { ordered: [{ value: "null" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      margin="4px 8px"
      marginType="normal"
      modalHeightType="auto"
      style={{ ordered: [{ "primary-surface": "" }] }}
    >
      <Form
        id="statesAndLicensesKickBackForm"
        footerPaddingType="normal"
        headerPaddingType="normal"
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
            id="statesAndLicensesKickBackFormTitle"
            marginType="normal"
            value="#### Kick Back Details"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="statesAndLicensesKickBackRejectionReasonTextArea"
            autoResize={true}
            label="Rejection Notes"
            labelPosition="top"
            marginType="normal"
            minLines="3"
            placeholder="Please enter the reason for rejecting this section..."
            required="true"
          >
            <Event
              event="change"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      '{{{...applicationSectionStatusUpdates.value, "statesLicensesKickbackNotes": self.value}}}',
                  },
                ],
              }}
              pluginId="applicationSectionStatusUpdates"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </TextArea>
        </Body>
        <Footer>
          <Button
            id="statesAndLicensesKickBackSubmitButton"
            marginType="normal"
            submit={true}
            submitTargetId="statesAndLicensesKickBackForm"
            text="Submit kickback"
          />
        </Footer>
        <Event
          enabled=""
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="UpdateApplicationSectionStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Container
      id="statesAndLicensesKickBackNotesCollapsibleContainer"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hidden="true"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(246, 229, 196)" }] }}
    >
      <Header>
        <Text
          id="companyInfoKickBackNotesHeaderText2"
          marginType="normal"
          value="###### Kick Back Notes"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle3"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ statesAndLicensesKickBackNotesCollapsibleContainer.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="statesAndLicensesKickBackNotesCollapsibleContainer"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="a8035" viewKey="View 1">
        <Text
          id="companyInfoKickBackNotesText2"
          marginType="normal"
          value="{{ GetAccountHome.data?.applicationSectionStatus?.statesLicensesKickbackNotes }} "
          verticalAlign="center"
        />
      </View>
    </Container>
    <Button
      id="statesAndLicensesKickBackModalButton"
      disabled={
        '{{ \nisLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.statesLicensesReview === "Rejected" }}'
      }
      text="Kick Back Section"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="statesAndLicensesKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="dd3e1" viewKey="View 1">
    <Spacer id="spacer1" marginType="normal" />
    <ListView
      id="stateLicenseParentListView"
      hidden="true"
      instances="{{ formatStateLicenses.data?.length || 1 }}"
      marginType="normal"
      paddingType="normal"
    >
      <Text
        id="stateAbbrText"
        marginType="normal"
        value="#### {{formatStateLicenses.data?.[i]?.state}}"
        verticalAlign="center"
      />
      <ListView
        id="licenseByStateListView"
        instances="{{ formatStateLicenses.data?.[i]?.stateLicenses?.length || 1 }}"
        marginType="normal"
        paddingType="normal"
      >
        <Spacer id="spacer2" marginType="normal" />
        <TextInput
          id="nameOnLicenseTextInput"
          disabled="{{(formatStateLicenses.data[ri[0]].stateLicenses === undefined || formatStateLicenses.data[ri[0]].licenseOptions.length === 1 && formatStateLicenses.data[ri[0]].licenseOptions[0] === 'No_License_Required' && formatStateLicenses.data[ri[0]].stateLicenses.length === 0) || formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType === 'No_License_Required' || licenseTypeSelect[ri[1]].value === 'No_License_Required'}}"
          label="Name on License"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          readOnly="{{ isLendingPartnerVettingUser.value }}"
          showClear={true}
          style={{
            ordered: [
              {
                border:
                  "{{formatStateLicenses.data[ri[0]].stateLicenses === undefined || formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? '#c4c4c4' : self.value !== formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].nameOnLicense && self.value !== '' ? 'warning' : '#c4c4c4' }}",
              },
            ],
          }}
          value="{{formatStateLicenses.data[ri[0]].stateLicenses === undefined || formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].nameOnLicense}}"
        >
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? false: !Object.keys(stateLicensesUpdates.value).includes(formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "where", "id"]',
                },
                {
                  value:
                    "{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}",
                },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "nameOnLicense"]',
                },
                { value: "{{self.value}}" },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </TextInput>
        <Select
          id="licenseTypeSelect"
          data="{{ formatStateLicenses.data?.[ri[0]].licenseOptions }}"
          disabled="{{formatStateLicenses.data[ri[0]].stateLicenses === undefined ||(formatStateLicenses.data[ri[0]].licenseOptions.length === 1 && formatStateLicenses.data[ri[0]].licenseOptions[0] === 'No_License_Required' && formatStateLicenses.data[ri[0]].stateLicenses.length === 0) || formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType === 'No_License_Required' || licenseTypeSelect[ri[1]].value === 'No_License_Required'}}"
          disabledByIndex="{{formatStateLicenses.data[ri[0]].stateLicenses === undefined ||(formatStateLicenses.data[ri[0]].licenseOptions.length === 1 && formatStateLicenses.data[ri[0]].licenseOptions[0] === 'No_License_Required' && formatStateLicenses.data[ri[0]].stateLicenses.length === 0) || formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType === 'No_License_Required' || licenseTypeSelect[ri[1]].value === 'No_License_Required'}}"
          emptyMessage="No options"
          label="License Type"
          labelPosition="top"
          labels="{{_.startCase(item)}}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select an option"
          readOnly="{{ isLendingPartnerVettingUser.value }}"
          showSelectionIndicator={true}
          style={{
            ordered: [
              {
                border:
                  "{{ \n  formatStateLicenses.data?.[ri[0]].stateLicenses?.length > 0 && self.value !== '' && self.value !== formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType \n    ? 'warning' \n    : '#c4c4c4' \n}}\n",
              },
            ],
          }}
          value="{{ formatStateLicenses.data?.[ri[0]].stateLicenses?.[ri[1]]?.licenseType || 'No_License_Required' }}"
          values="{{item}}"
        >
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? false: !Object.keys(stateLicensesUpdates.value).includes(formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "where", "id"]',
                },
                {
                  value:
                    "{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}",
                },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "licenseType"]',
                },
                { value: "{{self.value}}" },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType !== null && (licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "licenseNumber"]',
                },
                { value: '""' },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType !== null && (licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "nameOnLicense"]',
                },
                { value: '""' },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType !== null && (licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "expirationDate"]',
                },
                { value: "null" },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="change"
            method="setDisabled"
            params={{
              ordered: [
                {
                  disabled:
                    "{{licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null ? true : false}}",
                },
              ],
            }}
            pluginId="licenseNumberTextInput"
            pluginInstance=""
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType !== null && (licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null)}}"
            event="change"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="licenseNumberTextInput"
            pluginInstance=""
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="change"
            method="setDisabled"
            params={{
              ordered: [
                {
                  disabled:
                    "{{licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null ? true : false}}",
                },
              ],
            }}
            pluginId="nameOnLicenseTextInput"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType !== null && (licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null)}}"
            event="change"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="nameOnLicenseTextInput"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="change"
            method="setDisabled"
            params={{
              ordered: [
                {
                  disabled:
                    "{{licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null ? true : false}}",
                },
              ],
            }}
            pluginId="expirationDate"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType !== null && (licenseTypeSelect[ri[1]].value === 'no_license_required' || licenseTypeSelect[ri[1]].value === null)}}"
            event="change"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="expirationDate"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <TextInput
          id="licenseNumberTextInput"
          disabled="{{ 
  (formatStateLicenses.data?.[ri[0]].licenseOptions?.length === 1 && formatStateLicenses.data[ri[0]].licenseOptions[0] === 'No_License_Required' && formatStateLicenses.data?.[ri[0]].stateLicenses?.length === 0) || 
  formatStateLicenses.data?.[ri[0]].stateLicenses?.[ri[1]]?.licenseType === 'No_License_Required' || 
  licenseTypeSelect?.[ri[1]].value === 'No_License_Required' 
}}"
          label="License Number"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          readOnly="{{ isLendingPartnerVettingUser.value }}"
          showClear={true}
          style={{
            ordered: [
              {
                border:
                  "{{ \n  formatStateLicenses.data?.[ri[0]].stateLicenses?.length > 0 && self.value !== '' && self.value !== formatStateLicenses.data[ri[0]].stateLicenses[ri[1]]?.licenseNumber \n    ? 'warning' \n    : '#c4c4c4' \n}}\n",
              },
            ],
          }}
          value="{{ formatStateLicenses.data?.[ri[0]].stateLicenses?.[ri[1]]?.licenseNumber || null }}"
        >
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? false: !Object.keys(stateLicensesUpdates.value).includes(formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "where", "id"]',
                },
                {
                  value:
                    "{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}",
                },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "licenseNumber"]',
                },
                { value: "{{ self.value }}" },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </TextInput>
        <Date
          id="expirationDate"
          dateFormat="MM/dd/yyyy"
          disabled="{{  isLendingPartnerVettingUser.value || formatStateLicenses.data[ri[0]].stateLicenses === undefined ||(formatStateLicenses.data[ri[0]].licenseOptions.length === 1 && formatStateLicenses.data[ri[0]].licenseOptions[0] === 'No_License_Required' && formatStateLicenses.data[ri[0]].stateLicenses.length === 0) || formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType === 'No_License_Required' || licenseTypeSelect[ri[1]].value === 'No_License_Required'}}"
          iconBefore="bold/interface-calendar"
          label="Expiration Date"
          labelPosition="top"
          marginType="normal"
          minDate="{{moment()}}"
          readOnly="{{ isLendingPartnerVettingUser.value }}"
          showClear={true}
          style={{
            ordered: [
              {
                border:
                  "{{formatStateLicenses.data[ri[0]].stateLicenses === undefined || formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? '#c4c4c4' : self.value !== formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].expirationDate && self.value !== '' ? 'warning' : '#c4c4c4' }}",
              },
            ],
          }}
          value="{{formatStateLicenses.data[ri[0]].stateLicenses === undefined || formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].expirationDate}}"
        >
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? false: !Object.keys(stateLicensesUpdates.value).includes(formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "where", "id"]',
                },
                {
                  value:
                    "{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}",
                },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "expirationDate"]',
                },
                { value: "{{self.value === '' ? null : self.value}}" },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Date>
        <Date
          id="licenseVerfiedDate"
          dateFormat="MM/dd/yyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          disabled="{{  isLendingPartnerVettingUser.value || formatStateLicenses.data[ri[0]].stateLicenses === undefined ||(formatStateLicenses.data[ri[0]].licenseOptions.length === 1 && formatStateLicenses.data[ri[0]].licenseOptions[0] === 'No_License_Required' && formatStateLicenses.data[ri[0]].stateLicenses.length === 0) || formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType === 'No_License_Required' || licenseTypeSelect[ri[1]].value === 'No_License_Required'}}"
          iconBefore="bold/interface-calendar"
          label="License Number Verified"
          labelPosition="top"
          marginType="normal"
          maxDate="{{moment()}}"
          readOnly="{{ isLendingPartnerVettingUser.value }}"
          showClear={true}
          style={{
            ordered: [
              {
                border:
                  "{{formatStateLicenses.data[ri[0]].stateLicenses === null || formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? '#c4c4c4' : moment(self.value).format('YYYY-DD-MM') !== moment(formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseNumberVerified).format('YYYY-DD-MM') ? 'warning' : '#c4c4c4' }}",
              },
            ],
          }}
          value="{{formatStateLicenses.data[ri[0]] === undefined || formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? '' : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseNumberVerified}}"
        >
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].length === 0 || formatStateLicenses.data === null ? false: !Object.keys(stateLicensesUpdates.value).includes(formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data === null ? \'\' : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "where", "id"]',
                },
                {
                  value:
                    "{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}",
                },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data === null ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "licenseNumberVerified"]',
                },
                {
                  value:
                    "{{self.value === '' ? null : self.value + moment().format().slice(10)}}",
                },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Date>
        <Select
          id="documentStatusSelect"
          captionByIndex=""
          colorByIndex=""
          data=""
          disabled="{{formatStateLicenses.data[ri[0]].stateLicenses === undefined ||(formatStateLicenses.data[ri[0]].licenseOptions.length === 1 && formatStateLicenses.data[ri[0]].licenseOptions[0] === 'No_License_Required' && formatStateLicenses.data[ri[0]].stateLicenses.length === 0) || formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType === 'No_License_Required' || licenseTypeSelect[ri[1]].value === 'No_License_Required'}}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Document Status"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{ formatStateLicenses.data?.[ri[0]].stateLicenses?.[ri[1]]?.documentStatus }}"
          values=""
        >
          <Option id="a3ed4" disabled={false} hidden={false} value="Expired" />
          <Option id="401f0" disabled={false} hidden={false} value="Inactive" />
          <Option
            id="7ec4b"
            disabled={false}
            hidden={false}
            value="Unverified"
          />
          <Option id="2fe95" disabled={false} hidden={false} value="Verified" />
          <Event
            enabled="{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? false: !Object.keys(stateLicensesUpdates.value).includes(formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id)}}"
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "where", "id"]',
                },
                {
                  value:
                    "{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}",
                },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="change"
            method="setIn"
            params={{
              ordered: [
                {
                  keyPath:
                    '[{{formatStateLicenses.data[ri[0]].stateLicenses.length === 0 ? null : formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}, "data", "documentStatus"]',
                },
                { value: "{{self.value === null ? null : self.value}}" },
              ],
            }}
            pluginId="stateLicensesUpdates"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <FileButton
          id="licenseFileButton"
          _isUpgraded={true}
          disabled="{{ isLendingPartnerVettingUser.value || formatStateLicenses.data[ri[0]].stateLicenses === undefined ||(formatStateLicenses.data[ri[0]].licenseOptions.length === 1 && formatStateLicenses.data[ri[0]].licenseOptions[0] === 'No_License_Required' && formatStateLicenses.data[ri[0]].stateLicenses.length === 0) || formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].licenseType === 'No_License_Required' || licenseTypeSelect[ri[1]].value === 'No_License_Required'}}"
          files={[]}
          iconBefore="bold/interface-upload-button-2"
          loading="{{CreateAttachmentFileUpload.isFetching}}"
          marginType="normal"
          styleVariant="outline"
          text="upload file"
          value={[]}
        >
          <Event
            event="parse"
            method="setIn"
            params={{
              ordered: [
                { keyPath: '["attachmentType"]' },
                { value: '"License_Type"' },
              ],
            }}
            pluginId="createAttachmentVariables"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="parse"
            method="setIn"
            params={{
              ordered: [
                { keyPath: '["connection"]' },
                { value: '"stateLicense"' },
              ],
            }}
            pluginId="createAttachmentVariables"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="parse"
            method="setIn"
            params={{
              ordered: [
                { keyPath: '["fileUpload"]' },
                { value: "{{self.value?.[0]?.base64Data}}" },
              ],
            }}
            pluginId="createAttachmentVariables"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="parse"
            method="setIn"
            params={{
              ordered: [
                { keyPath: '["component"]' },
                { value: "{{self.files?.[0]}}" },
              ],
            }}
            pluginId="createAttachmentVariables"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="parse"
            method="setIn"
            params={{
              ordered: [
                { keyPath: '["licenseId"]' },
                {
                  value:
                    "{{formatStateLicenses.data[ri[0]].stateLicenses[ri[1]].id}}",
                },
              ],
            }}
            pluginId="createAttachmentVariables"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="parse"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="createOperationsBody"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </FileButton>
      </ListView>
      <Spacer id="spacer3" marginType="normal" />
    </ListView>
    <Container
      id="newListViewContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      loading="{{ GetStateLicenseConfig.isFetching || GetStateLicenseConfig.isFetching }}"
      margin="0"
      padding="0"
      showBody={true}
    >
      <View id="c4edf" viewKey="View 1">
        <ListViewBeta
          id="stateLicenseListViewNew"
          _primaryKeys="{{ item.id }}"
          data="{{ formatStateLicenses.data }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Container
            id="stateLicenseContainerNew"
            _direction="vertical"
            _gap="0px"
            _justify="center"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="12px"
            showBody={true}
            showHeader={true}
            style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
          >
            <Header>
              <Text
                id="stateHeader"
                margin="4px 8px 0"
                value="#### {{ item.state }}"
                verticalAlign="center"
              />
            </Header>
            <View id="ac46e" viewKey="View 1">
              <Container
                id="licenseByStateContainer"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                margin="0"
                padding="0"
                showBody={true}
              >
                <Header>
                  <Text
                    id="containerTitle15"
                    value="#### Container title"
                    verticalAlign="center"
                  />
                </Header>
                <View id="eded2" viewKey="View 1">
                  <ListViewBeta
                    id="licenseByStateView"
                    data="{{ item.stateLicenses }}"
                    heightType="auto"
                    itemWidth="200px"
                    margin="0"
                    maxHeight="100vh"
                    numColumns={3}
                    padding="0"
                  >
                    <Include src="./container4.rsx" />
                  </ListViewBeta>
                </View>
              </Container>
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
  </View>
</Container>
