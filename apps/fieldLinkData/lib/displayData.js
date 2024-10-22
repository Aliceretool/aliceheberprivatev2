const data = {{ fieldData.value }}
const subData = {{ fieldSubData.value }}

if (!!data && !!subData) {
  return `${data}（${subData}）`;
}
if (!!data) {
  return data;
}
if (!!subData) {
  return `-（${subData}）`;
}

return '-';