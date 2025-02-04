<Container
  id="SendEmailSMS_Container"
  _direction="vertical"
  _gap="0px"
  _type="stack"
  currentViewKey="{{ type.value }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="12px"
  showBody={true}
  showBorder={false}
>
  <View id="6c1d0" viewKey="email">
    <TextInput
      id="EmailSubject_Input"
      hidden={'{{ type.value !== "email" }}'}
      label="Subject"
      labelPosition="top"
      placeholder="Enter subject of email"
    />
    <TextInput
      id="CcInput"
      label="Cc"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="BccInput"
      label="Bcc"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Divider
      id="divider1"
      margin="8px 0px"
      style={{ ordered: [{ color: "surfacePrimaryBorder" }] }}
    />
    <TextEditor id="EmailBody_Input" value="" />
  </View>
  <View id="14756" viewKey="sms">
    <TextArea
      id="SMSBody_Input"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="6"
      placeholder="Enter value"
    />
  </View>
</Container>
