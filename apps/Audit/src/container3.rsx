<Container
  id="container3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Image
      id="circularImage3"
      aspectRatio={1}
      horizontalAlign="center"
      retoolFileObject="{{ getAvatarUrl.data.avatarURL[getAvatarUrl.data.email.indexOf(format_audit_for_timeline.value[i].createdBy)]}}"
      src="{{ getAvatarUrl.data.avatarURL[getAvatarUrl.data.email.indexOf(format_audit_for_timeline.value[0].created_by)]}}"
      style={{ ordered: [{ borderRadius: "50%" }] }}
    />
    <Text
      id="containerTitle3"
      value={
        " {{ getAvatarUrl.data.firstName[getAvatarUrl.data.email.indexOf(format_audit_for_timeline.value[0].created_by)]}} {{ getAvatarUrl.data.lastName[getAvatarUrl.data.email.indexOf(format_audit_for_timeline.value[0].created_by)]}}  {{ format_audit_for_timeline.value[i].op==\"UPDATE\"?'made transitions':'created' }} - {{ moment(format_audit_for_timeline.value[i].ts).format('DD/MMM/YYYY HH:mm')}}"
      }
      verticalAlign="center"
    />
  </Header>
  <View id="d4546" viewKey="View 1">
    <Text
      id="text49"
      style={{ ordered: [] }}
      value="**Transition**"
      verticalAlign="center"
    />
    <Text
      id="text50"
      hidden=""
      horizontalAlign="center"
      value="**Time in status**"
      verticalAlign="center"
    />
    <Text
      id="text54"
      horizontalAlign="center"
      style={{ ordered: [] }}
      value="{{ formatTransitions.value[i].statusValue.old_value }} -> {{ formatTransitions.value[i].statusValue.new_value }}"
      verticalAlign="center"
    />
    <Text
      id="text53"
      hidden=""
      horizontalAlign="center"
      value="{{ formatTransitions.value[i].timeInStatus }}"
      verticalAlign="center"
    />
  </View>
</Container>
