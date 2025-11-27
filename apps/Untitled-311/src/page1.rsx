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
    body="{{moment(search_dateRange.value.end)}}"
    bodyType="raw"
    resourceDisplayName="httpbin"
    resourceName="4e35e578-e111-4459-9b7b-b844051dc8dd"
    resourceTypeOverride=""
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
  </Frame>
</Screen>
