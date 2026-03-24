const inventory = newRaasSupply.value?.inventory;
const pricing = import_gsheet.data ?? [];

const changeset = carsToMarkAsRaasSelection_step1.changesetArray;

const inventoryWithPricing = inventory.map((car) => {
    const overwrite = changeset?.find(ch => car.vin === ch.vin)?.purchase_price ?? null;
  
    return {
      ...car,
      purchase_price: overwrite ?? pricing.find(row => row.vin === car.vin)?.Price ?? null
    }
  });

newRaasSupply.setValue({
  inventory: inventoryWithPricing,
  pagination: newRaasSupply.value?.pagination
});

return inventoryWithPricing;