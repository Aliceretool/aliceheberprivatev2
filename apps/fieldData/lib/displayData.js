const data = {{ fieldData.value }}
const subData = {{ fieldSubData.value }}

let formattedData = data;
switch({{ format.value }}) {
  case "boolean":
    formattedData = _.isBoolean(data) ? (data ? "はい" : "いいえ") : null;
    break;
  case "status":
    formattedData = {
      CURRENT: "承認済み",
      IN_REVIEW: "承認待ち",
      REJECTED: "却下",
    }[data];
    break;
  case "datetime": {
    const date = moment(data);
    formattedData = date.isValid() ? moment(data).format("yyyy-MM-DD HH:mm:ss") : null;
    break;
  }
  case "number": {
    formattedData = _.isNumber(data) ? String(data) : null;
    break;
  }
}

if (!_.isEmpty(formattedData) && !_.isEmpty(subData)) {
  return `${formattedData}（${subData}）`;
}
if (!_.isEmpty(formattedData)) {
  return formattedData;
}
if (!_.isEmpty(subData)) {
  return `-（${subData}）`;
}

return '-';