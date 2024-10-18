const getUser_closeModal = async () => {
  await modal_addAvatar.close()
  await getUser14.trigger()
}
getUser_closeModal()