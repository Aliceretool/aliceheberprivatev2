const caseLocations = GetBeneficiaryLocations.data || [];

if (CaseDetails_Tabs.selectedIndex === 1) {
  const currentLocation = caseLocations.find((el) => el.id === selectedLocation?.value?.id);

  let location = createUpdateLocationLTTransformer.value

  if (currentLocation) {
    await UpdateBeneficiaryLocation.trigger({
      additionalScope: {
        locationId: currentLocation.id,
        location: location,
      },
    });
  } else {
    await CreateBeneficiaryLocation.trigger({
      additionalScope: {
        location: location,
      },
    });
  }
}

selectedLocation.setValue(null);
await GetBeneficiaryLocations.trigger();