<Container
  id="container14"
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
      id="modal_createRSNIssue"
      buttonText="{{ i18n.t('+ Create RSN') }}"
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
      hidden="{{ getUser_filteredRoleIsQPAdmin3.data.count_capa_admin == 0 }}"
      modalHeight="784px"
      modalOverflowType="visible"
      modalWidth="40%"
      style={{ ordered: [{ "accent-background": "secondary" }] }}
    >
      <Module
        id="createRsn1"
        close="close6"
        margin="0"
        name="Create RSN"
        pageUuid="f2ea036f-c059-4508-8fcb-076d0fba0260"
        referenceIssueID=""
        referenceReadOnly=""
        refresh="refresh6"
      />
    </Modal>
    <Text
      id="containerTitle43"
      marginType="normal"
      value="#### {{i18n.t('Reagent Preperation')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="80363" viewKey="View 1">
    <Container
      id="group22"
      _gap="0px"
      _justify="center"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="21660" viewKey="View 1">
        <Container
          id="linkCard30"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          marginType="normal"
          padding="12px"
          showBody={true}
        >
          <View id="d9b4a" viewKey="View 1">
            <Container
              id="group21"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="21660" viewKey="View 1">
                <Icon
                  id="icon31"
                  icon="line/interface-edit-write-1"
                  marginType="normal"
                  style={{ ordered: [{ background: "success" }] }}
                  styleVariant="background"
                />
                <Text
                  id="containerTitle44"
                  marginType="normal"
                  value="{{i18n.t('Open')}}"
                  verticalAlign="center"
                />
                <Text
                  id="text65"
                  marginType="normal"
                  value="### {{get_open_ANL2.data.Open[0]}}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
        </Container>
        <Container
          id="linkCard31"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          marginType="normal"
          padding="12px"
          showBody={true}
        >
          <View id="d9b4a" viewKey="View 1">
            <Container
              id="group20"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="21660" viewKey="View 1">
                <Icon
                  id="icon32"
                  icon="line/interface-edit-write-2"
                  marginType="normal"
                  style={{ ordered: [{ background: "primary" }] }}
                  styleVariant="background"
                />
                <Text
                  id="containerTitle45"
                  marginType="normal"
                  value="{{i18n.t('Pending Review')}}"
                  verticalAlign="center"
                />
                <Text
                  id="text66"
                  marginType="normal"
                  value="### {{get_pending_review.data.pending_review[0]}}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
        </Container>
        <Container
          id="linkCard32"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          marginType="normal"
          padding="12px"
          showBody={true}
        >
          <View id="d9b4a" viewKey="View 1">
            <Container
              id="group19"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="21660" viewKey="View 1">
                <Icon
                  id="icon33"
                  icon="line/interface-arrows-button-left-double"
                  marginType="normal"
                  style={{ ordered: [{ background: "danger" }] }}
                  styleVariant="background"
                />
                <Text
                  id="containerTitle46"
                  marginType="normal"
                  value="{{i18n.t('Invalid')}}"
                  verticalAlign="center"
                />
                <Text
                  id="text67"
                  marginType="normal"
                  value="### {{get_invalid.data.invalid[0]}}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
        </Container>
        <Container
          id="linkCard33"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          marginType="normal"
          padding="12px"
          showBody={true}
        >
          <View id="d9b4a" viewKey="View 1">
            <Container
              id="group18"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="21660" viewKey="View 1">
                <Text
                  id="containerTitle47"
                  marginType="normal"
                  value="{{i18n.t('Approved')}}"
                  verticalAlign="center"
                />
                <Icon
                  id="icon34"
                  icon="line/interface-validation-check-circle"
                  marginType="normal"
                  style={{ ordered: [{ background: "success" }] }}
                  styleVariant="background"
                />
                <Text
                  id="text68"
                  marginType="normal"
                  value="### {{get_approved2.data.approved[0]}}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
        </Container>
      </View>
    </Container>
    <Spacer id="spacer25" marginType="normal" />
    <Module
      id="globalSearch8"
      heightType="fixed"
      input2="{{ randNo.data }}"
      name="Global Search"
      pageUuid="3e71b400-e60a-4219-bce1-fa6030073ba5"
      projectVALUE={'"Reagent Preperation"'}
    />
  </View>
</Container>
