<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="ae5701ed-39e0-4a07-a0ed-93ddd114db70"
>
  <RESTQuery
    id="query1"
    body="{{moment(search_dateRange.value.end).add(1, 'd').utc().format('YYYY-MM-DDTHH:mm:ssZ') }}"
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
    <Button id="button1" text="Button" />
    <TextInput id="textInput1" labelPosition="top" placeholder="Enter value" />
    <Button id="button2" text="Button" />
    <Button id="button3" text="Button" />
    <Button id="button4" text="Button" />
  </Frame>
</Screen>
