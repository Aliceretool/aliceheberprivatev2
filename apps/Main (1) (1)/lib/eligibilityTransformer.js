const selectedUuid = {{ Contract_Form_Eligibility.value }}
const eligibilityData = {{ Contract_Form_Eligibility.data }}
 
const selectedEligiblity = eligibilityData.filter(item=>item.id === selectedUuid)
 
return selectedEligiblity[0].name;