<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetOutput
    id="apiToken"
    description=""
    value="{{ api_login.data.token }}"
  />
  <Frame id="$main" padding="8px 12px" sticky={false} type="main">
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Navigation
        id="adminNavBar"
        disabled=""
        hidden={null}
        itemMode="static"
        maintainSpaceWhenHidden={null}
        margin="4px 8px"
        showInEditor={null}
        style={{
          ordered: [
            { dropdownBackground: "rgb(255, 255, 255)" },
            { color: null },
            { dropdownBorder: null },
            { highlightText: null },
          ],
        }}
      >
        <Option
          id="967c9"
          highlight={null}
          itemType="custom"
          key="9574f4b8-88af-483e-841e-f55da19ede75"
          label="Admin"
        />
        <Option
          id="43a0e"
          appTarget="0baecd34-e36d-11ec-9bcd-8be2c8dff257"
          highlight={null}
          itemType="app"
          label="⛓️ Account Setup"
          parentKey="9574f4b8-88af-483e-841e-f55da19ede75"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "0baecd34-e36d-11ec-9bcd-8be2c8dff257" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="994c4"
          appTarget="31a21d18-fc89-11ec-b165-671fcb63d9cd"
          itemType="app"
          label="🏷 Manage Sales Orders"
          parentKey="9574f4b8-88af-483e-841e-f55da19ede75"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "31a21d18-fc89-11ec-b165-671fcb63d9cd" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="00871"
          appTarget="ce9b1a34-d48d-11ed-8872-03eeac70499c"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="🏰 Account Management"
          parentKey="9574f4b8-88af-483e-841e-f55da19ede75"
        />
        <Option
          id="21af9"
          appTarget="64ca7698-2511-11ee-a9cb-e3739e79ff17"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="🔓 Bank Account Info"
          parentKey="9574f4b8-88af-483e-841e-f55da19ede75"
        />
        <Option
          id="b1440"
          highlight={null}
          itemType="custom"
          key="0a01e368-d7d6-4f37-bb62-2f8c6a9157d6"
          label="Instant Pay"
        />
        <Option
          id="96541"
          appTarget="f798d50a-b75d-11ec-853e-cf073ea05328"
          itemType="app"
          label="🤝 Manage Funding Terms"
          parentKey="0a01e368-d7d6-4f37-bb62-2f8c6a9157d6"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "f798d50a-b75d-11ec-853e-cf073ea05328" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="ea0f4"
          appTarget="958868d8-910c-11ed-8394-63c2e02ba4c9"
          highlight={null}
          itemType="app"
          label="📄 Manual Invoice Upload"
          parentKey="0a01e368-d7d6-4f37-bb62-2f8c6a9157d6"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "958868d8-910c-11ed-8394-63c2e02ba4c9" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="9cb5a"
          appTarget="570dccaa-ad73-11ed-ac07-9be103ca748b"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="🗓 Repayment Schedule"
          parentKey="0a01e368-d7d6-4f37-bb62-2f8c6a9157d6"
        />
        <Option
          id="87c95"
          appTarget="413bde2e-cf53-11ed-a4fc-3bea88b78c50"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="⌛️Manage Repayments"
          parentKey="0a01e368-d7d6-4f37-bb62-2f8c6a9157d6"
        />
        <Option
          id="ad716"
          appTarget="9446e328-ee90-11ed-ba48-3774882be9eb"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="📂 Customer Approval Requests"
          parentKey="0a01e368-d7d6-4f37-bb62-2f8c6a9157d6"
        />
        <Option
          id="6fecc"
          appTarget="fe035ef8-380b-11ee-8ada-b361b1f83101"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="🔧 Funding Tool"
          parentKey="0a01e368-d7d6-4f37-bb62-2f8c6a9157d6"
        />
        <Option
          id="59521"
          appTarget="4006bdbc-c4d2-11ec-a86f-cb5cf1771bc3"
          disabled={false}
          hidden={false}
          iconPosition="left"
          itemType="app"
          label="[DEPRECATED] Financed Invoices"
          parentKey="0a01e368-d7d6-4f37-bb62-2f8c6a9157d6"
        />
        <Option
          id="bd86d"
          highlight={null}
          itemType="custom"
          key="ba6ac793-0f61-494d-a5b0-9aa69a4df9e9"
          label="Cash Advance"
        />
        <Option
          id="2aea9"
          appTarget="070d2f5a-66c1-11ed-88ba-0fc7c7465647"
          highlight={null}
          itemType="app"
          label="📜 Terms"
          parentKey="ba6ac793-0f61-494d-a5b0-9aa69a4df9e9"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "070d2f5a-66c1-11ed-88ba-0fc7c7465647" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="d8afb"
          appTarget="90ce5196-3607-11ed-869d-5be39937731f"
          highlight={null}
          itemType="app"
          label="💰 Underwriting Data"
          parentKey="ba6ac793-0f61-494d-a5b0-9aa69a4df9e9"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "90ce5196-3607-11ed-869d-5be39937731f" },
                {
                  options: {
                    ordered: [
                      { queryParams: null },
                      { hashParams: null },
                      { newTab: false },
                    ],
                  },
                },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "4006bdbc-c4d2-11ec-a86f-cb5cf1771bc3" },
              {
                options: {
                  ordered: [
                    { queryParams: null },
                    { hashParams: null },
                    { newTab: false },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          targetId="32060"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Navigation>
      <AuthLogin
        id="login_button"
        _disclosedFields={{ array: [] }}
        authResourceName="fb17e787-54f7-4616-87f8-8c41992d7e01"
        authType="oauth2"
        hidden="{{ !!apiToken.value }}"
        label="Login"
      />
      <Module
        id="productionWarningText1"
        apiToken="{{apiToken.value}}"
        name="Production Warning Text"
        pageUuid="72208927-411b-4932-b2dc-986366890f43"
      />
      <Text
        id="logged_in_user_text"
        _defaultValue=""
        _disclosedFields={{ array: [] }}
        disableMarkdown={true}
        horizontalAlign="right"
        margin="4px 8px"
        value={
          '{{ api_login.data.siloEmail ? "Logged in as " + api_login.data.siloEmail : "Not Logged In" }}'
        }
        verticalAlign="center"
      />
      <Button
        id="logout_button"
        _disclosedFields={{ array: [] }}
        hidden="{{ !apiToken.value }}"
        margin="4px 8px"
        styleVariant="solid"
        text="Logout"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="logout_query"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </ModuleContainerWidget>
  </Frame>
</App>
