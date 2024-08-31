const invoiceService = require('../../services/transactions/invoiceService');
const responseHandle = require('../../helpers/responseHanlde');

/**
 * Get all invoices.
 * @param {object} req - Express request object.
 * @param {object} res - Express response object.
 * @returns {Promise<*>}
 */
const getInvoices = async (req, res) => {
  try {
    const { pageSize, page, status, type } = req.query;
    const data = await invoiceService.getInvoices(
      page,
      pageSize,
      status,
      req.userId,
      type
    );
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * createInvoice
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const createInvoice = async (req, res) => {
  try {
    const data = await invoiceService.createInvoice(req.body, req.userId);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * createInvoice
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const updateStatusCustomer = async (req, res) => {
  try {
    await invoiceService.updateStatusCustomer(
      req.params.id,
      req.userId,
      req.query.status,
      req.body,
    );
    return responseHandle.handleOK(res);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * createInvoice
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const updateStatusAdmin = async (req, res) => {
  try {
    await invoiceService.updateStatusAdmin(
      req.params.id,
      req.userId,
      req.query.status,
      req.body,
    );
    return responseHandle.handleOK(res);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * getInvoice
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const getInvoice = async (req, res) => {
  try {
    const data = await invoiceService.getInvoice(req.params.id, req.userId);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

module.exports = {
  getInvoices,
  createInvoice,
  updateStatusAdmin,
  updateStatusCustomer,
  getInvoice,
};
