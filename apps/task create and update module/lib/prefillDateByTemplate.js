const dateRange = date_range;

const match = dateRange.match(/\+(\d+)h(\d*)/);
const hoursToAdd = parseInt(match[1], 10) || 0;
const minutesToAdd = parseInt(match[2], 10) || 0;

const now = new Date();

const updatedDate = new Date(
  now.getTime() + hoursToAdd * 60 * 60 * 1000 + minutesToAdd * 60 * 1000
);

const timestamp = updatedDate.getTime();

const dateFromTimestamp = new Date(timestamp);

const dueDate = moment(dateFromTimestamp).format("YYYY-MM-DD");

const dueTime = moment(dateFromTimestamp).format("HH:mm:ss.SSS");

return { dueDate, dueTime };
