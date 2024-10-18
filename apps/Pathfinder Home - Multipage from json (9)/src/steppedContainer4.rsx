<Container
  id="steppedContainer4"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  disabledByIndex={[]}
  enableFullBleed={true}
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  heightType="fixed"
  hidden="false"
  hiddenByIndex={[]}
  hoistFetching={true}
  iconByIndex={[]}
  iconPositionByIndex={[]}
  labels={[]}
  marginType="normal"
  overflowType="hidden"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showBorder={false}
  showHeader={true}
  tooltipByIndex={[]}
  transition="slide"
  viewKeys={[]}
  views={[]}
>
  <Header>
    <Steps
      id="steps4"
      captionByIndex={[]}
      data={[]}
      hiddenByIndex={[]}
      horizontalAlign="center"
      indicateCompletedSteps={true}
      itemMode="static"
      labels={[]}
      marginType="normal"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer4"
      tooltipByIndex={[]}
      value="{{ self.values[0] }}"
      values={[]}
    >
      <Option id="cf585" value="Step 1" />
      <Option id="ee988" value="Step 2" />
      <Option id="ec4d1" value="Step 3" />
    </Steps>
  </Header>
  <View id="fbb8e" viewKey="Contact Details">
    <Form
      id="form37"
      data={{ ordered: [] }}
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      heightType="fixed"
      initialData="{{ table33.selectedRow }}"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showBorder={false}
      showFooter={true}
    >
      <Header>
        <Text
          id="formTitle35"
          marginType="normal"
          value="### New contact"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="textInput60"
          formDataKey="name"
          iconBefore="bold/shopping-business-card"
          label="Name"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
        />
        <Multiselect
          id="select14"
          allowCustomValue={true}
          emptyMessage="No options"
          iconBefore="bold/interface-arrows-right-circle-2-alternate"
          itemMode="static"
          label="Title Mr/Mrs/Dr"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          wrapTags={true}
        >
          <Option id="dc64f" value="Mr" />
          <Option id="d9f18" value="Mrs" />
          <Option id="f0f9d" value="Dr" />
          <Option id="4ddae" disabled={false} hidden={false} value="Miss" />
        </Multiselect>
        <Select
          id="select11"
          allowCustomValue={true}
          emptyMessage="No options"
          iconBefore="bold/interface-user-check"
          itemMode="static"
          label="Position"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="dc64f" value="Option 1" />
          <Option id="d9f18" value="Option 2" />
          <Option id="f0f9d" value="Option 3" />
        </Select>
        <Select
          id="select10"
          allowCustomValue={true}
          emptyMessage="No options"
          iconBefore="bold/shopping-store-factory-building"
          itemMode="static"
          label="Department"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="dc64f" value="Sales" />
          <Option id="d9f18" value="Marketing" />
          <Option id="f0f9d" value="Administration" />
          <Option
            id="3fc0b"
            disabled={false}
            hidden={false}
            value="Quality Assurance"
          />
          <Option
            id="786ea"
            disabled={false}
            hidden={false}
            value="Quality Control"
          />
        </Select>
        <TextInput
          id="textInput58"
          formDataKey="email"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          labelPosition="top"
          marginType="normal"
          patternType="email"
          placeholder="you@example.com"
          required={true}
        />
        <Multiselect
          id="select13"
          allowCustomValue={true}
          emptyMessage="No options"
          iconBefore="bold/interface-arrows-right-circle-2-alternate"
          itemMode="static"
          label="Preferred contact method"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          wrapTags={true}
        >
          <Option id="dc64f" value="Email" />
          <Option id="d9f18" value="SMS" />
          <Option id="f0f9d" value="Mail" />
          <Option
            id="4ddae"
            disabled={false}
            hidden={false}
            value="Do not contact"
          />
        </Multiselect>
        <TextInput
          id="textInput59"
          formDataKey="phone_no"
          iconBefore="bold/phone-telephone-ringing"
          label="Phone no"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput44"
          iconBefore="bold/phone-mobile-phone"
          label="Mobile"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Multiselect
          id="select12"
          allowCustomValue={true}
          emptyMessage="No options"
          iconBefore="bold/interface-arrows-right-circle-2-alternate"
          itemMode="static"
          label="Source of contact"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          wrapTags={true}
        >
          <Option id="dc64f" value="CPHI" />
          <Option id="d9f18" value="Email Campiagn" />
          <Option id="f0f9d" value="Advertisment" />
          <Option
            id="4ddae"
            disabled={false}
            hidden={false}
            value="Web Search"
          />
        </Multiselect>
        <TextArea
          id="textArea30"
          autoResize={true}
          formDataKey="notes"
          label="Notes"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          placeholder="Enter value"
        />
      </Body>
    </Form>
  </View>
  <View id="c74ce" viewKey="Company Details">
    <Form
      id="form38"
      data={{ ordered: [] }}
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hidden=""
      initialData="{{ getclients }}"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="formTitle36"
          marginType="normal"
          value="### New contact"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Switch
          id="switch4"
          disabled="false"
          label="New Client ?"
          labelPosition="left"
          marginType="normal"
        >
          <Event
            event="true"
            method="setHidden"
            params={{ ordered: [] }}
            pluginId="select9"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="true"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="textInput65"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="false"
            method="setHidden"
            params={{ ordered: [] }}
            pluginId="textInput65"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="false"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="select9"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="true"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="select8"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="true"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textArea31"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="true"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput64"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="true"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput61"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="true"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput62"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="true"
            method="clearValue"
            params={{ ordered: [] }}
            pluginId="textInput63"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Switch>
        <Select
          id="select8"
          captionByIndex=""
          colorByIndex=""
          data=""
          deprecatedLabels={[]}
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex=""
          formDataKey="type"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Type"
          labelPosition="top"
          labels=""
          marginType="normal"
          overlayMaxHeight={375}
          showClear={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{select9.selectedItem.type}}"
          values=""
        >
          <Option id="ebe6e" disabled={false} hidden={false} value="Buyer" />
          <Option id="88847" disabled={false} hidden={false} value="Supplier" />
        </Select>
        <TextInput
          id="textInput65"
          hidden="{{ getuserpreviousemails }}"
          label="Company name"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
        />
        <TextInput
          id="textInput61"
          formDataKey="company_contact"
          label="Company contact"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          showClear={true}
          value="{{select9.selectedItem.company_contact}}"
        />
        <Select
          id="select9"
          captionByIndex="{{ item.company_email }}"
          colorByIndex=""
          data="{{ getclients.data }}"
          deprecatedLabels={[]}
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex="{{item.type}}"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Company name"
          labelPosition="top"
          labels="{{ item.company_name }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value=""
          values="{{ item.id }}"
        />
        <TextInput
          id="textInput64"
          formDataKey="company_phone"
          label="Company phone"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          showClear={true}
          style={{ ordered: [] }}
          value="{{select9.selectedItem.company_phone}}"
        />
        <TextInput
          id="textInput62"
          formDataKey="company_email"
          iconBefore="bold/mail-send-envelope"
          label="Company email"
          labelPosition="top"
          marginType="normal"
          patternType="email"
          placeholder="you@example.com"
          showClear={true}
          value="{{select9.selectedItem.company_email}}"
        />
        <TextInput
          id="textInput63"
          formDataKey="company_website"
          label="Company website"
          labelPosition="top"
          marginType="normal"
          patternType="url"
          placeholder="exelcis.com"
          showClear={true}
          textBefore="https://"
          value="{{select9.selectedItem.company_website}}"
        />
        <TextArea
          id="textArea31"
          autoResize={true}
          formDataKey="company_address"
          label="Company address"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          placeholder="Enter value"
          value="{{select9.selectedItem.company_address}}"
        >
          <Event
            event="blur"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="query24"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </TextArea>
        <Map
          id="mapboxMap1"
          geoJson=""
          latitude="{{ lat.value }}"
          longitude="{{ lng.value}}"
          margin="4px 8px"
          points="{{ [{longitude: lng.value , latitude:lat.value}] }}"
          showCurrentLngLat={true}
          zoom="18"
        />
      </Body>
    </Form>
  </View>
  <View id="cd532" viewKey="Welcome Letter">
    <Form
      id="form39"
      data={{ ordered: [] }}
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
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle37"
          marginType="normal"
          value="#### Email {{table33.selectedRow.name}}"
          verticalAlign="center"
        />
        <Button
          id="button8"
          iconAfter="bold/interface-edit-write-1"
          style={{ ordered: [{ background: "secondary" }] }}
          text="AI Generate"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="welcome_email_ai"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <Body>
        <TextInput
          id="email3"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          marginType="normal"
          patternType="email"
          placeholder="you@example.com"
          value="{{textInput58.value}}"
        />
        <TextInput
          id="textInput66"
          label="Subject"
          marginType="normal"
          placeholder="Enter value"
          value="A personal Welcome to Pharmacare Premium"
        />
        <TextEditor
          id="richTextEditor3"
          value="Dear {{textInput60.value}},


</br></br></br></br></br>
Respectfully,</br>
{{current_user.fullName}}</br>
Evolve Resources

"
        />
        <FileDropzone
          id="fileDropzone3"
          accept={[]}
          appendNewSelection={true}
          files={[]}
          iconBefore="bold/programming-browser-search"
          label=""
          labelPosition="top"
          marginType="normal"
          parsedValue={[]}
          placeholder="Select or drag and drop"
          selectionType="multiple"
          value={[]}
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendemail"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="update_email_table"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setValue"
        params={{ ordered: [{ value: "0" }] }}
        pluginId="variable1"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "0" }] }}
        pluginId="steppedContainer4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <Footer>
    <Button
      id="prevButton4"
      disabled="{{ steppedContainer4.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      marginType="normal"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        event="click"
        method="showPreviousVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton4"
      disabled="{{ steppedContainer4.currentViewIndex + 1 === steppedContainer4.viewKeys.length }}"
      iconAfter="bold/interface-arrows-right-alternate"
      marginType="normal"
      text="Next"
    >
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
