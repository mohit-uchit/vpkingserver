const responseHandle = require('../../helpers/responseHanlde');
const proxyService = require('../../services/products/proxyService.js');
/**
 * Get all invoices.
 * @param {object} req - Express request object.
 * @param {object} res - Express response object.
 * @returns {Promise<*>}
 */
const getProxies = async (req, res) => {
  try {
    const data = await proxyService.getProxies();
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * create Proxy
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const createProxy = async (req, res) => {
  try {
    const data = await proxyService.createProxy(req.body);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * update Proxy
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const updateProxy = async (req, res) => {
  try {
    await proxyService.updateProxy(req.params.id, req.body);
    return responseHandle.handleOK(res);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * delete Proxy
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const deleteProxy = async (req, res) => {
  try {
    const data = await proxyService.deleteProxy(req.params.id);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * Buy Proxy.
 * @param {object} req
 * @param {object} res
 * @returns {Promise<*>}
 */
const buyProxy = async (req, res) => {
  try {
    const data = await proxyService.buyProxy();
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

module.exports = {
  getProxies,
  createProxy,
  updateProxy,
  deleteProxy,
  buyProxy,
};
