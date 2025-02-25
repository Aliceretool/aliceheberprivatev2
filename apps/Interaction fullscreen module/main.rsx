<App>
  <GlobalWidgetProp
    id="interactionWithEmail"
    description="Interaction of type Email"
    value={
      '{"id":"edfa0926-32c9-4c24-91fe-ca96bd1d58f6","statusId":"bab411f2-619b-41e4-a63c-af1ba52c2ea5","case":{"id":"03c1c561-b144-4dec-b1e6-7456827508b9","key":"AUT124000003","entity_id":"497ebef8-0cbd-49db-bcc7-4a1a4a57d513","beneficiary_id":"b063d774-6c4e-4f0d-81d3-5928476f0a38","hasGDPRConsent":true,"nature":null,"contactMotive":null,"beneficiaryLocation":"","context":"","regularPayment":false,"created_at":1729772463624,"countryOfOccurence":null,"region_id":null,"requesterRole":null,"travelStartDate":null,"travelEndDate":null,"travelType":null,"transportationType":null,"travelCompanionNumber":null,"travelCompany":null,"travelMultipleCountry":false,"travelWithPet":false,"travelNote":null,"eventStartDate":null,"eventEndDate":null,"eventDescription":null},"status":"attached","type":"Email","isAutomatic":true,"icon":"/icon:bold/mail-send-envelope-alternate","from":"onaidenko@code.store","to":"ea.codestore.dev@gmail.com","subject":"AUT124000003","timestamp":"22/11/2024 12h31","isImportant":false,"content":"Test\\r\\n-- \\r\\n\\r\\n[image: photo]\\r\\n\\r\\nOlena Naidenko\\r\\nQA, code.store\\r\\n\\r\\n[image: icon] code.store\\r\\n\\r\\n<https://www.youtube.com/@code.store.nocode/featured>\\r\\n<https://www.linkedin.com/in/olena-naidenko-a1800b177/>\\r\\n\\r\\n*\\"We get it done.\\" - code.store*"}'
    }
  />
  <GlobalWidgetProp id="open" defaultValue="false" />
  <Include src="./src/InteractionFullScreen_Modal.rsx" />
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
      interactionWithEmail={
        '{"id":"edfa0926-32c9-4c24-91fe-ca96bd1d58f6","statusId":"bab411f2-619b-41e4-a63c-af1ba52c2ea5","case":{"id":"03c1c561-b144-4dec-b1e6-7456827508b9","key":"AUT124000003","entity_id":"497ebef8-0cbd-49db-bcc7-4a1a4a57d513","beneficiary_id":"b063d774-6c4e-4f0d-81d3-5928476f0a38","hasGDPRConsent":true,"nature":null,"contactMotive":null,"beneficiaryLocation":"","context":"","regularPayment":false,"created_at":1729772463624,"countryOfOccurence":null,"region_id":null,"requesterRole":null,"travelStartDate":null,"travelEndDate":null,"travelType":null,"transportationType":null,"travelCompanionNumber":null,"travelCompany":null,"travelMultipleCountry":false,"travelWithPet":false,"travelNote":null,"eventStartDate":null,"eventEndDate":null,"eventDescription":null},"status":"attached","type":"Email","isAutomatic":true,"icon":"/icon:bold/mail-send-envelope-alternate","from":"onaidenko@code.store","to":"ea.codestore.dev@gmail.com","subject":"AUT124000003","timestamp":"22/11/2024 12h31","isImportant":false,"content":"Test\\r\\n-- \\r\\n\\r\\n[image: photo]\\r\\n\\r\\nOlena Naidenko\\r\\nQA, code.store\\r\\n\\r\\n[image: icon] code.store\\r\\n\\r\\n<https://www.youtube.com/@code.store.nocode/featured>\\r\\n<https://www.linkedin.com/in/olena-naidenko-a1800b177/>\\r\\n\\r\\n*\\"We get it done.\\" - code.store*"}'
      }
      isGlobalWidgetContainer={true}
      margin="0"
    >
      <TextInput
        id="textInput2"
        label="CC"
        labelPosition="top"
        placeholder="Enter value"
        readOnly="true"
      />
      <TextInput
        id="textInput3"
        label="Bcc"
        labelPosition="top"
        placeholder="Enter value"
        readOnly="true"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
