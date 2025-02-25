const retarusData = await SendSMS.trigger();

if(!retarusData || !retarusData?.jobId) {
  utils.showNotification({
    title: 'SMS not sent',
    description: 'Error occurs during sms sending. Please try again',
    notificationType: 'error',
  })
}

const smsData = await CreateSmsInteraction.trigger({
  additionalScope: {
    jobId: retarusData.jobId
  }
})

utils.showNotification({
    title: 'SMS successfully sent',
    description: '',
    notificationType: 'success',
  })

await onSubmit.trigger();