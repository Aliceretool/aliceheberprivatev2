<Container
  id="onlineReviewsContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle5"
      marginType="normal"
      value="#### Online Reviews"
      verticalAlign="center"
    />
  </Header>
  <View id="f8495" viewKey="View 1">
    <Spacer id="onlineReviewsSpacer1" marginType="normal" />
    <Select
      id="reputationSummarySelect"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      emptyMessage="No options"
      itemMode="static"
      label="Overall Reputation Summary"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"overallReputationSummary\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.overallReputationSummary }}"
    >
      <Option
        id="6fbcd"
        label="No Review Anywhere"
        value="No_Review_Anywhere"
      />
      <Option id="95fa4" label="Limited" value="Limited" />
      <Option id="618b5" label="Very Negative" value="Very_Negative" />
      <Option
        id="09bb4"
        disabled={false}
        hidden={false}
        label="Somewhat Negative"
        value="Somewhat_Negative"
      />
      <Option
        id="84056"
        disabled={false}
        hidden={false}
        label="Both"
        value="Both"
      />
      <Option
        id="07ab5"
        disabled={false}
        hidden={false}
        label="Somewhat Positive"
        value="Somewhat_Positive"
      />
      <Option
        id="2a8dd"
        disabled={false}
        hidden={false}
        label="Very Positive"
        value="Very_Positive"
      />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "overallReputationSummary", GetInstallerAppCommCredit.data?.overallReputationSummary, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="moreThan5ReviewsSelect"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      emptyMessage="No options"
      itemMode="static"
      label="More than 5 online reviews?"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"hasMoreThanFiveOnlineReviews\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.hasMoreThanFiveOnlineReviews }}"
    >
      <Option id="6fbcd" label="Yes" value="Yes" />
      <Option id="95fa4" label="No" value="No" />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "hasMoreThanFiveOnlineReviews", GetInstallerAppCommCredit.data?.hasMoreThanFiveOnlineReviews, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="googleTextInput"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Google"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"googleReviews\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.googleReviews }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: '// passing "self.value || null" to account for empty string when user deletes all the comments\nsetStateForUpdate(installerApplicationUpdates, "googleReviews", GetInstallerAppCommCredit.data?.googleReviews, self.value || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="otherReviewsTextInput"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Other Reviews"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"otherReviews\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.otherReviews }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: '// passing "self.value || null" to account for empty string when user deletes all the comments\nsetStateForUpdate(installerApplicationUpdates, "otherReviews", GetInstallerAppCommCredit.data?.otherReviews, self.value || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Spacer id="onlineReviewsSpacer2" marginType="normal" />
    <TextInput
      id="yelpTextInput"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Yelp"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"yelpReviews\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.yelpReviews }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: '// passing "self.value || null" to account for empty string when user deletes all the comments\nsetStateForUpdate(installerApplicationUpdates, "yelpReviews", GetInstallerAppCommCredit.data?.yelpReviews, self.value || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="bbbTextInput"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="BBB"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"BBBReviews\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.BBBReviews }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: '// passing "self.value || null" to account for empty string when user deletes all the comments\nsetStateForUpdate(installerApplicationUpdates, "BBBReviews", GetInstallerAppCommCredit.data?.BBBReviews, self.value || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="solarReviewsTextInput"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Solar Reviews"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"solarReviews\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.solarReviews }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: '// passing "self.value || null" to account for empty string when user deletes all the comments\nsetStateForUpdate(installerApplicationUpdates, "solarReviews", GetInstallerAppCommCredit.data?.solarReviews, self.value || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Date
      id="onlineReviewsCompleteDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="Enter Date"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Online Reviews Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"onlineReviewsComplete\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.onlineReviewsComplete }}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: '// passing "self.value || null" to account for empty string when user deletes all the comments\nsetStateForUpdate(installerApplicationUpdates, "onlineReviewsComplete", GetInstallerAppCommCredit.data?.onlineReviewsComplete, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="onlineReviewsSpacer3" marginType="normal" />
  </View>
</Container>
