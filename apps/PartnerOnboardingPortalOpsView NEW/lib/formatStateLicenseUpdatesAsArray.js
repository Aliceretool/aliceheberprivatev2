let indices = Object.keys(stateLicensesUpdates.value)
let stateUpdateArr = [];
for(let i=0; i<indices.length; i++){
  stateUpdateArr[i] = stateLicensesUpdates.value[indices[i]]
}
return stateUpdateArr
