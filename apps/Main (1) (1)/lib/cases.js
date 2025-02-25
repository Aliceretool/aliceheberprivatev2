return [
  {
    id: 1,
    key: "ATM24000001",
    phase: "Qualify",
    type: "Rapatriation",
    priority: "high",
    owner: "John Smith",
    creationDate: "2024-06-24",
    openedBy: "Tino Rossi",
    lastTaskPerformed: "2024-09-24",
    patient: {
      name: "John Doe - Subsc",
      phoneNumber: "+33770192160",
      email: "johndoe@gmail.com",
      birthday: "1989-02-23",
    },
    beneficiaryLocation: "FRANCE",
    countryOfOccurence: {
      country: "FRANCE",
      timestamp: "2025-06-24T17:55:00",
    },
    product: "Dummy Product",
    businessPartner: "Dummy Generali"
  },
  {
    id: 2,
    key: "ATM24000002",
    phase: "Qualify",
    type: "Rapatriation",
    priority: "high",
    owner: "John Smith",
    creationDate: "2024-06-24",
    openedBy: "Tino Rossi",
    lastTaskPerformed: "2024-09-24",
    patient: {
      name: "John Doe - Subsc",
      phoneNumber: "+33770192160",
      email: "johndoe@gmail.com",
      birthday: "1989-02-23",
    },
    beneficiaryLocation: "FRANCE",
    countryOfOccurence: {
      country: "FRANCE",
      timestamp: "2025-06-24T17:55:00",
    },
    product: "Dummy Product",
    businessPartner: "Dummy Generali"
  },
].map((c) => {
  const momentObj = moment(c.countryOfOccurence.timestamp);
  const timestamp = momentObj.format("MMM DD, YYYY h:mm A");
  
  const countryOfOccurence = [
    c.countryOfOccurence.country,
    timestamp
  ].join("\n");

  c.countryOfOccurence = countryOfOccurence;

  const birthdayMoment = moment(c.patient.birthday);
  const birthday = birthdayMoment.format("MMM DD, YYYY");

  const patient = [
    c.patient.name,
    c.patient.phoneNumber,
    c.patient.email,
    `Birthday: ${birthday}`
  ].join("\n");

  c.patient = patient;
  
  return c;
});
