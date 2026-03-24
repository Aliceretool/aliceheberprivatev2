const tradesToUpdate = trades_in_order.changesetArray.map((item) => {
  return update_supply_trade.trigger({
    additionalScope: {
       supply_trade_id: item.supply_trade_id,
       ...(item.status ? {
            status: item.status
        } : {}),
       ...(item.transfer_of_risk_date_override ? {
          transfer_of_risk_override: item.transfer_of_risk_date_override
        } : {}),
        ...(item.purchase_price ? {
          purchase_price: item.purchase_price
        } : {}),
        ...(item.no_return_notification_date ? {
            no_return_notification_date: item.no_return_notification_date
        } : {})
       
    }
  })
});

await Promise.all(tradesToUpdate);