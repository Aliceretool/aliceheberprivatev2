if (!selectedTemplate.value) return;

const subject = selectedTemplate.value.subject;
const body = selectedTemplate.value.body;
const variables = selectedTemplate.value.variables;
const variableValues = Object.fromEntries(
  variables.map((variable) => [
    variable.name,
    _.get(inputCase.value, variable.case_path),
  ])
);

console.log('variables', variables);
console.log('variableValues', variableValues);

function replaceVariables(inputText, values) {
  return inputText.replace(/\{\{(.*?)\}\}/g, (match, variable) => {
    const trimmedVariable = variable.trim();
    const value = values[trimmedVariable];
    console.log(`Replacing {{${trimmedVariable}}} with:`, value); // Log replacement
    return value !== undefined ? value : match;
  });
}

if (type.value === "email") {
  const newSubject = replaceVariables(subject, variableValues);
  EmailSubject_Input.setValue(newSubject);
}

const newBody = replaceVariables(body, variableValues);

EmailBody_Input.setValue(newBody);
SMSBody_Input.setValue(newBody);

ConfirmTemplatePlacement_Modal.hide();
