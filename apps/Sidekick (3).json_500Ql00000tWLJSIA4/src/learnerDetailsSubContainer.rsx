<Container
  id="learnerDetailsSubContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ !selectedEvent.value || allLearnersMasterList.isFetching || filteredLearnerList.isFetching || !filteredLearnerList.data || filteredLearnerList.data.length === 0 }}"
  loading=""
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <IconText
      id="attendeeNameIconText"
      icon="bold/interface-user-single"
      style={{
        fontSize: "h2Font",
        fontWeight: "h2Font",
        fontFamily: "h2Font",
        iconColor: "#4a90e2",
      }}
      text={'{{ item.learner.first_name + " " + item.learner.last_name }}'}
    />
    <Link
      id="backToLearnersLink"
      ariaLabel=""
      horizontalAlign="right"
      style={{ map: { text: "#4a90e2" } }}
      text="View learner details"
    >
      <Event
        id="1ccad208"
        event="click"
        method="openPage"
        params={{
          options: {
            passDataWith: "urlParams",
            globalVariable: "selected_user",
            globalVariableValue: "{{ item }}",
            setInOrSetValue: "Set value",
            queryParams: [
              { key: "apprenticeship_uuid", value: "{{ item.id }}" },
            ],
            persistUrlParams: true,
          },
          pageName: "indvidual_learner_view",
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="3c5f04cc"
        event="click"
        method="setValue"
        params={{ map: { value: "true" } }}
        pluginId="cameFromCoachDigestPage"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Text
      id="attendeeProfilesText"
      style={{
        fontSize: "labelEmphasizedFont",
        fontWeight: "labelEmphasizedFont",
        fontFamily: "labelEmphasizedFont",
      }}
      value="{{item.company.name}} . {{ item.
  job_title }} . {{ item.cohort.name }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Container
      id="discussionPointsContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{
        border:
          "{{ theme.mode === 'Dark' ? 'rgba(255, 255, 255, 0.1)' : '#D1E9FF' }}",
        background: "{{ theme.mode === 'Dark' ? '#1A2B3C' : '#E7F1FF' }}",
      }}
    >
      <Header>
        <Text
          id="discussionPointsTitleContainer3"
          style={{}}
          value="#### ⚡ AI Discussion Points For Today's Session"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text556"
          value={
            '{{ aiDiscussionPoints.value[item.id] || "Generating coaching insights..." }}'
          }
          verticalAlign="center"
        />
      </View>
    </Container>
    <Include src="./attendeeAtAGlanceContainer.rsx" />
    <Container
      id="progressReviewContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle169"
          value="####  📋 Progress Reviews"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Include src="./nextPRContainer.rsx" />
        <Include src="./lastPRContainer.rsx" />
      </View>
    </Container>
    <Container
      id="recentProjectsContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{}}
    >
      <Header>
        <Text
          id="recentProjectsTitleText"
          value="####  📝 Recent Project Submissions"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Container
          id="recentProjectDetailsContainer"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="recentProjectTitle"
              value={
                '#### {{ item.project_summary?.latest_project_submission?.project?.title ?? "No project title available" }}'
              }
              verticalAlign="center"
            />
            <TagsWidget2
              id="recentSubmittedProjectTag"
              _colorByIndex={[
                "{{ \n  (function() {\n    const grade = item.project_summary?.latest_project_submission_review?.details?.project_submission_grade;\n\n    if (!grade) return '#F3F4F6'; // Light grey for missing data\n    \n    const normalizedGrade = grade.toLowerCase();\n    if (normalizedGrade === 'pass') return '#10b981'; // Green\n    if (normalizedGrade === 'fail') return '#ef4444'; // Red\n    \n    return '#9ca3af'; // Medium gray for unknown status\n  })() \n}}",
              ]}
              _hiddenByIndex={[false]}
              _iconByIndex={[""]}
              _ids={["4aad8"]}
              _imageByIndex={[""]}
              _labels={[
                "{{ \n  (() => {\n    const grade = item.project_summary?.latest_project_submission_review?.details?.project_submission_grade;\n    \n    if (!grade) return 'No data';\n    if (grade.toLowerCase() === 'pass') return 'Pass';\n    if (grade.toLowerCase() === 'fail') return 'Fail';\n    \n    return grade; \n  })() \n}}",
              ]}
              _textColorByIndex={["rgba(255, 255, 255, 1)"]}
              _tooltipByIndex={[""]}
              _values={[
                "{{ item.project_summary?.latest_project_submission_review?.details?.project_submission_grade ?? null }}",
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
            <Text
              id="projectReviewNotesText"
              value="{{ 
  (() => {
    // 1. Point to the correct nested path in the new JSON
    const rawNotes = item.project_summary?.latest_project_submission_review?.details?.additional_notes || 'No review notes found'; 
    
    // 2. Strip HTML tags (like <p>) so it displays as plain text
    const cleanNotes = rawNotes.replace(/<[^>]*>?/gm, '');

    // 3. Set your character limit
    const limit = 400; 

    // 4. Trim and add ellipsis if too long
    return cleanNotes.length > limit 
      ? cleanNotes.substring(0, limit).trim() + '...' 
      : cleanNotes;
  })() 
}}"
              verticalAlign="center"
            />
            <Link
              id="latestProjectReviewUrlLink"
              ariaLabel=""
              hidden="{{ !item.project_summary.latest_project_submission_review.details.id }}"
              style={{ map: { text: "#4a90e2" } }}
              text="View Full Review "
            >
              <Event
                id="15349e39"
                event="click"
                method="openUrl"
                params={{
                  map: {
                    url: "https://my.multiverse.io/projects/coach/{{ item.coach.id }}/reviews/{{ item.project_summary.latest_project_submission_review.details.id }}",
                  },
                }}
                pluginId=""
                type="util"
                waitMs="0"
                waitType="debounce"
              />
            </Link>
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="latestCoachnotesContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{}}
    >
      <Header>
        <Text
          id="latestCoachNotesTitleContainer"
          value="#### 📌 Your Latest Coach Notes "
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="latestCoachNotesText"
          style={{}}
          value={
            "{{ \n  (function() {\n    const rawData = allLearnerNotes.value?.[item.id];\n    \n    if (!rawData || (Array.isArray(rawData) && rawData.length === 0)) {\n      return \"No latest notes found for this apprentice.\";\n    }\n\n    const notesArray = Array.isArray(rawData) ? rawData : [rawData];\n    \n    const fullNote = notesArray.map(n => {\n      // 1. Format the date\n      const d = new Date(n.created_at);\n      const dateStr = (n.created_at && !isNaN(d.getTime())) \n        ? d.toLocaleDateString('en-GB', { month: 'short', day: 'numeric', year: 'numeric' })\n        : \"Recent\";\n      \n      // 2. Format the content and handle line breaks\n      const content = (n.content || \"\").split('\\\\n').join('\\n').trim();\n      \n      // 3. Return date in grey spans (NO italics)\n      return `<span style=\"color: #999; font-size: 12px; font-weight: 500;\">${dateStr}</span>\\n${content}`;\n    }).join('\\n\\n...\\n\\n'); \n\n    // 4. Apply 10-line limit\n    const lines = fullNote.split('\\n');\n    if (lines.length > 10) {\n      return lines.slice(0, 10).join('\\n').trim() + \"...\";\n    }\n    \n    return fullNote;\n  })() \n}}"
          }
          verticalAlign="center"
        />
        <Link
          id="coachNotesHistoryLink"
          ariaLabel=""
          showUnderline="never"
          style={{ map: { text: "#4a90e2" } }}
          text="View Full Notes History ->"
        >
          <Event
            id="f2a88094"
            event="click"
            method="setValue"
            params={{ map: { value: "{{ item }}" } }}
            pluginId="selectedNotesLearner"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="3e45f449"
            event="click"
            method="show"
            params={{}}
            pluginId="drawerFrame4"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
  </View>
</Container>
