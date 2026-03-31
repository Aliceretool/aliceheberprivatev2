<Screen
  id="NBA_Actions"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={16}
  _searchParams={[]}
  browserTitle={null}
  title={null}
  urlSlug={null}
  uuid="c9371809-4d26-4866-8b2b-7f8079030f07"
>
  <Frame
    id="$main16"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="welcomeText"
      value="# Welcome back, Coach Jane."
      verticalAlign="center"
    />
    <Text
      id="text560"
      style={{ fontSize: "16px", fontWeight: "700", fontFamily: "Inter" }}
      value="✨ **My Next Best Actions**"
      verticalAlign="center"
    />
    <ListViewBeta
      id="listView8"
      data={
        "{{ \n[\n  { \n    rectype: 'Retention Risks', \n    subject: 'Reach out to priority learners', \n    subtext: 'Check out prioritized list of learners showing signs of withdrawal.',\n    priority: 'High Priority',\n    action: \"Open\",\n    color: '#EF4444' \n  },\n  { \n    rectype: 'Compliance & Regulations', \n    subject: 'Review compliance requirements', \n    subtext: 'Urgent compliance actions required (EOLs, funding requirements).',\n    priority: 'Medium Priority',\n    action: \"Coming Soon\",\n    color: '#F59E0B' \n  },\n  { \n    rectype: 'Professional Development', \n    subject: 'CPD session feedback', \n    subtext: 'Feedback on recent coaching sessions and professional growth opportunities.',\n    priority: 'Low Priority',\n    action: \"Coming Soon\",\n    color: '#3B82F6' \n  }\n] \n}}"
      }
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./container129.rsx" />
    </ListViewBeta>
  </Frame>
</Screen>
