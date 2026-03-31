// 1. Define the reset function
async function resetToDefault() {
  await colSelector.setValue(colSelector.data.map(item => item.value)); 
  await table_search_text_input2.setValue("");
  await cohort_filter_multiselect2.setValue([]);
  await company_filter_multiselect2.setValue([]);
  await status_filter_multiselect2.setValue(["on_programme"]);
  await risk_level_filter_multiselect2.setValue([]);
  await cohort_dd_table5.setSort([]);
}

const allViews = formatDataAsArray(getUserViews.data);
const selectedSlot = viewController.value; 

if (String(selectedSlot) === "0") {
  await resetToDefault();
} else {
  const savedView = allViews.find(v => String(v.view_slot) === String(selectedSlot));

  if (savedView && savedView.config_json) {
    const config = savedView.config_json;
    
    // Apply all updates simultaneously for optimal performance
    await Promise.all([
      config.columns ? colSelector.setValue(config.columns) : Promise.resolve(),
      table_search_text_input2.setValue(config.filters.search || ""),
      cohort_filter_multiselect2.setValue(config.filters.cohort || []),
      company_filter_multiselect2.setValue(config.filters.company || []),
      status_filter_multiselect2.setValue(config.filters.status || []),
      risk_level_filter_multiselect2.setValue(config.filters.risk || []),
      config.sorts ? cohort_dd_table5.setSort(config.sorts) : Promise.resolve()
    ]);
    
  } else {
    await resetToDefault();
  }
}