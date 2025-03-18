<Container
  id="wizardAnswersContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="wizardContainerTitle"
      marginType="normal"
      value="#### Advanced Discovery Results"
      verticalAlign="center"
    />
  </Header>
  <View id="dd3e1" viewKey="View 1">
    <EditableText
      id="requesterNameEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Application Requestor:"
      marginType="normal"
      placeholder="None entered"
      readOnly="true"
      textSize="default"
      value="{{ 
  GetAccountHome.data?.requestor 
    ? `${GetAccountHome.data.requestor.fullName}${GetAccountHome.data.requestor.title ? ', ' + GetAccountHome.data.requestor.title : ''}` 
    : null 
}}"
    />
    <Spacer id="discoverySpacer1" marginType="normal" />
    <EditableText
      id="accountSizeEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Account Size:"
      marginType="normal"
      placeholder="None entered"
      readOnly="true"
      textSize="default"
      value="{{_.startCase(GetAccountHome.data?.account?.size)}}"
    />
    <Spacer id="discoverySpacer2" marginType="normal" />
    <EditableText
      id="statesEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="States Currently Doing Business In: "
      marginType="normal"
      placeholder="None entered"
      readOnly="true"
      textSize="default"
      value="{{ statesDoingBusinessInString?.data || null }}"
    />
    <Select
      id="timeInBusinessSelect"
      emptyMessage="No options"
      itemMode="static"
      label="Time in Business:"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="None entered"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ GetAccountHome.data?.applicationCompany?.timeInBusiness }}"
    >
      <Option
        id="30ce5"
        disabled="true"
        label="< 1 year"
        value="Less_Than_One_year"
      />
      <Option
        id="8495e"
        disabled="true"
        label="1 - 2 years"
        value="One_Two_Years"
      />
      <Option
        id="07946"
        disabled="true"
        label="2 - 3 years"
        value="Two_Three_Years"
      />
      <Option
        id="b393a"
        disabled="true"
        hidden={false}
        label="3 -4 years"
        value="Three_Four_Years"
      />
      <Option
        id="a0007"
        disabled="true"
        hidden={false}
        label="4 - 5 years"
        value="Four_Five_Years"
      />
      <Option
        id="850b3"
        disabled="true"
        hidden={false}
        label="5 - 10 years"
        value="Five_Ten_Years"
      />
      <Option
        id="b80aa"
        disabled="true"
        hidden={false}
        label="> 10 years"
        value="More_Than_Ten_Years"
      />
    </Select>
    <EditableNumber
      id="numberOfInstallsEditableNumber"
      allowNull={true}
      currency="USD"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Number of Installs Last Year:"
      marginType="normal"
      placeholder="None entered"
      readOnly="true"
      showSeparators={true}
      showStepper={true}
      textSize="default"
      value="{{ GetAccountHome.data?.applicationCompany?.numberOfInstallsLastYear }}"
    />
    <Spacer id="discoverySpacer4" marginType="normal" />
    <EditableNumber
      id="volumePotentialEditableNumber"
      allowNull={true}
      currency="USD"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Volume Potential:"
      marginType="normal"
      placeholder="None entered"
      readOnly="true"
      showSeparators={true}
      showStepper={true}
      textSize="default"
      value="{{ GetAccountHome.data?.applicationCompany?.volumePotential }}"
    />
    <Spacer id="discoverySpacer5" marginType="normal" />
    <CheckboxGroup
      id="meetsInsuranceCheckbox"
      disabled="true"
      itemMode="static"
      label="Do they meet minimum insurance requirements?"
      marginType="normal"
      value="[{{  GetAccountHome.data?.insuranceRequirementsMet || null }}]"
    >
      <Option id="4348d" label="Yes" value="Yes" />
      <Option id="e7f11" label="No" value="No" />
    </CheckboxGroup>
    <Spacer id="discoverSpacer3" marginType="normal" />
    <Select
      id="numberOfReviewsSelect"
      emptyMessage="No options"
      itemMode="static"
      label="How many reviews do they have?"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="None entered"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ GetAccountHome.data?.applicationCompany?.numberOfReviews }}"
    >
      <Option id="30ce5" disabled="true" label="1 - 5" value="One_Five" />
      <Option id="8495e" disabled="true" label="6 - 10" value="Six_Ten" />
      <Option
        id="07946"
        disabled="true"
        label="11 - 20"
        value="Eleven_Twenty"
      />
      <Option
        id="bb94c"
        disabled="true"
        hidden={false}
        label="21 - 40"
        value="Twenty_One_Forty"
      />
      <Option
        id="a301e"
        disabled="true"
        hidden={false}
        label="41 - 100"
        value="Forty_One_Hundred"
      />
      <Option
        id="30614"
        disabled="true"
        hidden={false}
        label="> 100"
        value="One_Hundred_Plus"
      />
    </Select>
    <EditableText
      id="averageReviewScoreText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Average Review Score"
      marginType="normal"
      placeholder="None entered"
      readOnly="true"
      textSize="default"
      value="{{ GetAccountHome.data?.applicationCompany?.averageReviewScore }}"
    />
    <TextArea
      id="negativeReviewsTextArea"
      autoResize={true}
      label="What were the negative reviews about?"
      marginType="normal"
      minLines={2}
      placeholder="None entered"
      readOnly="true"
      value="{{ GetAccountHome.data?.applicationCompany?.negativeReviews }}"
    />
    <Spacer id="discoverySpacer8" marginType="normal" />
    <EditableNumber
      id="ohmRatingNumber"
      allowNull={true}
      currency="USD"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Ohm Rating (LTM)"
      marginType="normal"
      placeholder="None entered"
      readOnly="true"
      showSeparators={true}
      showStepper={true}
      textSize="default"
      value="{{ GetAccountHome.data?.applicationCompany?.ohmRatingLTM }}"
    />
  </View>
</Container>
