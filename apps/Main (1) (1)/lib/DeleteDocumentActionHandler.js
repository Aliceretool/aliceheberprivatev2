await DeleteDocument.trigger({
  additionalScope: {
    document_id
  }
})

await GetDocumentsByCaseId.trigger();