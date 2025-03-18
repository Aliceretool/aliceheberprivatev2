// filter out non-principals
let keyPersonnel = Object.values(formatKeyPersonnelList.data).filter(personnel => !personnel.isPrincipal);

// create a set to store unique titles
let uniqueTitlesSet = new Set();

keyPersonnel.forEach(personnel => {
  Object.values(personnel.title).forEach(title => {
    if (title) { // Check to avoid empty strings
      uniqueTitlesSet.add(title);
    }
  });
});

// Convert the Set back to an array to get the list of unique titles
let uniqueTitlesArray = Array.from(uniqueTitlesSet);
                                                       
return uniqueTitlesArray;