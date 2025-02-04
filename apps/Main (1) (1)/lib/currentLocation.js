let currentLocation = {{ GetBeneficiaryLocations?.data?.find(bl => bl.is_initial_event) }};
const CaseDetails_Tabs_SelectedIndex = {{  CaseDetails_Tabs.selectedIndex === 1 }};
const selectedLocationValue = {{ selectedLocation.value }};

if (CaseDetails_Tabs_SelectedIndex && selectedLocationValue) {
  currentLocation = selectedLocationValue?.item
} else if (CaseDetails_Tabs_SelectedIndex && !selectedLocationValue && {{  BeneficiaryLocation_TabbedContainer.currentViewKey === 1}}) {
  currentLocation = null;
}

//  if({{  lastLocation.value }}) {
//    currentLocation === {{ GetBeneficiaryLocations?.data?.find(bl => bl.id === lastLocation.value?.id) }}
//  }


return currentLocation;
