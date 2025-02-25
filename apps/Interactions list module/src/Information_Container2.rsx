<Container
  id="Information_Container2"
  _direction="vertical"
  _gap="0px"
  currentViewKey="{{ selectedInteraction.value.type }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <View id="4158d" viewKey="Call">
    <Text
      id="Interaction_IVRChoice2"
      hidden=""
      margin="4px 8px 0 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="IVR choice: {{ selectedInteraction.value.ivrChoice }}"
      verticalAlign="center"
    />
    <Text
      id="BusinessPartner_Text2"
      hidden="{{ !selectedInteraction.value.businessPartner }}"
      margin="0px 8px 0 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="{{ selectedInteraction.value.businessPartner }}"
      verticalAlign="center"
    />
    <Text
      id="DedicatedLine_Text2"
      hidden="{{ !selectedInteraction.value.dedicatedLine }}"
      margin="0px 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="{{ selectedInteraction.value.dedicatedLine }}"
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
      id="LinkedToCase_Container2"
      _gap="5px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !selectedInteraction.value.case }}"
      margin="0"
      padding="8px 0 0 0"
      showBody={true}
      showBorder={false}
    >
      <View id="5700b" viewKey="View 1">
        <Text
          id="LinkedToCase_Label2"
          margin="0px 8px"
          value="Linked to case:"
          verticalAlign="center"
        />
        <Link
          id="CaseLink2"
          margin="0"
          text="{{ selectedInteraction.value.case.key }}"
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
                              {
                                value:
                                  "{{ selectedInteraction.value.case.id }}",
                              },
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
      id="Interaction_Subject4"
      hidden="{{ !selectedInteraction.value.subject }}"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="Subject: {{ selectedInteraction.value.subject }}"
      verticalAlign="center"
    />
  </View>
</Container>
