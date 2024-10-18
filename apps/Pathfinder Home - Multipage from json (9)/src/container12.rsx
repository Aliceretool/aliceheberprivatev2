<Container
  id="container12"
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
      id="modal_createANLIssue"
      buttonText="+ {{ i18n.t('Create ANL')}}"
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
                  { key: "next_anl_issue_id" },
                  { newValue: "{{uuid.v4()}}" },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{ getUser_filteredRoleIsQPAdmin2.data.count_capa_admin == 0 }}"
      modalHeight="784px"
      modalOverflowType="visible"
      modalWidth="40%"
      style={{ ordered: [{ "accent-background": "secondary" }] }}
    >
      <Module
        id="createAnl1"
        close="close5"
        margin="0"
        name="Create ANL"
        pageUuid="4e5c1e69-74be-45a7-8db1-80a65961766c"
        referenceIssueID=""
        referenceReadOnly=""
        refresh="refresh5"
      />
    </Modal>
    <Text
      id="containerTitle37"
      marginType="normal"
      value="#### {{ i18n.t('Analysis & Investigations')}}"
      verticalAlign="center"
    />
  </Header>
  <View id="80363" viewKey="View 1">
    <Container
      id="group16"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="da598" viewKey="View 1">
        <Container
          id="group17"
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
          <View id="da598" viewKey="View 1">
            <Container
              id="linkCard26"
              _gap={0}
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              marginType="normal"
              padding="12px"
              showBody={true}
            >
              <View id="d9b4a" viewKey="View 1">
                <Container
                  id="group12"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{
                    ordered: [{ background: "rgba(255, 255, 255, 0)" }],
                  }}
                >
                  <View id="97211" viewKey="View 1">
                    <Icon
                      id="icon27"
                      icon="line/interface-edit-write-1"
                      marginType="normal"
                      style={{ ordered: [{ background: "success" }] }}
                      styleVariant="background"
                    />
                    <Text
                      id="containerTitle38"
                      horizontalAlign="right"
                      marginType="normal"
                      value="{{ i18n.t('Open')}}"
                      verticalAlign="center"
                    />
                    <Text
                      id="text56"
                      horizontalAlign="right"
                      marginType="normal"
                      value="#### {{get_open_ANL.data.OpenQP[0]}}"
                      verticalAlign="center"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Container
              id="linkCard27"
              _gap={0}
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              marginType="normal"
              padding="12px"
              showBody={true}
            >
              <View id="d9b4a" viewKey="View 1">
                <Container
                  id="group13"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{
                    ordered: [{ background: "rgba(255, 255, 255, 0)" }],
                  }}
                >
                  <View id="97211" viewKey="View 1">
                    <Icon
                      id="icon28"
                      icon="line/interface-edit-write-2"
                      marginType="normal"
                      style={{ ordered: [{ background: "primary" }] }}
                      styleVariant="background"
                    />
                    <Text
                      id="containerTitle39"
                      horizontalAlign="right"
                      marginType="normal"
                      value="{{ i18n.t('Pending Testing')}}"
                      verticalAlign="center"
                    />
                    <Text
                      id="text57"
                      horizontalAlign="right"
                      marginType="normal"
                      value="#### {{get_expiring1m2.data.expiringin1m[0]}}"
                      verticalAlign="center"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Container
              id="linkCard28"
              _gap={0}
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              marginType="normal"
              padding="12px"
              showBody={true}
            >
              <View id="d9b4a" viewKey="View 1">
                <Container
                  id="group15"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{
                    ordered: [{ background: "rgba(255, 255, 255, 0)" }],
                  }}
                >
                  <View id="97211" viewKey="View 1">
                    <Text
                      id="containerTitle40"
                      horizontalAlign="right"
                      marginType="normal"
                      value="{{ i18n.t('Rejected')}}"
                      verticalAlign="center"
                    />
                    <Icon
                      id="icon29"
                      icon="line/interface-arrows-button-left-double"
                      marginType="normal"
                      style={{ ordered: [{ background: "danger" }] }}
                      styleVariant="background"
                    />
                    <Text
                      id="text58"
                      horizontalAlign="right"
                      marginType="normal"
                      value="### {{get_pending_testing.data.withdrawal_requested[0]}}"
                      verticalAlign="center"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Container
              id="linkCard29"
              _gap={0}
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              marginType="normal"
              padding="12px"
              showBody={true}
            >
              <View id="d9b4a" viewKey="View 1">
                <Container
                  id="group14"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{
                    ordered: [{ background: "rgba(255, 255, 255, 0)" }],
                  }}
                >
                  <View id="97211" viewKey="View 1">
                    <Icon
                      id="icon30"
                      icon="line/interface-validation-check-circle"
                      marginType="normal"
                      style={{ ordered: [{ background: "success" }] }}
                      styleVariant="background"
                    />
                    <Text
                      id="containerTitle41"
                      horizontalAlign="right"
                      marginType="normal"
                      value="{{ i18n.t('Approved')}}"
                      verticalAlign="center"
                    />
                    <Text
                      id="text59"
                      horizontalAlign="right"
                      marginType="normal"
                      value="#### {{get_closed3.data.closed[0]}}"
                      verticalAlign="center"
                    />
                  </View>
                </Container>
              </View>
            </Container>
          </View>
        </Container>
      </View>
    </Container>
    <Spacer id="spacer22" marginType="normal" />
    <Module
      id="globalSearch7"
      heightType="fixed"
      input2="{{ randNo.data }}"
      name="Global Search"
      pageUuid="3e71b400-e60a-4219-bce1-fa6030073ba5"
      projectVALUE={'"Analysis & Investigation"'}
    />
  </View>
</Container>
