<ExpandedRow id="Task_List_TableExpandedRow">
  <ListViewBeta
    id="listView1"
    _primaryKeys="{{ item.id }}"
    data="{{GetTasksListByCase.data[i]._deliverables_of_task.filter(el => !el.is_deleted) }}"
    direction="horizontal"
    heightType="auto"
    hidden="{{ GetTasksListByCase.data[i]._deliverables_of_task.filter(el => !el.is_deleted).length > 0 ? false : true  }}"
    itemWidth="300px"
    layoutType="grid"
    maxHeight="100vh"
    numColumns={3}
    padding="0"
  >
    <Container
      id="stack24"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="b847d" viewKey="View 1">
        <IconText
          id="iconText5"
          icon={
            '{{ item.is_finished ?  "/icon:bold/interface-validation-check" : "/icon:bold/interface-delete-1" }}'
          }
          style={{
            ordered: [
              { iconColor: '{{ item.is_finished ? "#3CDBC0" : "#FF624B" }}' },
            ],
          }}
          text={
            '{{ GetDeliverableCategories.data.find(category => category.id === item.category_id)?.name || item.custom_category || ""}}'
          }
        />
      </View>
    </Container>
  </ListViewBeta>
</ExpandedRow>
