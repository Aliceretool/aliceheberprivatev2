<Modal
  id="searchBarResultsModal"
  buttonText="Open Modal"
  events={[
    {
      ordered: [
        { event: "close" },
        { type: "widget" },
        { method: "clearValue" },
        { pluginId: "searchBar" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
        { id: "3cf81ea2" },
      ],
    },
  ]}
  hidden="true"
  modalHeight="760px"
  modalHeightType="auto"
  modalWidth="78%"
>
  <Image
    id="fleetyProfilePic"
    aspectRatio="1"
    dbBlobId="b3ff75a7-1002-4815-bda7-8bdaee71ca49"
    fit="contain"
    horizontalAlign="center"
    marginType="normal"
    src="https://static.wikia.nocookie.net/pixar/images/d/d3/Doc-Hudson-Render.png/revision/latest?cb=20210904174220"
    srcType="dbBlobId"
    style={{ ordered: [{ borderRadius: "50%" }] }}
  >
    <Event
      id="e4a01495"
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="chatGPTJoke"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Image>
  <Form
    id="fleetyFeedbackForm"
    footerPadding="4px 12px"
    footerPaddingType="normal"
    headerPadding="4px 12px"
    headerPaddingType="normal"
    hidden="{{ handleAskFleety.isFetching }}"
    marginType="normal"
    padding="12px"
    paddingType="normal"
    requireValidation={true}
    resetAfterSubmit={true}
    showBody={true}
    style={{ ordered: [] }}
  >
    <Text
      id="fleetFeedbackFormTitle"
      marginType="normal"
      value="##### How did I do?"
      verticalAlign="center"
    />
    <Rating
      id="fleetyRating"
      icons="faces"
      label=""
      labelAlign="right"
      marginType="normal"
      max={5}
      required={true}
      style={{ ordered: [{ checkedBackground: "#f2bd3b" }] }}
      value="0"
    />
    <Text
      id="fleetyRatingText"
      marginType="normal"
      value="###### {{ fleetyRatingLabel.value.label }}"
      verticalAlign="center"
    />
    <TextArea
      id="fleetingFeedbackComment"
      autoResize={true}
      label=""
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Please tell me more and help me improve :)"
    />
    <Button
      id="submitFeedbackBtn"
      marginType="normal"
      style={{ ordered: [] }}
      styleVariant="outline"
      submit={true}
      submitTargetId="fleetyFeedbackForm"
      text="Submit"
    />
    <Event
      id="c781f90b"
      enabled=""
      event="submit"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="updateFleetyFeedback"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Form>
  <Text
    id="fleetyIntro"
    marginType="normal"
    value="#### 👋 Hey {{ current_user.firstName || 'friend' }}, Fleety here.
**I am looking for an answer to your question, if you can give me a sec.. 😊**"
    verticalAlign="center"
  />
  <Text
    id="fleetyResponse"
    marginType="normal"
    style={{ ordered: [{ background: "rgba(29, 75, 112, 1)" }] }}
    value={
      "<div style=\"padding:5px\">\n  <b>Fleety: </b>{{ chatGPTPrompt.isFetching ? '💬 Thinking...' : chatGPTPrompt.data?.message || 'Sorry, I don\\'t know how to help with that 😢' }}\n  <br>\n  <span style=\"display: {{ chatGPTPrompt.isFetching ? 'none' : '' }}\"><b>Fleety: </b>I found the following matches from Confluence</span>\n</div>\n"
    }
    verticalAlign="center"
  />
  <Spacer id="spacer1" marginType="normal" />
  <ListView
    id="fleetyResultsListView"
    instances="{{ queryVectorDB.data.length }}"
    margin="0"
    marginType="none"
    padding="0"
    paddingType="none"
    showBorder={false}
    showDropShadow={false}
  >
    <Container
      id="linkCard1"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
    >
      <Text
        id="containerTitle1"
        marginType="normal"
        showInEditor={true}
        style={{
          ordered: [{ color: "{{ linkCard1.hovered ? theme.primary : '' }}" }],
        }}
        value="**{{ queryVectorDB.data[i].metadata.author }}** ({{ (queryVectorDB.data[i].score * 100).toPrecision(2) }}%)"
        verticalAlign="center"
      />
      <Text
        id="containerFooter1"
        horizontalAlign="right"
        marginType="normal"
        style={{
          ordered: [{ color: "{{ linkCard1.hovered ? theme.primary : '' }}" }],
        }}
        value="**Visit -->**"
        verticalAlign="center"
      />
      <Text
        id="containerTitle2"
        marginType="normal"
        value="{{ queryVectorDB.data[i].text.substr(0, 500) + '...' }}"
        verticalAlign="center"
      />
      <Event
        id="db38a42b"
        event="click"
        method="openUrl"
        params={{
          ordered: [{ url: "{{ queryVectorDB.data[i].metadata.url }}" }],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
  </ListView>
</Modal>
