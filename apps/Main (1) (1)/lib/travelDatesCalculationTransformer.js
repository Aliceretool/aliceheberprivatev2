const start = {{ TravelInfo_Form_Period_DateRange.value.start }};

const end = {{ TravelInfo_Form_Period_DateRange.value.end }};

if(start && end) {
  const startDate = new Date(start);
  const endDate = new Date(end);
  const accidentDate = {{ GetCase.data.created_at }};
  
  const differenceInTime = Math.abs(endDate - startDate);
  const differenceInDays = Math.ceil(differenceInTime / (1000 * 60 * 60 * 24));

  const accidentDifferenceInTime = Math.abs(accidentDate - startDate);
  const accidentDifferenceInDays = Math.ceil(accidentDifferenceInTime / (1000 * 60 * 60 * 24));
    
  return {
    totalDuration: differenceInDays,
    actualDuration:  accidentDifferenceInDays,
  }
} else {
  return {
    totalDuration: 'Unknown',
    actualDuration:  'Unknown'
  }
}