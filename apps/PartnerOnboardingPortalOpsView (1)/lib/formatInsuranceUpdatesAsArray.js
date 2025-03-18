let indices = Object.keys(insuranceUpdates.value)
let insuranceArr = [];
for(let i=0; i<indices.length; i++){
  insuranceArr[i] = insuranceUpdates.value[indices[i]]
}
return insuranceArr
