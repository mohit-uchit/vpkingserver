const constants = {
  defaultPageSize: 50,
  defaultPage: 1,
  ipStatus: {
    1: 'active',
    2: 'inactive',
  },
  role: {
    1: 'admin',
    2: 'customer',
  },
  invoiceStatus: {
    0: 'pending',
    1: 'paid',
  },
  superAdminInvoiceStatus: {
    2: 'approved',
    3: 'completed',
  },
  allInvoiceStatus: {
    0: 'pending',
    1: 'paid',
    2: 'approved',
    3: 'completed',
  },
  productType: {
    1: 'VPS',
    2: 'Proxy'
  }
};

module.exports = constants;
