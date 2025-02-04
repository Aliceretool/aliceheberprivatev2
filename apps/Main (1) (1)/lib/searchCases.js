if (SearchResults_Tabs.value === "empty") {
  SearchResults_Tabs.setValue("loading");
}
const cases = await SearchCases.trigger();

if (!cases.length) {
  SearchResults_Tabs.setValue("empty");
} else {
  SearchResults_Tabs.setValue("results");
}
