let states = GetStateLicenseConfig.data;
let licenses = GetStateLicenses.data;
for(let i = 0; i < states.length ; i++){
  states[i].stateLicenses = []
  for(let j = 0; j < licenses.length; j++){
    if(states[i].state === licenses[j].state && !licenses[j].removedAt){
      states[i].stateLicenses.push(licenses[j]);
    }
  }
}
return states