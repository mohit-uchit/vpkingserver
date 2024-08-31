const responseHandle = require('../../helpers/responseHanlde');
const orderService = require('../../services/products/orderService');

const createOrder = async (req, res) => {
  try {
    const data = await orderService.createOrder(req.userId, req.body);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

const getOrderList = async (req, res) => {
  try {
    const { pageSize, page } = req.query;
    const data = await orderService.getOrderList(req.userId, page, pageSize);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

const getOrderById = async (req, res) => {
  try {
    await orderService.getOrderById(req.userId, req.params.id);
    return responseHandle.handleOK(res);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

const deleteProxy = async (req, res) => {
  try {
    const data = await proxyService.deleteProxy(req.params.id);
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

const buyProxy = async (req, res) => {
  try {
    const data = await proxyService.buyProxy();
    return responseHandle.handleData(res, data);
  } catch (error) {
    return responseHandle.handleError(res, error);
  }
};

module.exports = {
  createOrder,
  getOrderList,
  getOrderById,
  deleteProxy,
  buyProxy,
};
