<DrawerFrame
  id="drawerFrame5"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  width="medium"
>
  <Header>
    <Text
      id="drawerTitle8"
      value="### Personalize Your View"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton8"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="95296a4e"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="drawerFrame5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <MultiselectListbox
      id="colSelector"
      emptyMessage="No options"
      itemMode="static"
      label="Choose Columns to Show"
      labelPosition="top"
      showActions={true}
      showSelectionIndicator={true}
      value="{{ colSelector.data.map(item => item.value) }}"
    >
      <Option id="fc66f" disabled={false} hidden={false} value="Coach Tag" />
      <Option
        id="fd412"
        disabled={false}
        hidden={false}
        value="Coach Comment"
      />
      <Option id="c3323" disabled={false} hidden={false} value="Cohort" />
      <Option
        id="ce589"
        disabled={false}
        hidden={false}
        value="Days on Programme"
      />
      <Option id="adda3" disabled={false} hidden={false} value="Company" />
      <Option id="35de4" disabled={false} hidden={false} value="Status" />
      <Option
        id="dd527"
        disabled={false}
        hidden={false}
        value="OTJ Actual vs Target"
      />
      <Option id="3a5cb" disabled={false} hidden={false} value="OTJ Total" />
      <Option
        id="aaf8a"
        disabled={false}
        hidden={false}
        value="EOL Current Month"
      />
      <Option id="7021f" disabled={false} hidden={false} value="Latest EOL" />
      <Option
        id="5f40e"
        disabled={false}
        hidden={false}
        value="Missed Delivery Sessions (Total)"
      />
      <Option
        id="783af"
        disabled={false}
        hidden={false}
        value="Latest Delivery Session"
      />
      <Option
        id="6bb0e"
        disabled={false}
        hidden={false}
        value="Submitted Projects"
      />
      <Option
        id="ddf87"
        disabled={false}
        hidden={false}
        value="Latest Project"
      />
      <Option
        id="e36d6"
        disabled={false}
        hidden={false}
        value="Latest Coaching Session"
      />
      <Option
        id="20995"
        disabled={false}
        hidden={false}
        value="Latest Completed Progress Review"
      />
      <Option
        id="9e710"
        disabled={false}
        hidden={false}
        value="Gateway Booked"
      />
      <Option id="a1a49" disabled={false} hidden={false} value="Job Title" />
      <Option
        id="9a99e"
        disabled={false}
        hidden={false}
        value="Learner Email"
      />
      <Option
        id="f5e86"
        disabled={false}
        hidden={false}
        value="Learner's Manager"
      />
      <Option
        id="53d07"
        disabled={false}
        hidden={false}
        value="Manager Email"
      />
      <Option
        id="ceb85"
        disabled={false}
        hidden={false}
        value="English Functional Skills"
      />
      <Option
        id="399a4"
        disabled={false}
        hidden={false}
        value="Maths Functional Skills"
      />
    </MultiselectListbox>
    <Include src="./collapsibleContainer1.rsx" />
  </Body>
</DrawerFrame>
