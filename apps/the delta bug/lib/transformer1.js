let wrong = {{arrayOfObjects.value[1].date}}
let parsedwrong = moment(wrong, "DD-MM-YYYY");

let formatted = parsedwrong.format("YYYY-MM-DD");
return formatted

