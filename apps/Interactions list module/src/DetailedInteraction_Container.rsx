<Container
  id="DetailedInteraction_Container"
  footerPadding="4px 12px"
  headerPadding="5px 0 0 0"
  hidden="{{ !selectedInteraction.value }}"
  hoistFetching={true}
  margin="1px"
  padding="12px"
  showBody={true}
  showHeader={true}
  showHeaderBorder={false}
>
  <Header>
    <Include src="./DetailedInteraction_ActionsContainer.rsx" />
  </Header>
  <View id="98b1a" viewKey="View 1">
    <Container
      id="stack3"
      _gap="10px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="6a76d" viewKey="View 1">
        <Text
          id="DetailedInteraction_From"
          margin="8px 8px 4px 8px"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="From: {{ selectedInteraction.value?.from }}"
          verticalAlign="center"
        />
        <Select
          id="IdentifyContact_Select"
          captionByIndex="{{ item.firstName }} {{ item.lastName }}"
          data="{{ selectedInteractionContacts.value }}"
          disabled="{{ !selectedInteraction.value.case }}"
          emptyMessage="No contacts linked to the case"
          label=""
          labelPosition="top"
          labels="{{ item.role.name }}"
          margin="0"
          overlayMaxHeight={375}
          placeholder="Identify contact"
          showClear={true}
          showSelectionIndicator={true}
          style={{ ordered: [{ borderRadius: "50px" }] }}
          tooltipText={
            '{{ !selectedInteraction.value.case ? "Please attach the interaction to a Case before identifying the contact" : "" }}'
          }
          value="{{ selectedInteraction.value.contact?.id }}"
          values="{{ item.id }}"
        >
          <Event
            event="change"
            method="trigger"
            params={{
              ordered: [
                {
                  options: { ordered: [{ additionalScope: { ordered: [] } }] },
                },
              ],
            }}
            pluginId="handleContactChange"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
      </View>
    </Container>
    <Container
      id="DetailedInteraction_FlagsContainer"
      _align="center"
      _gap="8px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden=""
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="a4bf7" viewKey="View 1">
        <Container
          id="stack1"
          _direction="vertical"
          _gap="5px"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
        >
          <View id="b7052" viewKey="View 1">
            <Select
              id="InteractionStatus_Select"
              data="{{ FetchInteractionStatuses.data }}"
              disabledByIndex="{{ !statusAvailability.value[item.id].isAvailable }}"
              emptyMessage="No options"
              label=""
              labelPosition="top"
              labels="{{ _.startCase(item.name) }}"
              loading="{{ UpdateInteractionStatus.isFetching }}"
              margin="0"
              overlayMaxHeight={375}
              readOnly=""
              searchMode="disabled"
              showSelectionIndicator={true}
              style={{
                ordered: [
                  { fontSize: "labelEmphasizedFont" },
                  { fontWeight: "labelEmphasizedFont" },
                  { fontFamily: "labelEmphasizedFont" },
                  { borderRadius: "50px" },
                ],
              }}
              tooltipByIndex="{{ 
!statusAvailability.value[item.id].isAvailable ?statusAvailability.value[item.id].tooltip : undefined }}"
              value="{{ interactions.value.find((interaction) => interaction.id === selectedInteraction.value.id)?.statusId }}"
              values="{{ item.id }}"
            >
              <Event
                event="change"
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
                pluginId="handleStatusChange"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Select>
          </View>
        </Container>
        <Icon
          id="DetailedInteraction_HasAttachments"
          hidden="{{ !selectedInteraction.value?.hasAttachments }}"
          horizontalAlign="center"
          icon="bold/interface-edit-attachment-2"
          margin="0 4px"
          style={{ ordered: [] }}
        />
        <Icon
          id="DetailedInteraction_Important"
          hidden="{{ !selectedInteraction.value?.isImportant }}"
          horizontalAlign="center"
          icon="bold/interface-alert-warning-circle"
          margin="0 4px"
          style={{ ordered: [] }}
        />
      </View>
    </Container>
    <Text
      id="DetailedInteraction_To"
      margin="0px 8px 4px 8px"
      style={{
        ordered: [
          { fontSize: "labelFont" },
          { fontWeight: "labelFont" },
          { fontFamily: "labelFont" },
        ],
      }}
      value="To: {{ selectedInteraction.value?.to }}"
      verticalAlign="center"
    />
    <Container
      id="container1"
      _align="end"
      _direction="vertical"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="67e74" viewKey="View 1">
        <Text
          id="DetailedInteraction_Timestamp"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="{{ selectedInteraction.value?.detailedTimestamp }}"
          verticalAlign="center"
        />
        <Text
          id="text1"
          margin="0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Waiting time: {{ selectedInteraction.value.waitingTime }}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Include src="./Information_Container2.rsx" />
    <Text
      id="CallContext_Text"
      hidden="{{ !selectedInteraction.value.content || selectedInteraction.value.type !== INTERACTION_TYPE.value.CALL }}"
      margin="12px 8px"
      value="Context"
      verticalAlign="center"
    />
    <Text
      id="DetailedInteraction_Content"
      hidden="{{ !selectedInteraction.value.content?.length }}"
      style={{ ordered: [{ color: "rgba(0, 35, 156, 0.6)" }] }}
      value="{{ selectedInteraction.value?.content }}"
      verticalAlign="center"
    />
    <ListViewBeta
      id="DetailedInteraction_AttachmentsList"
      data="{{ selectedInteraction.value?.attachments ?? [] }}"
      heightType="auto"
      hidden="{{ !hasAttachments.value }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0 0 0 12px"
    >
      <Container
        id="DetailedInteraction_AttachmentsContainer"
        _align="center"
        _gap="0"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0 0 4px 0"
        padding="0"
        showBody={true}
        showBorder={false}
      >
        <View id="60aca" viewKey="View 1">
          <Button
            id="DetailedInteraction_AttachmentDownload"
            heightType="auto"
            iconBefore="bold/interface-download-button-2"
            margin="0 0 0 20px"
            style={{
              ordered: [
                { border: "rgba(207, 207, 207, 0)" },
                { fontSize: "h5Font" },
                { fontWeight: "h5Font" },
                { fontFamily: "h5Font" },
              ],
            }}
            styleVariant="outline"
          />
          <Icon
            id="DetailedInteraction_AttachmentIcon"
            horizontalAlign="center"
            icon="bold/interface-edit-attachment-2"
          />
          <Text
            id="DetailedInteraction_AttachmentName"
            style={{
              ordered: [
                { fontSize: "labelFont" },
                { fontWeight: "labelFont" },
                { fontFamily: "labelFont" },
              ],
            }}
            value="<u>{{ item.filename }}</u>"
            verticalAlign="center"
          />
        </View>
      </Container>
    </ListViewBeta>
    <Text
      id="DetailedInteraction_AttachmentsTitle"
      hidden="{{ !selectedInteraction.value.atachments }}"
      style={{
        ordered: [
          { fontSize: "h6Font" },
          { fontWeight: "h6Font" },
          { fontFamily: "h6Font" },
        ],
      }}
      value="{{ selectedInteraction.value?.attachments.length }} Attachments"
      verticalAlign="center"
    />
    <Divider
      id="divider5"
      hidden="{{ !hasAttachments.value }}"
      margin="{{ !hasAttachments.value ? 0 : 20 }}px 8px 4px 8px"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
    />
  </View>
</Container>
