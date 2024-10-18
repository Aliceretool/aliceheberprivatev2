<Container
  id="container29"
  disabledByIndex={[]}
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hidden="{{ containerTitle73.value !== tabs3.value}}"
  hiddenByIndex={[]}
  iconByIndex={[]}
  iconPositionByIndex={[]}
  labels={[]}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
  tooltipByIndex={[]}
  viewKeys={[]}
  views={[]}
>
  <Header>
    <Text
      id="containerTitle73"
      marginType="normal"
      value="{{tabs3.values[i]}}"
      verticalAlign="center"
    />
    <Text
      id="text110"
      value="{{getProductName.data.find(el => el.id ===containerTitle73.value).ProductDisplayText}}"
      verticalAlign="center"
    />
  </Header>
  <View id="441fc" viewKey="View 1">
    <Select
      id="select17"
      captionByIndex={[]}
      colorByIndex={[]}
      data="{{ getlogistics.data }}"
      deprecatedLabels={[]}
      disabledByIndex={[]}
      disabledValues={[]}
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex={[]}
      iconByIndex={[]}
      imageByIndex={[]}
      label="Delivery terms"
      labelPosition="top"
      labels="{{item.delivery_display_text}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            background:
              "{{['#fe938c', '#e6b89c', '#ead2ac', '#9cafb7', '#4281a4'][i]}}",
          },
        ],
      }}
      tooltipByIndex={[]}
      values="{{ item.id }}"
    />
    <TextInput
      id="textInput71"
      label="Quantity"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      required={true}
      style={{
        ordered: [
          {
            background:
              "{{['#fe938c', '#e6b89c', '#ead2ac', '#9cafb7', '#4281a4'][i]}}",
          },
        ],
      }}
    />
    <Select
      id="select60"
      data="{{ getUnits.data }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      label="Unit"
      labelPosition="top"
      labels="{{item.UnitDisplayText}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            background:
              "{{['#fe938c', '#e6b89c', '#ead2ac', '#9cafb7', '#4281a4'][i]}}",
          },
        ],
      }}
      values="{{ item.id }}"
    />
  </View>
</Container>
