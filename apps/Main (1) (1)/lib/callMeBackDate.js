const d = {{ CallMeBack_Date.value }};
const t = {{ CallMeBack_Time.value }};
let formattedTime;

if (moment(t).isValid()) {
  console.log('valid', t, moment(t))
  formattedTime = moment.utc(t).format("HH:mm");
  return moment.utc(`${d} ${formattedTime}`);
}
console.log('invalid', t, moment(t))

formattedTime = moment.utc(t, "HH:mm").format("HH:mm");
return moment(`${d} ${formattedTime}`);
