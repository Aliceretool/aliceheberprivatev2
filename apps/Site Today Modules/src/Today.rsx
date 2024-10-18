<Screen
  id="Today"
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <Folder id="visitors">
    <RESTQuery
      id="site_today"
      enableTransformer={true}
      headers="[]"
      isMultiplayerEdited={false}
      query="sites/172/today"
      queryRefreshTime="300000"
      resourceName="e9c85ed7-3bb1-4427-9698-768f0f704b1c"
      transformer="function transformVisitorData(data) {
  return data.flatMap(group => group.visitors || []).map(visitor => ({
    id: visitor.id,
    group_id: visitor.group_id,
    returning_visitor_id: visitor.returning_visitor_id,
    name: visitor.name,
    photo_url: visitor.photo_url,
    badge_url: visitor.badge_url,
    status: visitor.status,
    in_datetime: visitor.in_datetime,
    out_datetime: visitor.out_datetime,
    expected_datetime: visitor.expected_datetime,
    additional_fields: visitor.additional_fields,
    personal_fields: visitor.personal_fields,
    rejected_sign_in: visitor.metadata?.rejected_sign_in
  }));
}

return transformVisitorData(data);"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="users_perGroupStaff"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="users_perGroupVisitors"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="users_perGroupContractors"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <JavascriptQuery
      id="users_perGroupStaff"
      notificationDuration={4.5}
      query={include("../lib/users_perGroupStaff.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="users_perGroupVisitors"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/users_perGroupVisitors.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="users_perGroupContractors"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/users_perGroupContractors.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="groups"
      headers={'[{"key":"","value":""}]'}
      query="groups?"
      resourceName="e9c85ed7-3bb1-4427-9698-768f0f704b1c"
    />
    <RESTQuery
      id="staff"
      bodyType="json"
      enableTransformer={true}
      headers={
        '[{"key":"groups","value":" {{ select1.selectedItem.id }}"},{"key":"members","value":"members"}]'
      }
      isMultiplayerEdited={false}
      query="groups/{{ select1.selectedItem.id }}/members"
      resourceName="e9c85ed7-3bb1-4427-9698-768f0f704b1c"
      runWhenModelUpdates={false}
      transformer="const threeMonthsAgo = moment().subtract(3, 'months').toISOString();

const flattenData = (x) => {
    let newData = {};

    // Examples of top-level stuff in JSON
    newData.id = x.id;
    newData.groupID = x.group_id;
    newData.photo_url = x.photo_url;
    newData.last_in = x.last_in;
    newData.last_out = x.last_out;
    newData.status = x.status;

    // Check if personal_fields exists before accessing it
    if (x.personal_fields) {
        newData.name = x.personal_fields.name;
        newData.email = x.personal_fields.email;
    } else {
        newData.name = null;
        newData.email = null;
    }

    // Assuming x.data is an array that you want to filter
    newData.filteredData = (x.data || []).filter(record => {
        // Check if last_in and last_out are not null before comparison
        const lastInCheck = record.last_in != null ? moment(record.last_in).isAfter(threeMonthsAgo) : true;
        const lastOutCheck = record.last_out != null ? moment(record.last_out).isAfter(threeMonthsAgo) : true;

        return lastInCheck && lastOutCheck;
    });
    
    return newData;
}

const newData = data.data.map(a => flattenData(a));

return newData;
"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="query6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Include src="./modalFrame1.rsx" />
  <Frame id="$main" enableFullBleed={false} padding="8px 12px" type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Include src="./tabbedContainer1.rsx" />
      <Text
        id="modalTitle1"
        value={
          '#### {{   table4.selectedSourceRow.additional_fields.Visiting ==  null ? table4.selectedSourceRow.name : "Host: " + table4.selectedSourceRow.additional_fields.Visiting }}'
        }
        verticalAlign="center"
      />
      <Text
        id="modalTitle2"
        value=" Time in: {{ moment(table4.selectedSourceRow.in_datetime).format('DD-MM-YYYY hh:mma z(Z)')}} "
        verticalAlign="center"
      />
      <TagsWidget2
        id="tags1"
        allowWrap={true}
        data={'["Foo", "Bar", "Baz"]'}
        horizontalAlign="center"
        values="{{ _.startCase(table4.selectedSourceRow.status) }}"
      />
      <Button
        id="modalCloseButton1"
        ariaLabel="Close"
        horizontalAlign="right"
        iconBefore="bold/interface-delete-1"
        style={{ ordered: [{ border: "transparent" }] }}
        styleVariant="outline"
      >
        <Event
          event="click"
          method="setHidden"
          params={{ ordered: [{ hidden: true }] }}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Image
        id="image1"
        fit="contain"
        heightType="fixed"
        horizontalAlign="center"
        src="{{ table4.selectedSourceRow.badge_url == null ? table4.selectedSourceRow.photo_url : table4.selectedSourceRow.badge_url }}"
      />
      <Text
        id="modalTitle3"
        hidden="{{ table4.selectedSourceRow.out_datetime == null}}"
        value="Time out: {{ moment(table4.selectedSourceRow.out_datetime).format('DD-MM-YYYY hh:mma z(Z)')}} "
        verticalAlign="center"
      />
      <Select
        id="select1"
        emptyMessage="No options"
        hidden="true"
        itemMode="static"
        label=""
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
      >
        <Option id="6c7fc" label="Signed Out" value="signed_out" />
        <Option id="e23f5" label="Signed In" value="signed_in" />
      </Select>
    </ModuleContainerWidget>
  </Frame>
</Screen>
