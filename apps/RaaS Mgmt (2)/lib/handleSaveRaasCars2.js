const supplyTradesToUpdate = raas_cars.data.map((item) => {
  return update_supply_trade.trigger({
    additionalScope: {
       supply_trade_id: item.supply_trade.supply_trade_id,
       purchase_price: item.supply_trade.purchase_price_net
    }
  })
});

await Promise.all(supplyTradesToUpdate);