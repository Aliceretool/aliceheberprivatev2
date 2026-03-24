const findMatch = (car, rv) => {
  const fields = aggregate_on_multi_switch.data.map(item => item.value);

  const res = fields.every(field => {
    const includeFieldInCheck = aggregate_on_multi_switch.value.includes(field);

    const check = !includeFieldInCheck || (includeFieldInCheck && rv[field] === car[field]);
    
    return check;
  });

  return res;
};

const inventory = newRaasSupply.value?.inventory;

const inventoryWithPricing = inventory.map(car => {
  const match = carsToMarkAsRaasAggregated.data.find(rv => findMatch(car, rv));
  const purchase_price = car.purchase_price ?? match?.purchase_price;
  
  return {
     ...car,
    purchase_price
  }
});

newRaasSupply.setValue({
  inventory: inventoryWithPricing,
  pagination: newRaasSupply.value?.pagination
});