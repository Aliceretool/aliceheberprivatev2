const location = {
  case_id: {{ url.searchParams.id }},
  ...{{ (JSON.parse(BeneficiaryLocationModule_LocationTab.locationOutput)) }},
  is_initial_event: false,
  start_date: {{LocationTab_Location_Start_Date.value  }},
  end_date: {{LocationTab_Location_End_Date.value  }},
  country_id: {{ LocationTab_Location_Country_Select?.selectedItem?.id }},
};

return location;
