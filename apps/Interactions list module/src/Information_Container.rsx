<Container
  id="Information_Container"
  _direction="vertical"
  _gap="0px"
  currentViewKey="{{ item.type }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  hoistFetching={true}
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <View id="4158d" viewKey="Call">
    <Text
      id="Interaction_IVRChoice"
      hidden=""
      margin="4px 8px 0 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="IVR choice: {{ item.ivrChoice }}"
      verticalAlign="center"
    />
    <Text
      id="Interaction_Timestamp2"
      horizontalAlign="right"
      margin="4px 0"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="{{ item.timestamp }}"
      verticalAlign="center"
    />
    <Text
      id="BusinessPartner_Text"
      hidden="{{ !item.businessPartner }}"
      margin="0px 8px 0 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="{{ item.businessPartner }}"
      verticalAlign="center"
    />
    <Text
      id="Interaction_Timestamp3"
      horizontalAlign="right"
      margin="0"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="Waiting time: {{ item.waitingTime }}"
      verticalAlign="center"
    />
    <Text
      id="DedicatedLine_Text"
      hidden="{{ !item.dedicatedLine }}"
      margin="0px 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="{{ item.dedicatedLine }}"
      verticalAlign="center"
    />
  </View>
  <View
    id="de2fd"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Email"
  >
    <Container
      id="LinkedToCase_Container"
      _gap="5px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !item.case }}"
      margin="0"
      padding="8px 0 0 0"
      showBody={true}
      showBorder={false}
    >
      <View id="5700b" viewKey="View 1">
        <Text
          id="LinkedToCase_Label"
          margin="0px 8px"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Linked to case:"
          verticalAlign="center"
        />
        <Link
          id="CaseLink"
          margin="0"
          style={{ ordered: [] }}
          text="{{ item.case.key }}"
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [
                { uuid: "127e8180-8556-11ef-8f59-e76efbf3a60d" },
                {
                  options: {
                    ordered: [
                      { pageName: "Case" },
                      {
                        queryParams: [
                          {
                            ordered: [
                              { key: "id" },
                              { value: "{{ item.case.id }}" },
                            ],
                          },
                        ],
                      },
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
        </Link>
      </View>
    </Container>
    <Text
      id="Interaction_Timestamp4"
      horizontalAlign="right"
      margin="4px 0"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="{{ item.timestamp }}"
      verticalAlign="center"
    />
    <Text
      id="Interaction_Subject3"
      hidden="{{ !item.subject }}"
      margin="0px 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="Subject: {{ item.subject }}"
      verticalAlign="center"
    />
  </View>
</Container>
