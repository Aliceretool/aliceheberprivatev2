const caseLocations = GetBeneficiaryLocations.data || [];

if (CaseDetails_Tabs.selectedIndex === 0) {
  const initialEvent = caseLocations.find((el) => el.is_initial_event);

  let location = createUpdateLocationCDTTransformer.value

  if (initialEvent) {
    await UpdateBeneficiaryLocation.trigger({
      additionalScope: {
        locationId: initialEvent.id,
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

await GetBeneficiaryLocations.trigger();
