const location = {
  case_id: {{ url.searchParams.id }},
...{{ (JSON.parse(BeneficiaryLocationModule_CaseDetailsTab.locationOutput)) }},
  created_by: {{ current_user.fullName }},
  is_initial_event: true,
}

return location;
