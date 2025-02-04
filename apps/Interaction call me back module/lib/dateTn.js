const d = {{ CallMeBack_Date.value }};
const t = {{ CallMeBack_Time.value }};
let formattedTime;

if (moment(t).isValid()) {
  formattedTime = moment(t).format("HH:mm");
  return moment(`${d} ${formattedTime}`);
}

formattedTime = moment(t, "HH:mm").format("HH:mm");
return moment.utc(`${d} ${formattedTime}`);
