const cases = {{ SearchCases.data }};
const retoolUsers = {{ GetRetoolUsers.data.data }};

const tasks = [
  {
    id: 1,
    assignee: "Mary Jasper",
    taskType: "Important",
    priority: "High",
    dueDate: "2024-06-24T17:05:00Z",
    team: "Medical",
    flags: "Flags",
    patientName: "John Smith",
    patientLocation: { country: "France", timestamp: "2024-06-24T17:05:00Z" },
    comments: "Lorem ipsum dolor sit amet...",
  },
  {
    id: 2,
    assignee: "Mary Jasper",
    taskType: "Important",
    priority: "Medium",
    dueDate: "2024-06-24T17:05:00Z",
    team: "Medical",
    flags: "Flags",
    patientName: "John Smith",
    patientLocation: { country: "France", timestamp: "2024-06-24T17:05:00Z" },
    comments: "Lorem ipsum dolor sit amet...",
  },
  {
    id: 3,
    assignee: "Mary Jasper",
    taskType: "Important",
    priority: "Low",
    dueDate: "2024-06-24T17:05:00Z",
    team: "Medical",
    flags: "Flags",
    patientName: "John Smith",
    patientLocation: { country: "France", timestamp: "2024-06-24T17:05:00Z" },
    comments: "Lorem ipsum dolor sit amet...",
  },
];

return cases.map((c) => {
  const retoolUser = retoolUsers.find(
    (user) => user.id === c.created_by
  );
  return {
    id: c.id,
    key: c.key,
    phase: "Qualify",
    type: "Type",
    priority: "High",
    owner: retoolUser
      ? `${retoolUser.first_name} ${retoolUser.last_name}`
      : null,
    creationDate: moment(c.created_at).format("MMM DD, yyyy"),
    openedBy: retoolUser
      ? `${retoolUser.first_name} ${retoolUser.last_name}`
      : null,
    lastTaskPerformed: moment("2024-09-24T00:00:00Z").format("MMM DD, yyyy"),
    patient: c.beneficiary,
    patientLocation: c.beneficiaryLocation,
    countryOfOccurence: c.countryOfOccurence,
    product: "Dummy Product",
    businessPartner: "Dummy Generali",
    tasks,
  };
});
