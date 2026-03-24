const inventory = newRaasSupply.value?.inventory;
const changeset = carsToMarkAsRaasSelection_step3.changesetObject;

const inventoryMappedToChangeset = inventory.map(car => {
  return {
     ...car,
    no_return_bonus_compesation_net: changeset[car.vin].no_return_bonus_compesation_net,
    no_return_notification_date: changeset[car.vin].no_return_notification_date
  }
});

newRaasSupply.setValue({
  inventory: inventoryMappedToChangeset,
  pagination: newRaasSupply.value?.pagination
});