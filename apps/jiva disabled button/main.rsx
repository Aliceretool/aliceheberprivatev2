<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="enableModule"
    defaultValue="{{ false }}"
    value="{{ true }}"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      enableModule="{{ true }}"
      isGlobalWidgetContainer={true}
    >
      <Module
        id="candidateStandardFilters"
        margin="0"
        name="Candidate standard filters"
        pageUuid="032fae46-ac21-4384-aa89-5bc34b3b9328"
      />
      <Container
        id="container3"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        showBody={true}
      >
        <Header>
          <Text
            id="containerTitle3"
            marginType="normal"
            value="#### Container title"
            verticalAlign="center"
          />
        </Header>
        <View id="73a01" viewKey="View 1">
          <Select
            id="screenerStatusSelect"
            emptyMessage="No options"
            itemMode="static"
            label="Screener Status"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showClear={true}
            showSelectionIndicator={true}
          >
            <Option id="6cde2" label="Incomplete" value="IN_PROGRESS" />
            <Option id="b5685" label="Completed" value="NEEDS_REVIEW" />
          </Select>
        </View>
      </Container>
      <Container
        id="container1"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        showBody={true}
      >
        <Header>
          <Text
            id="containerTitle1"
            marginType="normal"
            value="#### Container title"
            verticalAlign="center"
          />
        </Header>
        <View id="2c356" viewKey="View 1">
          <Table
            id="screenerPendingTable"
            actionsOverflowPosition={3}
            cellSelection="none"
            clearChangesetOnSave={true}
            data="{{query5.data}}"
            defaultSelectedRow={{
              mode: "none",
              indexType: "display",
              index: 0,
            }}
            emptyMessage="No rows found"
            enableSaveActions={true}
            groupByColumns={{}}
            hasNextPage="{{ stepsQuery.data.pagination.hasNextPage }}"
            nextAfterCursor="{{ stepsQuery.data.pagination.endCursor }}"
            overflowType="pagination"
            primaryKeyColumnId="35fdb"
            serverPaginated={true}
            serverPaginationType="forwardCursorBased"
            showBorder={true}
            showFooter={true}
            showHeader={true}
            templatePageSize="10"
            toolbarPosition="bottom"
          >
            <Column
              id="35fdb"
              alignment="right"
              editable={false}
              editableOptions={{ showStepper: true }}
              format="decimal"
              formatOptions={{ showSeparators: true, notation: "standard" }}
              groupAggregationMode="sum"
              hidden="true"
              key="id"
              label="ID"
              placeholder="Enter value"
              position="center"
              size={28}
            />
            <Column
              id="b3382"
              alignment="left"
              format="link"
              formatOptions={{ showUnderline: "hover" }}
              groupAggregationMode="none"
              label="Screener Answers"
              placeholder="Enter value"
              position="center"
              referenceId="screenerAnswers"
              size={122.515625}
              valueOverride="Click"
            >
              <Event
                event="clickCell"
                method="open"
                params={{ ordered: [] }}
                pluginId="screenerAnswersModal"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Column>
            <Column
              id="d7c71"
              alignment="left"
              format="string"
              groupAggregationMode="none"
              key="patient_name"
              label="Patient name"
              placeholder="Enter value"
              position="center"
              size={100}
              summaryAggregationMode="none"
            />
            <Column
              id="1ccfe"
              alignment="right"
              editableOptions={{ showStepper: true }}
              format="decimal"
              formatOptions={{ showSeparators: true, notation: "standard" }}
              groupAggregationMode="sum"
              key="patient_id"
              label="Patient ID"
              placeholder="Enter value"
              position="center"
              size={100}
              summaryAggregationMode="none"
            />
            <Column
              id="36e93"
              alignment="left"
              format="tag"
              formatOptions={{ automaticColors: true }}
              groupAggregationMode="none"
              key="consultation_Day"
              label="Consultation day"
              placeholder="Select option"
              position="center"
              size={100}
              summaryAggregationMode="none"
              valueOverride="{{ _.startCase(item) }}"
            />
            <Column
              id="dda7b"
              alignment="right"
              editableOptions={{ showStepper: true }}
              format="decimal"
              formatOptions={{ showSeparators: true, notation: "standard" }}
              groupAggregationMode="sum"
              key="doctor_id"
              label="Doctor ID"
              placeholder="Enter value"
              position="center"
              size={100}
              summaryAggregationMode="none"
            />
            <Action
              id="20c6a"
              icon="bold/interface-favorite-like-1"
              label="Approve"
            >
              <Event
                event="clickAction"
                method="reset"
                params={{ ordered: [] }}
                pluginId="approveForm"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="clickAction"
                method="open"
                params={{ ordered: [] }}
                pluginId="approveModal"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Action>
            <Action id="758b1" icon="bold/phone-telephone" label="Call Notes">
              <Event
                event="clickAction"
                method="open"
                params={{ ordered: [] }}
                pluginId="callNotesModal"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Action>
            <Action id="c24c1" icon="bold/interface-delete-2" label="Reject">
              <Event
                event="clickAction"
                method="open"
                params={{ ordered: [] }}
                pluginId="rejectCandidateModal"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Action>
            <ToolbarButton
              id="4d"
              icon="bold/interface-arrows-round-left"
              label="Refresh"
              type="custom"
            >
              <Event
                event="clickToolbar"
                method="refresh"
                pluginId="screenerPendingTable"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </ToolbarButton>
            <Event
              event="selectRow"
              method="run"
              params={{
                ordered: [{ src: "approveForm.reset();\nnoteForm.reset();" }],
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Table>
        </View>
      </Container>
      <Modal
        id="rejectCandidateModal"
        buttonText="Reject Candidate"
        hidden="true"
        modalHeightType="auto"
      >
        <Module
          id="rejectCandidate1"
          input4="stepsQuery"
          margin="0"
          name="Reject Candidate"
          pageUuid="f08abf6e-6afb-435f-93cb-2adbe1df1a2f"
          resetCandidateRejecte="{{ candidateRejected.value }}"
          resetCandidateRejected="{{ candidateRejected.value }}"
          stepId="{{ screenerPendingTable.selectedRow.id }}"
          stepType="SCREENER"
        />
      </Modal>
      <Modal id="callNotesModal" buttonText="Call Notes" hidden="true">
        <Modal
          id="addNotesModal"
          buttonText="Add notes"
          hidden=""
          modalHeightType="auto"
        >
          <Form
            id="noteForm"
            footerPadding="4px 12px"
            footerPaddingType="normal"
            headerPadding="4px 12px"
            headerPaddingType="normal"
            marginType="normal"
            padding="12px"
            paddingType="normal"
            requireValidation={true}
            resetAfterSubmit={true}
            showBody={true}
            showFooter={true}
            showHeader={true}
          >
            <Header>
              <Text
                id="formTitle1"
                marginType="normal"
                value="#### Add Notes"
                verticalAlign="center"
              />
            </Header>
            <Body>
              <TextArea
                id="noteText"
                autoResize={true}
                label=""
                labelPosition="top"
                marginType="normal"
                minLines="10"
                placeholder="Enter value"
                required={true}
              />
            </Body>
            <Footer>
              <Button
                id="formButton1"
                marginType="normal"
                submit={true}
                submitTargetId="noteForm"
                text="Submit"
              />
            </Footer>
            <Event
              event="submit"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="addNotes"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Form>
        </Modal>
        <ListViewBeta
          id="listView2"
          data="{{ screenerPendingTable?.selectedRow?.notes }}"
          itemWidth="200px"
          margin="0"
          marginType="none"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container2"
            footerPadding="4px 12px"
            footerPaddingType="normal"
            headerPadding="4px 12px"
            headerPaddingType="normal"
            marginType="normal"
            padding="12px"
            paddingType="normal"
            showBody={true}
          >
            <Header>
              <Text
                id="containerTitle2"
                marginType="normal"
                value="#### Container title"
                verticalAlign="center"
              />
            </Header>
            <View id="527ea" viewKey="View 1">
              <Text
                id="text1"
                marginType="normal"
                value="**{{ item.createdBy.displayName }}**"
                verticalAlign="center"
              />
              <Text
                id="text2"
                disableMarkdown={true}
                horizontalAlign="right"
                marginType="normal"
                value="{{ moment(item.createdAt).format('DD/MM/YY  hh:mm a') }}"
                verticalAlign="center"
              />
              <Text
                id="text3"
                marginType="normal"
                value="{{ item.content }}"
                verticalAlign="center"
              />
            </View>
          </Container>
        </ListViewBeta>
      </Modal>
      <Modal
        id="approveModal"
        buttonText="Approve"
        hidden="true"
        modalHeightType="auto"
      >
        <Form
          id="approveForm"
          disableSubmit="{{ !approveCheckbox.value }}"
          footerPadding="4px 12px"
          footerPaddingType="normal"
          headerPadding="4px 12px"
          headerPaddingType="normal"
          marginType="normal"
          padding="12px"
          paddingType="normal"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="formTitle2"
              marginType="normal"
              value="#### Are you sure you want to move the candidate to AC Review?"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Checkbox
              id="approveCheckbox"
              label="Candidate has passed screener"
              marginType="normal"
              required={true}
            />
          </Body>
          <Footer>
            <Button
              id="formButton2"
              marginType="normal"
              style={{ ordered: [] }}
              submit={true}
              submitTargetId="approveForm"
              text="Submit"
            />
            <Button
              id="button1"
              marginType="normal"
              style={{ ordered: [] }}
              styleVariant="outline"
              text="Cancel"
            >
              <Event
                event="click"
                method="close"
                params={{ ordered: [] }}
                pluginId="approveModal"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{
              ordered: [
                {
                  options: {
                    object: {
                      onSuccess: null,
                      onFailure: null,
                      additionalScope: null,
                    },
                  },
                },
              ],
            }}
            pluginId="approveScreenerStep"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </Modal>
      <Modal
        id="screenerAnswersModal"
        buttonText="Screener Answers"
        hidden="{{ true }}"
        modalHeight="936px"
        modalHeightType="auto"
        modalWidth="80%"
      >
        <Table
          id="screenerAnswersTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ screenerPendingTable.selectedRow.screenerSubmission }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="5b0a5"
          rowHeight="large"
          showBorder={true}
          showFooter={true}
          showHeader={true}
        >
          <Column
            id="5b0a5"
            alignment="right"
            editable={false}
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="{{ true }}"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={31.546875}
            summaryAggregationMode="none"
          />
          <Column
            id="b6a8b"
            alignment="left"
            format="multilineString"
            formatOptions={{
              icon: '{{ item === "success" ? "/icon:bold/interface-validation-check-circle" : "/icon:bold/interface-alert-warning-circle" }}',
            }}
            groupAggregationMode="none"
            key="questionText"
            label="Question text"
            placeholder="Enter value"
            position="center"
            size={615}
            summaryAggregationMode="none"
          />
          <Column
            id="0bd6d"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="answer"
            label="Answer"
            placeholder="Select options"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
        </Table>
      </Modal>
    </ModuleContainerWidget>
  </Frame>
</App>
