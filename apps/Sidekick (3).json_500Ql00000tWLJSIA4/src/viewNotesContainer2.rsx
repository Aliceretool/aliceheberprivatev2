<Container
  id="viewNotesContainer2"
  _gap="0px"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Avatar
      id="avatarNoteSubmittedBy2"
      imageSize={24}
      label=""
      margin="0"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ map: { background: "automatic" } }}
    />
    <Text
      id="noteSubmittedBy2"
      style={{
        fontSize: "labelEmphasizedFont",
        fontWeight: "labelEmphasizedFont",
        fontFamily: "labelEmphasizedFont",
      }}
      value="{{ item.author.first_name }} {{ item.author.last_name }}"
      verticalAlign="center"
    />
    <Text
      id="dateTimeSubmitted2"
      horizontalAlign="right"
      style={{ map: { color: "rgba(13, 13, 13, 0.65)" } }}
      value={'{{ moment(item.created_at).format("MMM D, YYYY h:mm A") }}'}
      verticalAlign="center"
    />
    <Divider id="titleMessageDivider3" />
    <Text
      id="noteTextContent2"
      value="{{ item.content}}"
      verticalAlign="center"
    />
    <Divider id="titleMessageDivider4" />
    <Text
      id="interventionTagsTitle4"
      hidden={
        '{{ item.content_type !== "support_factor" || !(item.support_factors && item.support_factors.length) }}'
      }
      value="**Support factors**"
      verticalAlign="center"
    />
    <TagsWidget2
      id="supportFactorTags2"
      allowWrap={true}
      colorByIndex="#FFDDC1"
      data="{{ item.support_factors }}"
      hidden={
        '{{ item.content_type !== "support_factor" || !(item.support_factors && item.support_factors.length) }}'
      }
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      labels=""
      style={{}}
      textColorByIndex=""
      tooltipByIndex=""
      values=""
    />
    <Text
      id="interventionTagsTitle3"
      hidden={
        '{{ \n  item.content_type !== "intervention" ||\n  !([item.intervention_action, item.intervention_type].filter(Boolean).length)\n}}'
      }
      value="**Intervention**"
      verticalAlign="center"
    />
    <TagsWidget2
      id="interventionTags2"
      allowWrap={true}
      colorByIndex="{{ theme.automatic[3] }}"
      data="{{ [item.intervention_action, item.intervention_type].filter(Boolean) }}
"
      hidden={
        '{{ \n  item.content_type !== "intervention" ||\n  !([item.intervention_action, item.intervention_type].filter(Boolean).length)\n}}'
      }
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      labels=""
      textColorByIndex=""
      tooltipByIndex=""
      values=""
    />
  </View>
</Container>
