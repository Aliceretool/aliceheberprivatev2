<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="6b87f0c3-497a-4721-9491-d1790d573fb9"
>
  <WorkflowRun
    id="query1"
    notificationDuration={4.5}
    resourceName="WorkflowRun"
    showSuccessToaster={false}
    workflowId="4cbb620d-766e-402e-ae52-28cd0462600f"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Button id="button3" text="Button" />
    <Button id="button1" text="trigger wf">
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="query1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="button2" text="Button" />
    <JSONEditor id="jsonEditor1" value="{{ query1.data }}" />
  </Frame>
</Screen>
