const files = fileInput1.value;

// When file widgets allow multiple files, several onChange events may be fired, e.g. if user drags in files one at a time. Check previous uploads to avoid unnecessarily re-uploading.
const prevData = uploadManager_query2.data;

// Loop through the files and upload as needed.
const uploadedFiles = [];

for (const file of files) {
  // Match previously uploaded by file name and size.
  const match = prevData?.find((prevFile) => {
    return (
      prevFile._originalName === file.name &&
      prevFile.sizeBytes === file.sizeBytes
    );
  });

  if (match) {
    uploadedFiles.push(match);
  } else {
    const uploadedFile = await retoolStorageUpload_query1.trigger({
      // `additionalScope` is used to pass each file's data to the upload query. Learn more at https://docs.retool.com/queries/guides/javascript/#trigger-a-query
      additionalScope: {
        file: {
          name: file.name,
          base64Data: file.base64Data,
        },
      },
    });

    if (!uploadedFile || !uploadedFile.id) {
      let errMsg = "Upload query failed.";
      if (retoolStorageUpload_query1.actionType !== "upload") {
        errMsg += " Action type should be 'Upload File'.";
      }
      if (retoolStorageUpload_query1.uploadBy !== "programmatic") {
        errMsg +=
          " File source should be programmatic with source '\{\{file.base64Data}}' and name '\{\{file.name}}'";
      }
      throw new Error(errMsg);
    }

    // File name is different if there was a collision (or otherwise changed)
    uploadedFile._originalName = file.name;
    uploadedFiles.push(uploadedFile);
  } 
}

return uploadedFiles
