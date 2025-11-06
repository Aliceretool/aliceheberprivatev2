<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="eab35b04-2e3f-4f45-b70d-4fab3fc0d1d1"
>
  <WorkflowRun
    id="triggerWorkflow"
    isMultiplayerEdited={false}
    resourceName="WorkflowRun"
    workflowId="267a0233-b21a-47c1-981d-475b5ea1c468"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Button id="button1" text="Press">
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="triggerWorkflow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      value="{{ triggerWorkflow.data.response }}"
      verticalAlign="center"
    />
  </Frame>
</Screen>
