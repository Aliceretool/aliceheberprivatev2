const cars = {{ carsToMarkAsRaasSelection_step1.data }};

function aggregateBy(arr, keys) {
  if (!Array.isArray(keys)) keys = [keys]; // allow single string too
  const seen = new Set();

  const result = arr.reduce((acc, item) => {
    const compositeKey = keys.map(k => item[k]).join('|');
    if (!seen.has(compositeKey)) {
      seen.add(compositeKey);
      const newItem = keys.reduce((obj, k) => {
        obj[k] = item[k];
        return obj;
      }, {});
      acc.push(newItem);
    }
    return acc;
  }, []);

  // sort by the first key
  const sortKey = keys[0];
  result.sort((a, b) => {
    if (a[sortKey] < b[sortKey]) return -1;
    if (a[sortKey] > b[sortKey]) return 1;
    return 0;
  });

  return result;
}

const propertiesToGroupBy = {{ aggregate_on_multi_switch.selectedItems.map(item => item.value) }};

return aggregateBy(cars, propertiesToGroupBy);