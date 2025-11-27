<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="10f47468-effe-4707-b79a-173dc0d55339"
>
  <RESTQuery
    id="query1"
    body="{{moment(search_dateRange.value.end).add(1,'d').utc().format('YYYY-MM-DDHH:mm:ssZ')}}"
    bodyType="raw"
    resourceDisplayName="pipedream test that returns env-production"
    resourceName="b06eec6c-76ad-4d60-8465-ad1dbea10712"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Button id="button1" text="Button" />
    <DateRange
      id="search_dateRange"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="bold/interface-calendar-remove"
      labelPosition="top"
      startPlaceholder="Start date"
      textBetween="-"
      value={{ start: "", end: "" }}
    />
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
  </Frame>
</Screen>
