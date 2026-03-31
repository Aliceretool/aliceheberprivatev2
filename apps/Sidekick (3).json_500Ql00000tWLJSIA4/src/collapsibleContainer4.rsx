<Container
  id="collapsibleContainer4"
  _direction="vertical"
  _gap="0px"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  loading="{{ getLearnerProjectData.isFetching | formatLearnerProjects.isFetching }}"
  overflowType="hidden"
  padding="12px"
  showHeader={true}
>
  <Header>
    <Image
      id="image11"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      src="{{ item.project.thumbnail }}"
    />
    <Text
      id="collapsibleTitle22"
      value="##### {{ item.project.title }}"
      verticalAlign="center"
    />
    <Text
      id="text613"
      heightType="fixed"
      horizontalAlign="center"
      overflowType="hidden"
      style={{ map: { background: "tokens/9eb5837d" } }}
      value="{{ item.project.state.label }}"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle12"
      hidden=""
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer4.showBody }}"
    >
      <Event
        id="5329ac67"
        event="change"
        method="setShowBody"
        params={{ map: { showBody: "{{ self.value }}" } }}
        pluginId="collapsibleContainer4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
    <Text
      id="text614"
      value="**Submitted:** {{ item.project.submission_submitted_at }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <ListViewBeta
      id="listView10"
      data="{{ item.project.tasks }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="collapsibleContainer5"
        _gap="0px"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        overflowType="hidden"
        padding="12px"
        showHeader={true}
      >
        <Header>
          <Text
            id="collapsibleTitle23"
            value="#### {{ item.heading.title }}"
            verticalAlign="center"
          />
          <ToggleButton
            id="collapsibleToggle13"
            horizontalAlign="right"
            iconForFalse="bold/interface-arrows-button-down"
            iconForTrue="bold/interface-arrows-button-up"
            iconPosition="replace"
            styleVariant="outline"
            text="{{ self.value ? 'Hide' : 'Show' }}"
            value="{{ collapsibleContainer5.showBody }}"
          >
            <Event
              id="83dbdc47"
              event="change"
              method="setShowBody"
              params={{ map: { showBody: "{{ self.value }}" } }}
              pluginId="collapsibleContainer5"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToggleButton>
        </Header>
        <View id="00030" viewKey="View 1">
          <Container
            id="container142"
            footerPadding="4px 12px"
            headerPadding="0"
            margin="0"
            padding="0"
            showBody={true}
            showBorder={false}
            showHeader="false"
          >
            <Header>
              <Text
                id="containerTitle172"
                value="#### Container title"
                verticalAlign="center"
              />
            </Header>
            <View id="00030" viewKey="View 1">
              <ListViewBeta
                id="listView11"
                data="{{ item.ksbs }}"
                heightType="auto"
                hidden="{{ !item.ksbs?.length }}"
                itemWidth="200px"
                margin="0"
                numColumns={3}
                padding="0"
              >
                <Container
                  id="container143"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  overflowType="hidden"
                  padding="12px"
                  showHeader={true}
                >
                  <Header>
                    <Text
                      id="containerTitle173"
                      value="**{{ item.tag }}:** {{ item.title}}"
                      verticalAlign="center"
                    />
                    <IconText
                      id="iconText36"
                      icon={
                        '{{\n  ["Exceeds expectations", "Meets expectations"].includes(item?.grade?.label)\n    ? "/icon:bold/interface-validation-check-circle-alternate"\n    : ["Below expectations", "Needs more work", "Mixed"].includes(item?.grade?.label)\n      ? "/icon:bold/interface-remove-circle-alternate"\n      : ""\n}}'
                      }
                      text="{{ item.grade.label }}"
                    />
                  </Header>
                  <View id="00030" viewKey="View 1" />
                </Container>
              </ListViewBeta>
              <HTML
                id="html37"
                css={include("../lib/html37.css", "string")}
                html="{{ item.content.html }}"
              />
            </View>
          </Container>
        </View>
      </Container>
    </ListViewBeta>
  </View>
</Container>
