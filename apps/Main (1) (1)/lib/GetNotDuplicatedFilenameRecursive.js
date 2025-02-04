const existedFileNames = GetDocumentsByCaseId.data.map((doc) => doc.filename);
let newFilename = filename;
let i = 1;
while (existedFileNames.includes(newFilename)) {
  const splittedName = filename.split('.');
  const ext = splittedName.pop();
  newFilename = `${splittedName.join('.')} (${i}).${ext}`;
  i++;
}
return newFilename;