<App>
  <Include src="./functions.rsx" />
  <UrlFragments
    id="$urlFragments"
    value={{ ordered: [{ country: "{{ segmentedControl1.value }}" }] }}
  />
  <GlobalWidgetOutput id="Country" value="{{segmentedControl1.value}}" />
  <Include src="./header.rsx" />
  <Frame
    id="$main"
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Navigation
        id="navigation1"
        disabled=""
        hidden={null}
        itemMode="static"
        maintainSpaceWhenHidden={null}
        marginType="normal"
        showInEditor={null}
        src="https://cdn.cosmicjs.com/7e0229a0-56d0-11ec-88b1-5377807b2a13-FINNLogoBlackRGB.png"
        style={{
          ordered: [
            { highlightText: "primary" },
            { highlightBackground: "rgba(242, 246, 249, 0)" },
            { color: "#262626" },
            { dropdownBorderRadius: "3px" },
            { dropdownHoverText: "surfaceSecondary" },
            { dropdownHoverBackground: "rgba(59, 145, 219, 0.42)" },
            { dropdownBorder: null },
            { dropdownText: "surfaceSecondary" },
            { dropdownBackground: "rgba(4, 4, 4, 0.7)" },
          ],
        }}
      >
        <Option
          id="9589d"
          itemType="custom"
          key="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
          label="Purchasing"
        />
        <Option
          id="05b4b"
          appTarget="585010ee-9b19-11ed-b544-df58cbd4615d"
          icon="bold/interface-hierarchy-2"
          iconPosition="left"
          itemType="custom"
          label="Partners"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        >
          <Event
            id="0715ebd3"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "585010ee-9b19-11ed-b544-df58cbd4615d" },
                {
                  options: {
                    ordered: [
                      {
                        queryParams: [
                          {
                            ordered: [
                              { key: "country" },
                              { value: "{{segmentedControl1.value}}" },
                            ],
                          },
                        ],
                      },
                      {
                        hashParams: [
                          {
                            ordered: [{ key: "tab" }, { value: "Purchasing" }],
                          },
                        ],
                      },
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
          id="aef2c"
          appTarget="e5eb9074-701d-11ef-8d8d-abc15c54ba72"
          disabled={false}
          hidden={false}
          icon="bold/money-graph"
          iconPosition="left"
          itemType="app"
          label="Volume Planning"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="ec618"
          appTarget="49db1afa-8256-11f0-b970-ff1c55b4db21"
          disabled={false}
          hidden={false}
          icon="bold/interface-arrows-diagonal"
          iconPosition="left"
          itemType="app"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="dab90"
          appTarget="36fadcea-2f3b-11f0-874e-974059c5168a"
          disabled={false}
          hidden={false}
          icon="bold/travel-transportation-car"
          iconPosition="left"
          itemType="app"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="bcb80"
          appTarget="0e8589dc-238a-11ed-b908-438e0770309e"
          icon="bold/interface-setting-cog"
          iconPosition="left"
          itemType="app"
          label="Configuration"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        >
          <Event
            id="f5b440b2"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "0e8589dc-238a-11ed-b908-438e0770309e" },
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
          id="86a68"
          appTarget="b9b6cf7a-2775-11ed-88e3-23625276b848"
          icon="bold/money-cash-search-dollar"
          iconPosition="left"
          itemType="app"
          label="Pricing"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        >
          <Event
            id="f2146852"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "b9b6cf7a-2775-11ed-88e3-23625276b848" },
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
          id="c96c1"
          appTarget="14b8f908-81d4-11ed-a579-770104eaf64c"
          hidden="{{ segmentedControl1.value =='GER' ? (false) : (true)}}"
          icon="bold/mail-send-email-attachment-document"
          iconPosition="left"
          itemType="app"
          label="Invoice Approval"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        >
          <Event
            id="2b635ac2"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "14b8f908-81d4-11ed-a579-770104eaf64c" },
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
          id="c4723"
          appTarget="becd7c06-eb52-11ed-a5c5-f7082001c703"
          disabled={false}
          hidden="{{ segmentedControl1.value =='GER' ? (true) : (false)}}"
          icon="bold/image-picture-gallery"
          iconPosition="left"
          itemType="app"
          label="Images"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="f615a"
          appTarget="87b49684-2d5d-11ef-9e69-43b58144755a"
          disabled={false}
          hidden={false}
          icon="bold/money-cash-bag-dollar"
          iconPosition="left"
          itemType="app"
          label="Financing Deal Management"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="4efb1"
          appTarget="0185203e-01e4-11ed-81d3-03d779b37792"
          icon="bold/money-bank"
          iconPosition="left"
          itemType="app"
          label="Finance Information"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        >
          <Event
            id="00d19ae4"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "0185203e-01e4-11ed-81d3-03d779b37792" },
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
          id="1ca11"
          appTarget="80269dec-a625-11ed-97ba-975f482ec246"
          icon="bold/interface-calendar-date-one"
          iconPosition="left"
          itemType="app"
          label="Arrival Dates"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        >
          <Event
            id="91cc1508"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "80269dec-a625-11ed-97ba-975f482ec246" },
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
          id="c14d0"
          appTarget="0e7189da-bc1f-11ee-98b6-67d9eea3cb35"
          disabled={false}
          hidden={false}
          icon="bold/entertainment-control-button-next-alternate"
          iconPosition="left"
          itemType="app"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="8d1c8"
          appTarget="bbe5bebc-b938-11ef-b2f5-b7549159f127"
          disabled={false}
          hidden={false}
          icon="bold/interface-search"
          iconPosition="left"
          itemType="app"
          label="Schwacke Explore"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="93ff9"
          appTarget="3dcfd8b2-a1e8-11ef-8c39-4f86fbe7a7d5"
          disabled={false}
          hidden={false}
          icon="bold/ecology-science-test-tube"
          iconPosition="left"
          itemType="app"
          label="Data Tests & Alerts"
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="df489"
          appTarget="05bbf340-11ea-11ef-9590-03cab3896ba7"
          disabled={false}
          hidden={false}
          icon="bold/interface-search"
          iconPosition="left"
          itemType="app"
          label="Compare NPU "
          parentKey="a9b48c34-059c-4ade-ad85-65ea4bd797f3"
        />
        <Option
          id="bd192"
          itemType="custom"
          key="4eb910b3-cd05-4440-82fe-1405afc3aa6c"
          label="Remarketing"
        />
        <Option
          id="8ff0c"
          appTarget="0ee23252-c938-11f0-91f2-c3f417b5eb79"
          icon="bold/shopping-cart-3-alternate"
          iconPosition="left"
          itemType="app"
          label="Sales & Bids"
          parentKey="4eb910b3-cd05-4440-82fe-1405afc3aa6c"
        >
          <Event
            id="a1bd40b5"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "3b6ed946-6f19-11ed-b793-1f2a7a5fbb6f" },
                {
                  options: {
                    ordered: [
                      {
                        queryParams: [
                          {
                            ordered: [
                              { key: "country" },
                              { value: "{{segmentedControl1.value}}" },
                            ],
                          },
                        ],
                      },
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
          id="45069"
          appTarget="585010ee-9b19-11ed-b544-df58cbd4615d"
          icon="bold/interface-hierarchy-2"
          iconPosition="left"
          itemType="custom"
          label="Partners & Orders"
          parentKey="4eb910b3-cd05-4440-82fe-1405afc3aa6c"
        >
          <Event
            id="3db25d19"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "3bd8f908-bfa6-11f0-87ef-dfba90e18fb2" },
                {
                  options: {
                    ordered: [
                      {
                        queryParams: [
                          {
                            ordered: [
                              { key: "country" },
                              { value: "{{segmentedControl1.value}}" },
                            ],
                          },
                        ],
                      },
                      {
                        hashParams: [
                          {
                            ordered: [{ key: "tab" }, { value: "Remarketing" }],
                          },
                        ],
                      },
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
          id="24530"
          appTarget="c0804304-67c8-11f0-8759-b704e6454f20"
          disabled={false}
          hidden={false}
          icon="bold/shopping-bag-hand-bag-2-alternate"
          iconPosition="left"
          itemType="app"
          label="RaaS Supply"
          parentKey="4eb910b3-cd05-4440-82fe-1405afc3aa6c"
        />
        <Option
          id="374eb"
          appTarget="a3a007c2-8c60-11ef-b38e-ab40db22d7ed"
          disabled={false}
          hidden={false}
          icon="bold/interface-id-voice-2"
          iconPosition="left"
          itemType="app"
          label="KYC"
          parentKey="4eb910b3-cd05-4440-82fe-1405afc3aa6c"
        />
        <Option
          id="b1e1e"
          appTarget="7c64e7ac-f791-11f0-b8fd-6bd0830d8057"
          hidden="{{ segmentedControl1.value =='GER' ? (false) : (true)}}"
          icon="bold/interface-file-clipboard-check"
          iconPosition="left"
          itemType="app"
          parentKey="4eb910b3-cd05-4440-82fe-1405afc3aa6c"
        >
          <Event
            id="d0433c19"
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "1f28d4fa-b1e3-11ed-99a0-2f34a396c87d" },
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
          id="f9f48"
          appTarget="e91325e4-d16e-11ee-9ef8-27741041f3fe"
          disabled={false}
          hidden="{{ segmentedControl1.value =='GER' ? (false) : (true)}}"
          icon="bold/money-cash-bag-dollar"
          iconPosition="left"
          itemType="app"
          label="Invoices & Payments"
          parentKey="4eb910b3-cd05-4440-82fe-1405afc3aa6c"
        />
        <Option
          id="04fa4"
          appTarget="9e24353c-0f4b-11ed-8a87-376fd5af4099"
          disabled={false}
          hidden={false}
          icon="bold/travel-places-cart"
          iconPosition="left"
          itemType="app"
          label="Damages"
          parentKey="4eb910b3-cd05-4440-82fe-1405afc3aa6c"
        />
        <Event
          id="2669f02e"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "243a5338-7a2f-11ed-b2a3-fb8b59105d23" },
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
          targetId="d3947"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="31984427"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "ac2ca00a-a09c-11ed-9a99-cbf15bd729cf" },
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
          targetId="47ca3"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="a8a5d0e3"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "e6f5ff74-9b47-11ed-8808-9b56707f7b8d" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "country" },
                            { value: "{{segmentedControl1.value}}" },
                          ],
                        },
                      ],
                    },
                    { hashParams: null },
                    { newTab: false },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          targetId="afdc6"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="89c4e5a0"
          event="click"
          method="openUrl"
          params={{
            ordered: [{ url: "https://partners.one.finn.auto/app/offers" }],
          }}
          pluginId=""
          targetId="812b4"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="9632db32"
          event="click"
          method="openUrl"
          params={{
            ordered: [{ url: "https://partners.one.finn.auto/app/bids" }],
          }}
          pluginId=""
          targetId="7086d"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="85599c05"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "a47d8100-544b-11ed-9804-e7d69fd84c60" },
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
          targetId="91c8a"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="27830d5a"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "4e398b72-5ac7-11ed-adbd-e78b30f327dc" },
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
          targetId="75253"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="66517983"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "585010ee-9b19-11ed-b544-df58cbd4615d" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "country" },
                            { value: "{{segmentedControl1.value}}" },
                          ],
                        },
                      ],
                    },
                    {
                      hashParams: [
                        { ordered: [{ key: "tab" }, { value: "Remarketing" }] },
                      ],
                    },
                    { newTab: false },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          targetId="71a85"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="35f4fb79"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "7f4f075c-2771-11ed-b3a3-af533bd792c8" },
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
          targetId="1249b"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="ecb4e7bb"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "e30c3d5a-2771-11ed-b3a4-6f6189442733" },
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
          targetId="e71fd"
          type="util"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="8b8368cb"
          event="logoClick"
          method="openApp"
          params={{
            ordered: [
              { uuid: "b3f741fa-cfc3-11ec-8287-67744cee2689" },
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
      </Navigation>
      <Module
        id="purchasingFeatureRequest1"
        hidden="{{ !isPurchasingPage.value }}"
        margin="0"
        name="Purchasing Feature Request"
        pageUuid="26f8b9b3-810c-42db-a558-7e44c1a0757d"
        showInEditor={true}
      />
      <TextInput
        id="searchBar"
        formDataKey=""
        hidden="false"
        iconBefore="bold/interface-search"
        inputTooltip="Please type your question and press [Enter]"
        label=""
        loading="{{ queryVectorDB.isFetching }}"
        marginType="normal"
        placeholder="Ask Fleety.. 🚙"
        showClear={true}
        showInEditor={true}
        style={{ ordered: [{ borderRadius: "0px" }] }}
      >
        <Event
          id="fbf1d9de"
          enabled=""
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="handleAskFleety"
          type="datasource"
          waitMs=""
          waitType="debounce"
        />
        <Event
          id="a9d013f9"
          event="submit"
          method="clearValue"
          params={{ ordered: [] }}
          pluginId="fleetyRating"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="141ebdfe"
          event="submit"
          method="clearValue"
          params={{ ordered: [] }}
          pluginId="fleetingFeedbackComment"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </TextInput>
      <SegmentedControl
        id="segmentedControl1"
        _defaultValue={null}
        hidden="true"
        itemMode="static"
        label=""
        marginType="normal"
        style={{
          ordered: [
            { background: "" },
            { labels: "" },
            { sharedLabel: "" },
            { indicatorBackground: "" },
            { border: "" },
            { borderRadius: "0px\n" },
            { sharedValidation: "" },
          ],
        }}
        value="{{ urlparams.hash.country ? urlparams.hash.country : defaultCountry.value }}"
      >
        <Option id="098c0" value="GER" />
        <Option id="f8a62" value="US" />
      </SegmentedControl>
      <Avatar
        id="avatar1"
        _disclosedFields={{ array: [] }}
        fallback="{{ current_user.fullName }}"
        imageSize={32}
        label="{{ current_user.fullName }}"
        labelAlign="right"
        labelCaption="{{ current_user.email }}"
        labelPosition="left"
        marginType="normal"
        src="{{ current_user.profilePhotoUrl }}"
        style={{ ordered: [{ background: "automatic" }] }}
      />
      <Include src="./src/searchBarResultsModal.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
