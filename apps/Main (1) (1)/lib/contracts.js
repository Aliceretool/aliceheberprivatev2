return [
  {
    extId: "PROD100001346BCD",
    policyNumber: "ART00322456",
    productCode: "GP01",
    validity: {
      startDate: "2015-04-23T00:00:00Z",
      endDate: "2026-03-12T00:00:00Z",
      renewal: false,
      firstSubscriptionDate: "2015-04-23T00:00:00Z",
      regularPayment: false,
    },
    beneficiaries: [
      {
        extId: "TO11112222333",
        firstName: "Kevin",
        lastName: "Bruyne",
        companyName: "Europ-Assistance",
        homeLocation: {
          address1: "123 Queens Blvd",
          address2: "Apt 4",
          postalCode: "12084",
          city: "Albany",
          state: "New York",
          country: "United States of America",
        },
        gender: "M",
        birthdate: "1989-06-28",
        contactInfo: {
          phoneFixed1: "+33100000001",
          phoneFixed2: "+33100000002",
          phoneMobile1: "+33600000003",
          phoneMobile2: "+33700000004",
          email: "kevin.bruyne@example.com",
        },
        identityCardNumber: "IDCARD00001",
        fiscalCode: "FSC00001",
        invoiceLocation: {
          address1: "123 Queens Blvd",
          address2: "Apt 4",
          postalCode: "12084",
          city: "Albany",
          state: "New York",
          country: "United States of America",
        },
        isSubscriber: true,
        nationality: ["American"],
      },
    ],
    package: ["PKG01", "PKG02"],
    restricted: false,
    description: "Standard policy for Kevin Bruyne.",
  },
  {
    extId: "PROD300003456DEF",
    policyNumber: "ART00567890",
    productCode: "GP03",
    validity: {
      startDate: "2020-06-01T00:00:00Z",
      endDate: "2023-06-01T00:00:00Z",
      renewal: false,
      firstSubscriptionDate: "2020-06-01T00:00:00Z",
      dateOfTermination: "2023-06-01T00:00:00Z",
      regularPayment: false,
    },
    beneficiaries: [
      {
        extId: "TO33334444555",
        firstName: "Liam",
        lastName: "O'Connor",
        companyName: "Europ-Assistance",
        homeLocation: {
          address1: "Kurfürstendamm 21",
          address2: "Etage 3",
          postalCode: "10719",
          city: "Berlin",
          country: "Germany",
        },
        gender: "M",
        birthdate: "1985-02-21",
        identityCardNumber: "IDCARD00003",
        fiscalCode: "FSC00003",
        invoiceLocation: {
          address1: "Kurfürstendamm 21",
          address2: "Etage 3",
          postalCode: "10719",
          city: "Berlin",
          country: "Germany",
        },
        isSubscriber: false,
        nationality: ["Irish"],
      },
      {
        extId: "TO33334444556",
        firstName: "Mila",
        lastName: "O'Connor",
        companyName: "Europ-Assistance",
        homeLocation: {
          address1: "Kurfürstendamm 21",
          address2: "Etage 3",
          postalCode: "10719",
          city: "Berlin",
          country: "Germany",
        },
        gender: "F",
        birthdate: "1985-02-21",
        contactInfo: {
          phoneFixed1: "+14150000001",
          phoneMobile1: "+14150000005",
          phoneMobile2: "+14150000006",
          email: "mila.oconnor@example.com",
        },
        identityCardNumber: "IDCARD00004",
        fiscalCode: "FSC00004",
        invoiceLocation: {
          address1: "Kurfürstendamm 21",
          address2: "Etage 3",
          postalCode: "10719",
          city: "Berlin",
          country: "Germany",
        },
        isSubscriber: true,
        nationality: ["Irish"],
      },
    ],
    package: ["PKG04", "PKG05"],
    restricted: true,
    description: "Expired policy for Liam O'Connor.",
  },
  {
    extId: "PROD200002346CDE",
    policyNumber: "ART00456789",
    productCode: "GP02",
    validity: {
      startDate: "2018-01-15T00:00:00Z",
      endDate: "2028-01-14T00:00:00Z",
      renewal: true,
      firstSubscriptionDate: "2018-01-15T00:00:00Z",
      regularPayment: true,
    },
    beneficiaries: [
      {
        extId: "TO22223333444",
        firstName: "Maria",
        lastName: "Gonzalez",
        companyName: "Europ-Assistance",
        homeLocation: {
          address1: "Othmargasse 14",
          postalCode: "1120",
          city: "Vienna",
          country: "Austria",
        },
        gender: "F",
        birthdate: "1990-05-10",
        contactInfo: {
          phoneFixed1: "+13100000001",
          phoneMobile1: "+13160000001",
          email: "maria.gonzalez@example.com",
        },
        identityCardNumber: "IDCARD00002",
        fiscalCode: "FSC00002",
        invoiceLocation: {
          address1: "Othmargasse 14",
          postalCode: "1120",
          city: "Vienna",
          country: "Austria",
        },
        isSubscriber: true,
        nationality: ["Austrian"],
      },
    ],
    package: ["PKG03"],
    restricted: false,
    description: "Premium policy for Maria Gonzalez.",
  },
].map((c) => {
  const beneficiaryNames = [];
  const phoneNumbers = [];
  c.beneficiaries.map(b => {
    beneficiaryNames.push(b.firstName + " " + b.lastName);
    phoneNumbers.push(b?.contactInfo?.phoneMobile1);
  })
  c.beneficiaryNames = beneficiaryNames.join('\n');
  c.phoneNumbers = phoneNumbers.join("\n");

  return c;
});