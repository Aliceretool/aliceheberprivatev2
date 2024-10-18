let output = {{ format_audit_for_timeline.value }}
// Filter out items that do not have the 'statusValue' property
output = output.filter(item => item.hasOwnProperty('statusValue') && item.op != 'INSERT');

const currentTime = moment().toISOString();
  for (let i = 0; i < output.length; i++) {
    const currentTs = i==0?moment(currentTime):moment(output[i-1].ts);
    const previousTs = moment(output[i].ts);
    const duration = moment.duration(currentTs.diff(previousTs));
    let timeInStatus = [];
  if (duration.days() > 0) timeInStatus.push(`${duration.days()} d`);
  if (duration.hours() > 0) timeInStatus.push(`${duration.hours()} h`);
  if (duration.minutes() > 0) timeInStatus.push(`${duration.minutes()} m`);
  if (duration.seconds() > 0) timeInStatus.push(`${duration.seconds()} s`);
  output[i].timeInStatus = timeInStatus.join(', ');


}
console.log(output)
return output