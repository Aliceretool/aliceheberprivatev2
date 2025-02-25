await ChangeDocumentStatus.trigger({
  additionalScope: {
    status,
    document_id
  }
})

await GetDocumentsByCaseId.trigger();