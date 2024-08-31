const responseHandle = require('../../helpers/responseHanlde');
const vpsService = require('../../services/products/vpsService.js');

/**
 * Get all vps.
 * @param {object} req - Express request object.
 * @param {object} res - Express response object.
 * @returns {Promise<*>}
 */
const getVps = async (req, res) => {
  try {
    const data = await vpsService.getVpsInstances();
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * create vps
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const createVps = async (req, res) => {
  try {
    const data = await vpsService.createVps(req.body);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * update Vps
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const updateVps = async (req, res) => {
  try {
    await vpsService.updateVps(req.params.id, req.body);
    return responseHandle.handleOK(res);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * delete Vps
 * @param {Object} req
 * @param {Object} res
 * @returns {Promise<*>}
 */
const deleteVps = async (req, res) => {
  try {
    const data = await vpsService.deleteVps(req.params.id);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

/**
 * Buy Vps.
 * @param {object} req
 * @param {object} res
 * @returns {Promise<*>}
 */
const buyVps = async (req, res) => {
  try {
    const data = await vpsService.buyVps();
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

module.exports = {
  getVps,
  createVps,
  updateVps,
  deleteVps,
  buyVps,
};
