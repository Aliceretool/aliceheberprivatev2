<Screen
  id="progress_reviews_dashboard"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={14}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="76c58b1a-03d9-4d4a-a697-8ebf3d74716e"
>
  <RESTQuery
    id="allLearnersPRData"
    clonedDemoResourceType="restapi"
    enableMockResponseTransformer={true}
    headers={
      '[{"key":"x-impersonation-id","value":"{{ impersonate_user.value?.coach?.id }}"}]'
    }
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    openAPIParams="{}"
    openAPIRequestBody=""
    query="sidekick/v1/apprenticeship?size=500"
    resourceName="5c1aad02-a230-491c-b72d-d1e92ebaa30f"
    showSuccessToaster={false}
  >
    <Event
      id="4ce38c15"
      event="success"
      method="trigger"
      params={{}}
      pluginId="processLearnerData"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <State id="processedPRData" value="[]" />
  <JavascriptQuery
    id="processLearnerData"
    notificationDuration={4.5}
    query={include("../lib/processLearnerData.js", "string")}
    resourceName="JavascriptQuery"
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <Frame
    id="$main20"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="prMainContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle156"
          style={{
            fontSize: "h2Font",
            fontWeight: "h2Font",
            fontFamily: "h2Font",
          }}
          value="Progress Reviews"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Container
          id="topStatsBarContainer"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
        >
          <View id="00030" viewKey="View 1">
            <IconText
              id="iconText30"
              icon="line/interface-alert-information-circle"
              text="10 Overdue"
            />
            <IconText
              id="iconText32"
              icon="line/interface-time-clock-circle"
              text="Hello 1 due this week"
            />
            <IconText
              id="iconText33"
              icon="line/interface-validation-check-circle"
              text="3 submitted"
            />
          </View>
        </Container>
        <Container
          id="prFilterContainer"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
        >
          <Header>
            <Text
              id="containerTitle157"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="00030" viewKey="View 1">
            <Multiselect
              id="prStatusMultiselect"
              emptyMessage="No options"
              itemMode="static"
              label="Status"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select options"
              showSelectionIndicator={true}
              wrapTags={true}
            >
              <Option id="00030" value="Option 1" />
              <Option id="00031" value="Option 2" />
              <Option id="00032" value="Option 3" />
            </Multiselect>
            <Multiselect
              id="prDeadlineMultiselect"
              emptyMessage="No options"
              itemMode="static"
              label="Deadline"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select options"
              showSelectionIndicator={true}
              wrapTags={true}
            >
              <Option id="00030" value="Option 1" />
              <Option id="00031" value="Option 2" />
              <Option id="00032" value="Option 3" />
            </Multiselect>
            <Multiselect
              id="prFeedbakStatusMultiselect"
              emptyMessage="No options"
              itemMode="static"
              label="Feedback Status"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select options"
              showSelectionIndicator={true}
              wrapTags={true}
            >
              <Option id="00030" value="Option 1" />
              <Option id="00031" value="Option 2" />
              <Option id="00032" value="Option 3" />
            </Multiselect>
          </View>
        </Container>
        <Container
          id="readyForCoachReview"
          _align="center"
          _gap="8px"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="readyForReviewTitleContainer"
              value="#### Ready for Coach Review"
              verticalAlign="center"
            />
            <TagsWidget2
              id="numberReadyforReviewTags"
              _colorByIndex={['{{ theme._tokensById["87f4c49a"] }}']}
              _hiddenByIndex={[false]}
              _iconByIndex={[""]}
              _ids={["9a414"]}
              _imageByIndex={[""]}
              _labels={[
                "{{ processedPRData.value.filter(l => l.isReady).length }}",
              ]}
              _textColorByIndex={[""]}
              _tooltipByIndex={[""]}
              _values={[
                "{{ processLearnerData.isFetching || allLearnersPRData.isFetching ? '...' : processedPRData.value.filter(l => l.isReady).length }}",
              ]}
              allowWrap={true}
              colorByIndex=""
              data=""
              hiddenByIndex=""
              iconByIndex=""
              imageByIndex=""
              itemMode="static"
              labels=""
              textColorByIndex=""
              tooltipByIndex=""
              value=""
              values=""
            />
            <Text
              id="subHeadReadyForCoachReviewText"
              value="Overdue or due within 7 days - learner and manager have submitted"
              verticalAlign="center"
            />
          </Header>
          <View id="00030" viewKey="View 1">
            <ListViewBeta
              id="learnerPRDetailsListView"
              data="{{ processedPRData.value.filter(l => l.isReady) }} "
              itemWidth="200px"
              margin="0"
              numColumns={3}
              padding="0"
            >
              <Container
                id="leanerPRdetailsContainer"
                _gap="0px"
                _justify="space-between"
                _type="stack"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                padding="12px"
                showBody={true}
                showHeader={true}
              >
                <Header>
                  <Text
                    id="learnerNameforPRContainer"
                    value="#### {{ item.fullName }}"
                    verticalAlign="center"
                  />
                  <TagsWidget2
                    id="overdueTag"
                    _colorByIndex={["{{ theme.danger }}"]}
                    _hiddenByIndex={[false]}
                    _iconByIndex={[""]}
                    _ids={["67bf1"]}
                    _imageByIndex={[""]}
                    _labels={[""]}
                    _textColorByIndex={[""]}
                    _tooltipByIndex={[""]}
                    _values={[
                      "{{ moment().diff(item.progress_review_summary.latest_progress_review.review_date, 'days') }}d overdue",
                    ]}
                    allowWrap={true}
                    colorByIndex=""
                    data=""
                    hidden="{{ 
  !item.progress_review_summary.latest_progress_review.review_date || 
  moment(item.progress_review_summary.latest_progress_review.review_date).isAfter(moment()) 
}}"
                    hiddenByIndex=""
                    horizontalAlign="right"
                    iconByIndex=""
                    imageByIndex=""
                    itemMode="static"
                    labels=""
                    textColorByIndex=""
                    tooltipByIndex=""
                    values=""
                  />
                  <TagsWidget2
                    id="syncTag"
                    _colorByIndex={[
                      "{{ item.progress_review_summary.latest_progress_review.async_recommendation ? '#E8F0FE' : '#F5F5F5' }}",
                    ]}
                    _hiddenByIndex={[false]}
                    _iconByIndex={[""]}
                    _ids={["e47bf"]}
                    _imageByIndex={[""]}
                    _labels={[""]}
                    _textColorByIndex={[
                      "{{ item.progress_review_summary.latest_progress_review.async_recommendation ? '#1A73E8' : '#424242' }}",
                    ]}
                    _tooltipByIndex={[""]}
                    _values={[
                      "{{ item.progress_review_summary.latest_progress_review.async_recommendation ? 'Async' : 'Sync' }}",
                    ]}
                    allowWrap={true}
                    colorByIndex=""
                    data=""
                    hiddenByIndex=""
                    horizontalAlign="right"
                    iconByIndex=""
                    imageByIndex=""
                    itemMode="static"
                    labels=""
                    textColorByIndex=""
                    tooltipByIndex=""
                    values=""
                  />
                </Header>
                <View id="00030" viewKey="View 1">
                  <Container
                    id="stack1"
                    _align="center"
                    _flexWrap={true}
                    _gap="0px"
                    _type="stack"
                    footerPadding="4px 12px"
                    headerPadding="4px 12px"
                    padding="12px"
                    showBody={true}
                  >
                    <View id="00030" viewKey="View 1">
                      <TagsWidget2
                        id="tags1"
                        _colorByIndex={["rgba(0, 0, 0, 0)"]}
                        _hiddenByIndex={[false]}
                        _iconByIndex={[
                          "{{ item.progress_review_summary.latest_progress_review.coach_completed_at ? '#137333' : '#757575' }}",
                        ]}
                        _ids={["d1c2f"]}
                        _imageByIndex={[""]}
                        _labels={["C"]}
                        _textColorByIndex={[
                          "{{ item.progress_review_summary.latest_progress_review.coach_completed_at ? '#137333' : '#757575' }}",
                        ]}
                        _tooltipByIndex={[""]}
                        _values={["Tag 1"]}
                        allowWrap={true}
                        colorByIndex=""
                        data=""
                        hiddenByIndex=""
                        iconByIndex=""
                        imageByIndex=""
                        itemMode="static"
                        labels=""
                        margin="8px 8px"
                        textColorByIndex=""
                        tooltipByIndex=""
                        values=""
                      />
                      <TagsWidget2
                        id="tags3"
                        _colorByIndex={["rgba(0, 0, 0, 0)"]}
                        _hiddenByIndex={[false]}
                        _iconByIndex={[
                          "{{ item.progress_review_summary.latest_progress_review.coach_completed_at ? '#137333' : '#757575' }}",
                        ]}
                        _ids={["d1c2f"]}
                        _imageByIndex={[""]}
                        _labels={["L"]}
                        _textColorByIndex={[
                          "{{ item.progress_review_summary.latest_progress_review.coach_completed_at ? '#137333' : '#757575' }}",
                        ]}
                        _tooltipByIndex={[""]}
                        _values={["Tag 1"]}
                        allowWrap={true}
                        colorByIndex=""
                        data=""
                        hiddenByIndex=""
                        iconByIndex=""
                        imageByIndex=""
                        itemMode="static"
                        labels=""
                        margin="8px 8px"
                        textColorByIndex=""
                        tooltipByIndex=""
                        values=""
                      />
                      <TagsWidget2
                        id="tags2"
                        _colorByIndex={["rgba(0, 0, 0, 0)"]}
                        _hiddenByIndex={[false]}
                        _iconByIndex={[
                          "{{ item.progress_review_summary.latest_progress_review.coach_completed_at ? '#137333' : '#757575' }}",
                        ]}
                        _ids={["d1c2f"]}
                        _imageByIndex={[""]}
                        _labels={["M"]}
                        _textColorByIndex={[
                          "{{ item.progress_review_summary.latest_progress_review.coach_completed_at ? '#137333' : '#757575' }}",
                        ]}
                        _tooltipByIndex={[""]}
                        _values={["Tag 1"]}
                        allowWrap={true}
                        colorByIndex=""
                        data=""
                        hiddenByIndex=""
                        iconByIndex=""
                        imageByIndex=""
                        itemMode="static"
                        labels=""
                        margin="8px 8px"
                        textColorByIndex=""
                        tooltipByIndex=""
                        values=""
                      />
                      <IconText
                        id="iconText34"
                        icon="bold/shopping-business-startup"
                        text="Hello {{ current_user.firstName || 'friend' }}!"
                      />
                    </View>
                  </Container>
                </View>
              </Container>
            </ListViewBeta>
          </View>
        </Container>
      </View>
    </Container>
  </Frame>
</Screen>
