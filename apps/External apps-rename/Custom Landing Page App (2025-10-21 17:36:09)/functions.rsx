<GlobalFunctions>
  <Function
    id="filteredApps"
    funcBody={include("./lib/filteredApps.js", "string")}
    runBehavior="debounced"
  />
  <State
    id="exampleApps"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value={
      '[\n    {\n        "name": "Customer Dashboard",\n        "description": "Provides an overview of account activities, balances, and interactions from various systems.",\n        "url": "https://example.com/customer-dashboard"\n    },\n    {\n        "name": "Order History",\n        "description": "Shows past orders with details and statuses from the order management system.",\n        "url": "https://example.com/order-history"\n    },\n    {\n        "name": "Invoice Management",\n        "description": "Gives access to invoices for viewing, downloading, and paying.",\n        "url": "https://example.com/invoice-management"\n    },\n    {\n        "name": "Support Ticket Integration",\n        "description": "Lets customers view and manage support tickets from existing systems.",\n        "url": "https://example.com/support-ticket-integration"\n    },\n    {\n        "name": "Account Statements",\n        "description": "Generates and displays historical account statements from the financial system.",\n        "url": "https://example.com/account-statements"\n    },\n    {\n        "name": "Profile Synchronization",\n        "description": "Syncs customer profile data with the CRM system for consistent updates.",\n        "url": "https://example.com/profile-synchronization"\n    },\n    {\n        "name": "Transaction History",\n        "description": "Displays a detailed log of transactions from the financial system.",\n        "url": "https://example.com/transaction-history"\n    },\n    {\n        "name": "Contract Management",\n        "description": "Links to the contract system for viewing details and managing contracts.",\n        "url": "https://example.com/contract-management"\n    },\n    {\n        "name": "Product Subscriptions",\n        "description": "Shows subscription details and usage from the subscription management system.",\n        "url": "https://example.com/product-subscriptions"\n    },\n    {\n        "name": "Shipment Tracking",\n        "description": "Provides real-time tracking of shipments from the logistics system.",\n        "url": "https://example.com/shipment-tracking"\n    }\n]'
    }
  />
</GlobalFunctions>
