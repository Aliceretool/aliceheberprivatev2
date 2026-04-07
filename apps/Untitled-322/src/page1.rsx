<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="f1912286-fd14-488b-9ad9-3557728df23b"
>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
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
          value="xxxxx"
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
  </Frame>
</Screen>
