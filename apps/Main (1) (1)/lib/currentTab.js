const page = {{ retoolContext.currentPage }};

if (page === "Home") {
  return "Home";
} else if (["AllCases", "Case"].includes(page)) {
  return "Cases";
} else if (["AllTasks"].includes(page)) {
  return "Tasks";
} else if (["Interaction", "AllInteractions", "CallBack"].includes(page)) {
  return "Interactions";
} else {
  return ""
}
