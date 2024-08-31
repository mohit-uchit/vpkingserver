const responseHandle = require('../../helpers/responseHanlde');
const promoService = require('../../services/products/promoService.js');
/**
 * Get all promocodes.
 * @param {object} req - Express request object.
 * @param {object} res - Express response object.
 * @returns {Promise<*>}
 */
const getPromocodes = async (req, res) => {
    try {
    const data = await promoService.getPromocodes();
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * create promocode
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const createPromocode = async (req, res) => {
  try {
    const data = await promoService.createPromocode(req.body);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * update promocode
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const updatePromocode = async (req, res) => {
  try {
    await promoService.updatePromocode(req.params.id, req.body);
    return responseHandle.handleOK(res);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * delete promocode
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const deletePromocode = async (req, res) => {
  try {
    const data = await promoService.deletePromocode(req.params.id);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * apply promocode
 * @param {object} req
 * @param {object} res
 * @returns {Promise<*>}
 */
const applyPromocode = async (req, res) => {
  try {
    const data = await promoService.applyPromocode(req.body.code);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

module.exports = {
  getPromocodes,
  createPromocode,
  updatePromocode,
  deletePromocode,
  applyPromocode,
};
