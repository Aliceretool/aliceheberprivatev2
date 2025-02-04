const locations = {{ GetBeneficiaryLocations.data }};
const countries = {{ GetCountries.data || [] }};
let initialEvent;
let location;
const parsedLocations = locations.map((l) => {
  location = l;
  if (location.is_initial_event ) {
    initialEvent = {
      id: location.id,
      locationHeader: moment(location.admission_date)
        ?.format("DD MMM YYYY")
        ?.toUpperCase(),
      locationSubHeader: "Initial situation",
      createdBy: location.created_by,
      location: {{ (location?.exact_patient_location?.city || '') + ' ' + (location?.exact_patient_location?.country || '') }},
      isInitialSituation: true,
      is_mna: !!location?.mna_hospital?.id,
      item: location,
    };
  } else {
    const country = countries?.find((c) => c.id === location.country_id);
    console.log(country)
    return {
      id: location.id,
      startDate: moment(location.start_date)
        ?.format("DD MMM YYYY")
        ?.toUpperCase(),
      endDate: moment(location.end_date)?.format("DD MMM YYYY")?.toUpperCase(),
      city:
        location?.exact_patient_location?.city || l?.mna_hospital?.city || "",
      eec: country?.eec,
      sanction: country?.countrysanctionpenalty?.sanctionPenalty,
      is_mna: !!location?.mna_hospital?.id,
      isInitialSituation: false,
      item: location,
      country: country
    };
  }
});

parsedLocations.push(initialEvent);

return parsedLocations.filter((l) => l);
