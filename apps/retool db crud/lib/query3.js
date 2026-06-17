(async () => {
  // Wait for 4 seconds
  await new Promise(resolve => setTimeout(resolve, 4000));

  // Show the `viewOrderDrawer` component
  viewOrderDrawer.show();

  // Trigger the required queries to fetch order data
  await Promise.all([
    getAll.trigger()
  ]);

  console.log("Order details loaded successfully.");
})();


    


  console.log("Order details loaded successfully.");
