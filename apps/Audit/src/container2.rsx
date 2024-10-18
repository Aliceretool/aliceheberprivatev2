<Container
  id="container2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Image
      id="circularImage2"
      aspectRatio={1}
      horizontalAlign="center"
      retoolFileObject="{{ getAvatarUrl.data.avatarURL[getAvatarUrl.data.email.indexOf(format_audit_for_timeline.value[i].createdBy)]}}"
      src="{{ getAvatarUrl.data.avatarURL[getAvatarUrl.data.email.indexOf(format_audit_for_timeline.value[0].created_by)]}}"
      style={{ ordered: [{ borderRadius: "50%" }] }}
    />
    <Text
      id="containerTitle2"
      value={
        " {{ getAvatarUrl.data.firstName[getAvatarUrl.data.email.indexOf(format_audit_for_timeline.value[0].created_by)]}} {{ getAvatarUrl.data.lastName[getAvatarUrl.data.email.indexOf(format_audit_for_timeline.value[0].created_by)]}}  {{ format_audit_for_timeline.value[i].op==\"UPDATE\"?'made changes':'created' }} - {{ moment(format_audit_for_timeline.value[i].ts).format('DD/MMM/YYYY HH:mm')}}"
      }
      verticalAlign="center"
    />
  </Header>
  <View id="96699" viewKey="View 1">
    <Text
      id="text42"
      hidden="{{ item.differencesNoID[0].field == 'No edits made' }}"
      style={{ ordered: [] }}
      value="**Field**"
      verticalAlign="center"
    />
    <Text
      id="text43"
      hidden="{{ item.differencesNoID[0].field == 'No edits made' }}"
      value="**Original Value**"
      verticalAlign="center"
    />
    <Text
      id="text44"
      hidden="{{ item.differencesNoID[0].field == 'No edits made' }}"
      value="**New Value**"
      verticalAlign="center"
    />
    <Text
      id="text58"
      hidden="{{ item.differencesNoID[0].field != 'No edits made' }}"
      value="Opened, but saved without edits"
      verticalAlign="center"
    />
    <ListViewBeta
      id="listView4"
      _primaryKeys=""
      data="{{ item.differencesNoID }}"
      enableInstanceValues={true}
      heightType="auto"
      hidden="{{ item.differencesNoID[0].field == 'No edits made' }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Text id="text45" value="{{ item.field }}" verticalAlign="center" />
      <Text id="text46" value="{{ item.old_value }}" verticalAlign="center" />
      <Text id="text47" value="{{ item.new_value}}" verticalAlign="center" />
      <Divider id="divider2" />
    </ListViewBeta>
  </View>
</Container>
