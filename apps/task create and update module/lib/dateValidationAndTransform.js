const now = moment();
const selectedDate = moment({{ form.data.dueDate}});

if (selectedDate.isSame(now, "day")) {
  const minTime = now
    .clone()
    .add(15 - (now.minute() % 15), "minutes")
    .startOf("minute");
  return minTime.format("HH:mm");
} else {
  return "00:00";
}
