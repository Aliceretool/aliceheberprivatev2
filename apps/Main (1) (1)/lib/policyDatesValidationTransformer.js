let startDate = {{ Contract_Form_PolicyStart_Date.value }}
let endDate = {{ Contract_Form_PolicyEnd_Date.value }}

if(endDate && startDate && new Date(startDate) > new Date(endDate)) { 
  return 'End date can not be prior to Start date';
} else {
  return '';
}