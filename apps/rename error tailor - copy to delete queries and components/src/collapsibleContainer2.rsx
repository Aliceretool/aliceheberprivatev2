<Container
  id="collapsibleContainer2"
  _direction="vertical"
  _gap="0px"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="1px"
  padding="16px"
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { border: "rgb(207, 216, 220)" },
      { headerBackground: "{{ common.accentColor }}" },
    ],
  }}
>
  <Header>
    <Text
      id="collapsibleTitle2"
      style={{ ordered: [{ fontSize: "20px" }] }}
      value="**顧客情報**"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle2"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer2.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="bf3ed" viewKey="View 1">
    <Container
      id="overviewContainer"
      _direction="vertical"
      _gap="8px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="overviewContainerTitle"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**受注先情報**"
          verticalAlign="center"
        />
      </Header>
      <View id="173bc" viewKey="View 1">
        <Container
          id="stack6"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData12"
              fieldData="{{ purchaseOrder2.data?.purchasePaymentConditionName }}"
              fieldSubData="{{ purchaseOrder2.data?.purchasePaymentConditionCode }}"
              format=""
              label="受注先支払条件"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldLinkData2"
              blank=""
              fieldData="{{ purchaseOrder2.data?.purchasePartnerName }}"
              fieldSubData="{{ purchaseOrder2.data?.purchasePartnerCode }}"
              label="受注先"
              linkPath="/master/businessPartners/{{ purchaseOrder2.data?.partnerID }}"
              margin="0"
              name="fieldLinkData"
              pageUuid="9129c850-7e67-428e-ba55-68c5e6967c6d"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Divider
      id="divider6"
      margin="16px 0px"
      style={{ ordered: [{ color: "rgb(207, 216, 220)" }] }}
    />
    <Divider
      id="divider9"
      margin="16px 0px"
      style={{ ordered: [{ color: "rgb(207, 216, 220)" }] }}
    />
    <Container
      id="overviewContainer2"
      _direction="vertical"
      _gap="8px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="overviewContainerTitle2"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**出荷先情報**"
          verticalAlign="center"
        />
      </Header>
      <View id="173bc" viewKey="View 1">
        <Container
          id="stack27"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData61"
              fieldData="{{ purchaseOrder2.data?.partnerShipTel }}"
              fieldSubData=""
              format=""
              label="電話番号"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldLinkData5"
              blank="true"
              fieldData="{{ purchaseOrder2.data?.partnerShipName }}"
              fieldSubData="{{ purchaseOrder2.data?.partnerShipCode }}"
              label="出荷先"
              linkPath="/master/businessPartners/{{ purchaseOrder2.data?.partnerShipID }}"
              margin="0"
              name="fieldLinkData"
              pageUuid="9129c850-7e67-428e-ba55-68c5e6967c6d"
            />
          </View>
        </Container>
        <Container
          id="stack31"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData64"
              fieldData="{{ purchaseOrder2.data?.partnerShipTel }}"
              fieldSubData=""
              format=""
              label="郵便番号"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData68"
              fieldData="{{ purchaseOrder2.data?.partnerShipTel }}"
              fieldSubData=""
              format=""
              label="国
"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData66"
              fieldData="{{ partnerShipMergedAddress.value }}"
              fieldSubData=""
              format=""
              label="都道府県"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData65"
              fieldData="{{ purchaseOrder2.data?.partnerShipTel }}"
              fieldSubData=""
              format=""
              label="住所"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="overviewContainer4"
      _direction="vertical"
      _gap="8px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="overviewContainerTitle4"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**添付ファイル**"
          verticalAlign="center"
        />
      </Header>
      <View id="173bc" viewKey="View 1">
        <Module
          id="fileDownloader"
          files="{{ purchaseOrder2.data?.attachedFiles }}"
          margin="0"
          name="fileDownloader"
          pageUuid="a016e6ae-8212-48a7-a462-578404c3a551"
        />
      </View>
    </Container>
    <Container
      id="overviewContainer3"
      _direction="vertical"
      _gap="8px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="overviewContainerTitle3"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**その他**"
          verticalAlign="center"
        />
      </Header>
      <View id="173bc" viewKey="View 1">
        <Container
          id="stack28"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData53"
              fieldData="{{ purchaseOrder2.data?.externalNote }}"
              fieldSubData=""
              format=""
              label="摘要"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData54"
              fieldData="{{ purchaseOrder2.data?.internalNote }}"
              fieldSubData=""
              format=""
              label="社内メモ"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
          </View>
        </Container>
        <Container
          id="stack34"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData75"
              fieldData="{{ purchaseOrder2.data?.externalNote }}"
              fieldSubData=""
              format=""
              label="販売地域"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData76"
              fieldData="{{ purchaseOrder2.data?.internalNote }}"
              fieldSubData=""
              format=""
              label="インコタームズ"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData77"
              fieldData="{{ purchaseOrder2.data?.internalNote }}"
              fieldSubData=""
              format=""
              label="積み地"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData78"
              fieldData="{{ purchaseOrder2.data?.internalNote }}"
              fieldSubData=""
              format=""
              label="揚げ地"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
          </View>
        </Container>
        <Container
          id="stack35"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData79"
              fieldData="{{ purchaseOrder2.data?.externalNote }}"
              fieldSubData=""
              format=""
              label="許容値"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData80"
              fieldData="{{ purchaseOrder2.data?.internalNote }}"
              fieldSubData=""
              format=""
              label="バイヤー"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData81"
              fieldData="{{ purchaseOrder2.data?.internalNote }}"
              fieldSubData=""
              format=""
              label="ブランド有無"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData82"
              fieldData="{{ purchaseOrder2.data?.internalNote }}"
              fieldSubData=""
              format=""
              label="用途コード"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Divider
      id="divider4"
      margin="16px 0px"
      style={{ ordered: [{ color: "rgb(207, 216, 220)" }] }}
    />
    <Divider
      id="divider11"
      margin="16px 0px"
      style={{ ordered: [{ color: "rgb(207, 216, 220)" }] }}
    />
    <Container
      id="overviewContainer5"
      _direction="vertical"
      _gap="8px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0.5px"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="overviewContainerTitle5"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**金額情報**"
          verticalAlign="center"
        />
      </Header>
      <View id="173bc" viewKey="View 1">
        <Container
          id="stack32"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData69"
              fieldData="{{ purchaseOrder2.data?.partnerShipTel }}"
              fieldSubData=""
              format=""
              label="為替予約番号"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData70"
              fieldData="{{ purchaseOrder2.data?.partnerShipTel }}"
              fieldSubData=""
              format=""
              label="為替レート"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldLinkData6"
              blank="true"
              fieldData="{{ purchaseOrder2.data?.partnerShipName }}"
              fieldSubData="{{ purchaseOrder2.data?.partnerShipCode }}"
              label="決済通貨"
              linkPath="/master/businessPartners/{{ purchaseOrder2.data?.partnerShipID }}"
              margin="0"
              name="fieldLinkData"
              pageUuid="9129c850-7e67-428e-ba55-68c5e6967c6d"
            />
          </View>
        </Container>
        <Container
          id="stack33"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData71"
              fieldData="{{ purchaseOrder2.data?.partnerShipTel }}"
              fieldSubData=""
              format=""
              label="合計金額（ドル）"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData74"
              fieldData="{{ purchaseOrder2.data?.partnerShipTel }}"
              fieldSubData=""
              format=""
              label="合計金額（円）"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
          </View>
        </Container>
      </View>
    </Container>
  </View>
</Container>
