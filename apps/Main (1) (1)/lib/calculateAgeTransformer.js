const today = new Date();
const birth = new Date({{Beneficiary_Form_Birthdate_Date.value}});

if(!birth.getTime()) return 'Unknown';

let age = today.getFullYear() - birth.getFullYear();
const monthDiff = today.getMonth() - birth.getMonth();
const dayDiff = today.getDate() - birth.getDate();

// Корекція віку, якщо день народження ще не настав цього року
if (monthDiff < 0 || (monthDiff === 0 && dayDiff < 0)) {
    age--;
}

return age;
