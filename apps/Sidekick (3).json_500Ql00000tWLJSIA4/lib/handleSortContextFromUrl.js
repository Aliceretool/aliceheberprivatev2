// handleUrlState (Set to run on Page Load)

// 1. Give the app a moment to breathe
await new Promise(resolve => setTimeout(resolve, 300));

/** * 2. Manually push URL values into the components
 * We use _.castArray because URL params come in as strings.
 * Multiselects MUST receive an array.
 */
if (url.searchParams.cohort) {
  cohort_filter_multiselect2.setValue(_.castArray(url.searchParams.cohort));
}

if (url.searchParams.company) {
  company_filter_multiselect2.setValue(_.castArray(url.searchParams.company));
}

if (url.searchParams.risk) {
  risk_level_filter_multiselect2.setValue(_.castArray(url.searchParams.risk));
}

// 3. Handle the sorting context
if (url.searchParams.sortContext) {
  await sorting_context.setValue(url.searchParams.sortContext);
}

// 4. Trigger the data engine
await run_merger_logic.trigger();

// 5. Cleanup the URL
utils.setUrlParameters([{ key: "sortContext", value: null }], []);