const interactions = {{ GetInteractionsWithCalls.data }};

return interactions.map((interaction) => {
  const { call } = interaction;
  const momentDate = moment(call.created_at);
  const date = momentDate.format("DD MMM YYYY");
  const [hours, minutes] = momentDate.format("HH mm").split(" ");
  const time = `${hours}h${minutes}`;
  
  
  const waitingTime = interaction.call.waiting_time;
  const product = "Dummy Product";

  return {
    ...call,
    interaction,
    status: _.upperCase(interaction.status),
    dateTimeLabel: `${date} ${time}`,
    product,
    waitingTime,
    waitingTimeLabel: parseWaitingTime(waitingTime),
  };
});

function parseWaitingTime(seconds) {
  const hours = Math.floor(seconds / 3600);
  let remainingSeconds = seconds % 3600;
  const minutes = Math.floor(remainingSeconds / 60);
  remainingSeconds = remainingSeconds % 60;

  const formattedString = `${hours.toString().padStart(2, "0")}H${minutes
    .toString()
    .padStart(2, "0")}M${remainingSeconds.toString().padStart(2, "0")}S`;
  return formattedString;
};