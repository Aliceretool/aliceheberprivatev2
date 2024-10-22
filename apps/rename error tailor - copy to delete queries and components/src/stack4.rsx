<Container
  id="stack4"
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
      id="fieldData8"
      fieldData="{{ purchaseOrder2.data?.orderDate }}"
      fieldSubData=""
      format=""
      label="受注先発注番号"
      margin="0"
      name="fieldData"
      pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
    />
    <Module
      id="fieldData60"
      fieldData="{{ purchaseOrder2.data?.orderDate }}"
      fieldSubData=""
      format=""
      label="受注先発注日付"
      margin="0"
      name="fieldData"
      pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
    />
    <Module
      id="fieldData34"
      fieldData="{{ purchaseOrder2.data?.purchaseSlipTypeName }}"
      fieldSubData="{{ purchaseOrder2.data?.purchaseSlipTypeCode }}"
      format=""
      label="伝票タイプ"
      margin="0"
      name="fieldData"
      pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
    />
    <Module
      id="fieldData9"
      fieldData="{{ purchaseOrder2.data?.code }}"
      fieldSubData=""
      format=""
      label="伝票番号"
      margin="0"
      name="fieldData"
      pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
    />
    <Module
      id="fieldData35"
      fieldData="{{ purchaseOrder2.data?.purchaseSlipTypeRequestCategory }}"
      fieldSubData=""
      format=""
      label="伝票承認タイプ"
      margin="0"
      name="fieldData"
      pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
    />
  </View>
</Container>
