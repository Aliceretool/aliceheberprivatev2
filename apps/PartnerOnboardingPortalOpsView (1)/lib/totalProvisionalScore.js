// --- PART-1324 score update ---
// minBusinessAgeMetScoreSelect = no ? +2
// more than 5 online reviews = no +4
// abilityToPullBiq = no +4 OR
// abilityToScoreBiq = no +4, we won't double count. If both are no it's +4, one is no +4
// score can max total 10

let totalScore = _.sum([
  (pullBiqScoreSelect.value === 'No' && scorecardBiq.value === 'No' ? 4 : pullBiqScoreSelect.value === 'Yes' && scorecardBiq.value === 'No' ? 4 : pullBiqScoreSelect.value === 'No' && scorecardBiq.value === 'Yes' ? 4 : 0),  
  moreThan5ReviewsScoreSelect.value === 'No' ? 4 : 0, 
  minBusinessAgeMetScoreSelect.value === 'No' ? 2 : 0, 
])

return totalScore