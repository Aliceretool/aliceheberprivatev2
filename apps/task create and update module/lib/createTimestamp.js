const date = moment({{  form.data.dueDate}},"YYYY-MM-DD");
const time = moment( {{  form.data.dueTime}}, "HH:mm:ss.SSS");

date.set({
  hour: time.get("hour"),
  minute: time.get("minute"),
  second: time.get("second"),
  millisecond: time.get("millisecond"),
});

return date.valueOf();
