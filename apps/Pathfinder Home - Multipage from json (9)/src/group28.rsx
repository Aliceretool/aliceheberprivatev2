<Container
  id="group28"
  _gap="0px"
  _justify="space-between"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  style={{ ordered: [] }}
>
  <View id="e0820" viewKey="View 1">
    <Container
      id="linkCard38"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Container
          id="group25"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="e0820" viewKey="View 1">
            <Icon
              id="icon39"
              icon="line/interface-file-clipboard-add"
              marginType="normal"
              style={{ ordered: [{ background: "highlight" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle54"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Pending Review')}}"
              verticalAlign="center"
            />
            <Text
              id="text80"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_pending_review2.data.pending_review[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard34"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      marginType="normal"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Container
          id="group23"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="e0820" viewKey="View 1">
            <Icon
              id="icon35"
              icon="line/interface-edit-write-1"
              marginType="normal"
              style={{ ordered: [{ background: "success" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle50"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Open')}}"
              verticalAlign="center"
            />
            <Text
              id="text76"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_open_SPL.data.Open[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard35"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Container
          id="group24"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="e0820" viewKey="View 1">
            <Icon
              id="icon36"
              icon="line/interface-edit-write-2"
              marginType="normal"
              style={{ ordered: [{ background: "primary" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle51"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Pending Testing')}}"
              verticalAlign="center"
            />
            <Text
              id="text77"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_pending_testing2.data.pending_testing[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard36"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Container
          id="group26"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="e0820" viewKey="View 1">
            <Icon
              id="icon37"
              icon="line/interface-arrows-button-left-double"
              marginType="normal"
              style={{ ordered: [{ background: "warning" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle52"
              horizontalAlign="right"
              marginType="normal"
              value="{{ i18n.t('Rejected')}}"
              verticalAlign="center"
            />
            <Text
              id="text78"
              horizontalAlign="right"
              marginType="normal"
              value="#### {{get_rejected.data.rejected[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="linkCard37"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      marginType="normal"
      padding="12px"
      showBody={true}
    >
      <View id="d9b4a" viewKey="View 1">
        <Container
          id="group27"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="e0820" viewKey="View 1">
            <Icon
              id="icon38"
              icon="line/interface-validation-check-circle"
              marginType="normal"
              style={{ ordered: [{ background: "primary" }] }}
              styleVariant="background"
            />
            <Text
              id="containerTitle53"
              marginType="normal"
              value="{{ i18n.t('Accepted')}}"
              verticalAlign="center"
            />
            <Text
              id="text79"
              marginType="normal"
              value="#### {{get_accepted.data.accepted[0]}}"
              verticalAlign="center"
            />
          </View>
        </Container>
      </View>
    </Container>
  </View>
</Container>
