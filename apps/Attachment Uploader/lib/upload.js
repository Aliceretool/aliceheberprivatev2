const uploadFromDropzone = async () => {
  for(let i=0; i < fileDropzone1.value.length;i++) {
    console.log('contentType', fileDropzone1.value[i].type)
    console.log('fileName', `${project.value}/${issueId.value}/${fileDropzone1.value[i].name.split('.')[0]}-${uuid.v4()}.${fileDropzone1.value[i].name.split('.')[1]}`)
    await uploadS3.trigger({
      additionalScope: {
        contentType: fileDropzone1.value[i].type,
        fileName: `${project.value}/${issueId.value}/${uuid.v4()}${fileDropzone1.value[i].name}`,
        fileData: fileDropzone1.value[i].base64Data
      }
    })
  }
  await fileDropzone1.clearValue()
  await refresh.trigger()
}
uploadFromDropzone()