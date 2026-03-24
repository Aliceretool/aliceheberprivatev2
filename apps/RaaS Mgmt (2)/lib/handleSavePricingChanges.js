const findMatch = (row, rv) => {
  const fields = aggregate_on_multi_switch.data.map(item => item.value);

  const res = fields.every(field => {
    const includeFieldInCheck = aggregate_on_multi_switch.value.includes(field);

    const check = !includeFieldInCheck || (includeFieldInCheck && rv[field] === row[field]);
    
    return check;
  });

  return res;
};

const aggData = newRaasSupplyPricing.value;

if (carsToMarkAsRaasAggregated.changesetArray.length === 0 && !rv_setting.value)
  return aggData.map((row) => {
      return {
        ...row,
        purchase_price: null,
        rv: null
      }
    });

switch (pricing_format.value) {
  case 'rv_percentage':
    const changedData = aggData.map((row) => {
      const match = carsToMarkAsRaasAggregated.changesetArray.find(rv => findMatch(row, rv));
      const changed_rv = rv_setting.value ?? match?.rv ?? null;
      
      const rv = changed_rv ? changed_rv : row.rv;
      const purchase_price = rv ? Math.round(rv * row.msrp_incl_options_net) : null;
      
      return {
        ...row,
        purchase_price,
        rv
      }
    });

    newRaasSupplyPricing.setValue(changedData);

    return true;

  case 'fixed_price':
    const fixedPriceData = aggData.map((row) => {
      const match = carsToMarkAsRaasAggregated.changesetArray.find(rv => findMatch(row, rv));
      const changed_purchase_price = match?.purchase_price ?? null;

      const purchase_price = changed_purchase_price ? changed_purchase_price : row.purchase_price;
        
      return {
        ...row,
        purchase_price,
        rv: null
      }
    });

    newRaasSupplyPricing.setValue(fixedPriceData);

    return true;
}