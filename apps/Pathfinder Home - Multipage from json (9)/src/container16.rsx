<Container
  id="container16"
  _gap={0}
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "rgb(255, 255, 255)" }] }}
>
  <Header>
    <Modal
      id="modal_createSPLIssue"
      buttonText="+  {{ i18n.t('Create New Sample Registration')}}"
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "localStorage" },
            { method: "setValue" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  { key: "next_rsn_issue_id" },
                  { newValue: "{{uuid.v4()}}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{ getUser_filteredRoleIsQPAdmin4.data.count_capa_admin == 0 }}"
      modalHeight="784px"
      modalOverflowType="visible"
      modalWidth="50%"
      style={{ ordered: [{ "accent-background": "secondary" }] }}
    >
      <Module
        id="createSpl1"
        close="close7"
        margin="0"
        name="Create SPL"
        pageUuid="7e2b05fe-7c0c-4c9c-b788-c8742cbe130d"
        referenceIssueID=""
        referenceReadOnly=""
        refresh="refresh7"
      />
    </Modal>
    <Text
      id="containerTitle49"
      marginType="normal"
      value="#### {{ i18n.t('Sample Registration')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="80363" viewKey="View 1">
    <Include src="./group28.rsx" />
    <Spacer id="spacer28" marginType="normal" />
    <Module
      id="globalSearch9"
      heightType="fixed"
      input2="{{ randNo.data }}"
      name="Global Search"
      pageUuid="3e71b400-e60a-4219-bce1-fa6030073ba5"
      projectVALUE={'"Sample Registration"'}
    />
  </View>
</Container>
