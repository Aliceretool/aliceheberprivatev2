const uploadAvatarSaveURL = async () => {
  let key = `${userID.value}/${uuid.v4()}-${fileInput1.value[0].name}`
  
  await uploadS3.trigger({
    additionalScope: {
      fileName: key
    }
  })

  let signed_URL = ""
  await getSignedURL.trigger({
    additionalScope: {
      keyValue: key
    },
    onSuccess: function(data) {
      console.log('data',data)
      signed_URL = data.signedUrl
    }
  })

  console.log('signed_URL ',signed_URL)

  await updUser.trigger({
    additionalScope: {
      avatarURL: signed_URL
    }
  })

  await refresh.trigger()
}
uploadAvatarSaveURL()