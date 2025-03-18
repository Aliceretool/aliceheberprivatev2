let usersByTitle = GetInstallerAppUsers.data?.installerApplicationUsers?.reduce((result, user) => {
  user.title = user.title.split("; ");

  user.title.forEach(title => {
    result[title] = user;
  });

  return result;
}, {});


return usersByTitle

// // PART-1296 need to disable subsequent key personnel background check fields
// let allKeyPersonnelTitles = Object.keys(usersWithSingleTitle);
// let kpNotOwners = allKeyPersonnelTitles.map((title) => {
//   if(usersWithSingleTitle[title].isOwner === false){
//     return usersWithSingleTitle[title]
//   }
// })
// let titleToShowBackgroundCheckFields = kpNotOwners[Object.keys(kpNotOwners)[0]];
// console.log(titleToShowBackgroundCheckFields)