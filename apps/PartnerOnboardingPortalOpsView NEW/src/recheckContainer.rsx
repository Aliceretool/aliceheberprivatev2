<Container
  id="recheckContainer"
  _align="center"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="recheckContainerTitle"
      value="#### Recheck Search"
      verticalAlign="center"
    />
  </Header>
  <View id="6fc83" viewKey="View 1">
    <Spacer id="recheckSpacer" marginType="normal" />
    <Date
      id="recheckCompanySearchedDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Recheck Company Searched"
      labelPosition="top"
      value="{{ GetRecheckReviews.data.length !== 0 && GetRecheckReviews.data[0]?.companySearched ? GetRecheckReviews.data[0]?.companySearched : null }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...recheckReviewUpdates.value, \"companySearched\": self.value == '' ? null : self.value } }}",
            },
          ],
        }}
        pluginId="recheckReviewUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Select
      id="recheckResultFoundSelect"
      emptyMessage="No options"
      itemMode="static"
      label="Recheck Result Found"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      value="{{ GetRecheckReviews.data.length !== 0 && GetRecheckReviews.data[0]?.resultFound ? GetRecheckReviews.data[0]?.resultFound: null }}"
    >
      <Option id="1e7d7" value="Yes" />
      <Option id="5b6df" value="No" />
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...recheckReviewUpdates.value, \"resultFound\": self.value == '' ? null : self.value } }}",
            },
          ],
        }}
        pluginId="recheckReviewUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="recheckPrincipalsSearchedDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Recheck Principal(s) Searched"
      labelPosition="top"
      value="{{ GetRecheckReviews.data.length !== 0 && GetRecheckReviews.data[0]?.principalsSearched ? GetRecheckReviews.data[0]?.principalsSearched : null }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...recheckReviewUpdates.value, \"principalsSearched\": self.value == '' ? null : self.value } }}",
            },
          ],
        }}
        pluginId="recheckReviewUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="recheckSpacer2" />
    <TextArea
      id="recheckNotesTextarea"
      autoResize={true}
      label="Recheck Notes"
      labelPosition="top"
      minLines="4"
      placeholder="Notes go here"
      value="{{ GetRecheckReviews.data.length !== 0 && GetRecheckReviews.data[0]?.notes ? GetRecheckReviews.data[0]?.notes: null }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...recheckReviewUpdates.value, \"notes\": self.value == '' ? null : self.value } }}",
            },
          ],
        }}
        pluginId="recheckReviewUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Spacer id="recheckSpacer3" />
  </View>
</Container>
