const db = require('../../../models');
const { Invoice } = db;
const {
  invoiceStatus,
  superAdminInvoiceStatus,
  allInvoiceStatus,
  productType,
} = require('../../../config/constants');
const {
  getPagination,
  getValueByKeyOrNull,
  paginate,
  getIntKeyByValueOrNull,
} = require('../../helpers/commonHelper');
const moment = require('moment');

const getInvoices = async (currentPage, pageSize, status, userId, type) => {
  const { page, limit, offset, pagination } = getPagination(
    currentPage,
    pageSize,
    25,
  ); // Default page size.

  let query = {
    where: {
      user_id: userId,
    },
    include: {
      association: 'images',
      attributes: ['storage_file_name'],
    },
    order: [['id', 'DESC']],
  };

  if (status) {
    query.where = {
      status: getIntKeyByValueOrNull(allInvoiceStatus, status),
    };
  }

  if (type) {
    query.where = {
      type: type,
    };
  }

  if (pagination) {
    query.limit = limit;
    query.offset = offset;
  }

  const invoiceRes = await Invoice.findAndCountAll(query);

  return {
    invoices: _formatInvoices(invoiceRes.rows),
    meta: paginate(invoiceRes, page, limit),
  };
};

const _formatInvoices = data => {
  return data.map(d => ({
    id: d.id,
    amount: d.amount,
    status: getValueByKeyOrNull(allInvoiceStatus, d.status),
    credentials: d.credentials,
    utr: d.utr,
    productDetails: d.product_details,
    generatedAt: moment(d.createdAt).format('DD-MM-YYYY HH:mm:ss'),
    image: d.images,
  }));
};

const createInvoice = async (body, userId) => {
  const { amount } = body;
  const invoice = await Invoice.create({
    amount,
    user_id: userId,
    status: getIntKeyByValueOrNull(invoiceStatus, 'pending'),
  });

  return {
    id: invoice.id,
  };
};

const updateStatusCustomer = async (id, userId, status, data) => {
  const invoice = await Invoice.findOne({
    where: {
      id: id,
      user_id: userId,
    },
  });

  if (!invoice) {
    throw new Error('Invoice not found');
  }

  // Build the update object conditionally
  const updateFields = {};

  if (data.productDetails !== undefined) {
    updateFields.product_details = data.productDetails;
  }

  if (data.utr !== undefined) {
    updateFields.utr = data.utr || null;
  }

    if (data.type !== undefined) {
      updateFields.type = getIntKeyByValueOrNull(productType, data.type);
    }

  if (status !== undefined) {
    updateFields.status = getIntKeyByValueOrNull(invoiceStatus, status);
  }

  // Check if there is anything to update
  if (Object.keys(updateFields).length === 0) {
    throw new Error('No valid fields to update');
  }

  return await Invoice.update(updateFields, {
    where: {
      id,
      user_id: userId,
    },
  });
};

const updateStatusAdmin = async (id, userId, status, data) => {
  const invoice = await Invoice.findOne({
    where: {
      id: id,
    },
  });

  if (!invoice) {
    throw new Error('Invoice not found');
  }

  // Build the update object conditionally
  const updateFields = {};

  if (data.credentials !== undefined) {
    updateFields.credentials = data.credentials;
  }

  if (status !== undefined) {
    updateFields.status = getIntKeyByValueOrNull(
      superAdminInvoiceStatus,
      status,
    );
  }

  // Check if there is anything to update
  if (Object.keys(updateFields).length === 0) {
    throw new Error('No valid fields to update');
  }

  return await Invoice.update(updateFields, {
    where: {
      id,
    },
  });
};

const getInvoice = async (id, userId) => {
  const invoice = await Invoice.findOne({
    where: {
      id,
      user_id: userId,
    },
  });

  return {
    id: invoice.id,
    amount: invoice.amount,
    status: getValueByKeyOrNull(invoiceStatus, invoice.status),
    credentials: invoice.credentials,
    generatedAt: moment(invoice.createdAt).format('DD-MM-YYYY HH:mm:ss'),
  };
};

module.exports = {
  getInvoices,
  createInvoice,
  updateStatusCustomer,
  updateStatusAdmin,
  getInvoice,
};
