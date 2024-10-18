<ModalFrame
  id="modalFrame2"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Text
      id="modalTitle13"
      value="### Container title"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton14"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Timeline2
      id="timeline7"
      _eventGroupingEnabled={true}
      _groupBy={[
        { ordered: [{ key: "playgroundQueryId" }, { sortDirection: "asc" }] },
        { ordered: [{ key: "1" }, { sortDirection: "asc" }] },
        { ordered: [{ key: "field_value" }, { sortDirection: "asc" }] },
      ]}
      _groupingConfig={{ ordered: [{ expandByDefault: true }] }}
      data="{{ getIssue10.data }}"
      eventColorByIndex=""
      eventEndDateByIndex="{{ item.due_date }}"
      eventIdByIndex="{{ item.issueID }}"
      eventPropertiesByIndex="{{item}}"
      eventStartDateByIndex="{{ item.created_at }}"
      eventTitleByIndex="{{ item.issue_index }}"
      eventTooltipLabelByIndex={
        '{{ `${moment(item.created_at).format("MMM D")} -> ${moment(item.due_date).format("MMM D")} (${moment(item.due_date).diff(moment(item.created_at), "days")} days)` }}'
      }
      metaEventData="[]"
      milestoneColorByIndex="{{ theme.primary }}"
      milestoneData=""
      quarterStartDay={1}
      quarterStartMonth={1}
      renderOneEventPerRow={true}
      showTodayIndicator={true}
      timescale={{ ordered: [{ unit: "month" }, { split: "date" }] }}
    />
  </Body>
</ModalFrame>
