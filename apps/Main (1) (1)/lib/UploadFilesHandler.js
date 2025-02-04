if (!UploadDocument_Button.value) return;

const files = Object.values(UploadDocument_Button.value);

  for (const file of files) {
    await GetDocumentsByCaseId.trigger();
    const name = await GetNotDuplicatedFilenameRecursive.trigger({
      additionalScope: {
        filename: file.name,
      },
    });

    const response = await UploadFile.trigger({
      additionalScope: {
        file: {
          ...file,
          name,
        },
      },
    });

    const { filename, url } = response;

    await CreateDocument.trigger({
      additionalScope: {
        filename,
        fileurl: url,
      },
    });
  }

await GetDocumentsByCaseId.trigger();