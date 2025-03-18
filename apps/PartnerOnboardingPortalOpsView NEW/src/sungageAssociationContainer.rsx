<Container
  id="sungageAssociationContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="sungageAssociationContainerTitle"
      marginType="normal"
      value="#### Sungage Association Search"
      verticalAlign="center"
    />
  </Header>
  <View id="bde3c" viewKey="View 1">
    <Spacer id="spacer11" marginType="normal" />
    <Date
      id="sungageAssocSearchCompletedDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Sungage Association Search Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.hasOwnProperty(\"sungageAssociationSearchCompleted\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInstallerAppCaf.data === null ? null : GetInstallerAppCaf.data.sungageAssociationSearchCompleted }}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "sungageAssociationSearchCompleted", GetInstallerAppCaf.data?.sungageAssociationSearchCompleted, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <TextArea
      id="sungageAssociationSearchNotes"
      autoResize={true}
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Sungage Association Search Notes"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      placeholder="Notes go here"
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.hasOwnProperty(\"sungageAssociationSearchNotes\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInstallerAppCaf.data === null ? null : GetInstallerAppCaf.data.sungageAssociationSearchNotes }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "sungageAssociationSearchNotes", GetInstallerAppCaf.data?.sungageAssociationSearchNotes, self.value || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Spacer id="spacer12" marginType="normal" />
  </View>
</Container>
