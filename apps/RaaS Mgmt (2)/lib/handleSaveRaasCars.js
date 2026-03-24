const supplyTradesToUpdate = raas_cars.changesetArray.map((item) => {
  const match = raas_cars.data.find(car => car.finn_car_id == item.finn_car_id);
  const payload = {
    ...(item.supply_trade_status ? {
            status: item.supply_trade_status
        } : {}),
       ...(item.supply_trade_transfer_of_risk_date_override ? {
          transfer_of_risk_override: item.supply_trade_transfer_of_risk_date_override
        } : {}),
        ...(item.supply_trade_purchase_price ? {
          purchase_price: item.supply_trade_purchase_price
        } : {}),
        ...(item.supply_trade_no_return_notification_date ? {
            no_return_notification_date: item.supply_trade_no_return_notification_date
        } : {})
  };
  return Object.keys(payload).length > 0
    ? update_supply_trade.trigger({
      additionalScope: {
         supply_trade_id: match.supply_trade.supply_trade_id,
         ...payload
      }
    })
    : null
});

const tradesToUpdate = raas_cars.changesetArray
  .map((item) => {
    const match = raas_cars.data.find(
      car => car.finn_car_id == item.finn_car_id
    );

    return item.defleeting_tor_override
      ? [
          update_trade.trigger({
            additionalScope: {
              trade_id: match.trade_id,
              transfer_of_risk_override: item.defleeting_tor_override
            }
          }),
          update_trade_v1.trigger({
            additionalScope: {
              trade_id: match.trade_id,
              transfer_of_risk_override: item.defleeting_tor_override
            }
          })
        ]
      : [];
  })
  .flat();

await Promise.all(supplyTradesToUpdate);
await Promise.all(tradesToUpdate);