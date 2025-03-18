let indices = Object.keys(newStateLicenseList.value)
let stateLicenseArr = [];
for(let i=0; i<indices.length; i++){
  stateLicenseArr[i] = newStateLicenseList.value[indices[i]]
}
return stateLicenseArr