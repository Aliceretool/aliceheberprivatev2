const tradesToUpdate = trades_in_order.selectedRows
  .map((item) => {
  return update_supply_trade_noco.trigger({
    additionalScope: {
       supply_trade_id: item.supply_trade_id,
       ops_compound_id: raaSDeefletingCompound.selected_compound.id
    }
  })
});

await Promise.all(tradesToUpdate);