const json = JSON.stringify(getPathfinderAudit_issue.data.record[0])

// Extract headers
const headers = Object.keys(json).join(',');
console.log(headers)
// Extract values
const values = Object.values(json).map(value => value === null ? '' : `"${value}"`).join(',');
// Combine headers and values into CSV format
const csv = `${headers}\n${values}`;
// Write CSV to file

console.log('CSV file has been created.');