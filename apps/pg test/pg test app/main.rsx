<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <JSONEditor id="jsonEditor1" value="{{ query1.data }}" />
    <JSONEditor id="jsonEditor2" value="{{ query2.data }}" />
    <JSONEditor id="jsonEditor3" value="{{ query3.data }}" />
  </Frame>
</App>
