const timestamp = {{currentTask.value?.date}};
const date = new Date(timestamp);

const due_date = date.toLocaleDateString("en-US", {
  month: "long",
  day: "numeric",
  year: "numeric",
});

const due_time = date.toLocaleTimeString("en-US", {
  hour: "2-digit",
  minute: "2-digit",
  hour12: false,
});

return { due_date, due_time };
