const db = require('../../../models');
const { Order } = db;
const sequelize = db.sequelize;
const { Op } = require('sequelize');
const moment = require('moment');
const { getKeyByValueOrNull } = require('../../helpers/commonHelper');
const { invoiceStatus } = require('../../../config/constants');
const invoice = require('../../../models/transactions/invoice');
const createOrder = async (userId, orderData) => {
  const data = {
    user_id: userId,
    product: orderData.product || null,
    price: orderData.price || null,
    payment_status:
      getKeyByValueOrNull(invoiceStatus, orderData.paymentStatus) || null,
    data: orderData.data || {},
    details: orderData.details || {},
  };
  return await Order.create(data);
};

/**
 * Get a list of orders with pagination
 * @param {number} currentPage - Current page number
 * @param {number} pageSize - Number of orders per page
 * @param {Object} filters - Filters for querying orders
 * @returns {Promise<Object>} - Paginated list of orders
 */
const getOrderList = async (userId, currentPage = 1, pageSize = 25) => {
  const limit = pageSize;
  const offset = (currentPage - 1) * pageSize;

  const query = {
    where: {
      user_id: userId,
    },
    limit,
    offset,
    order: [['created_at', 'DESC']],
  };

  const { count, rows } = await Order.findAndCountAll(query);

  return {
    orders: rows,
    pagination: {
      total: count,
      currentPage,
      pageSize,
      totalPages: Math.ceil(count / pageSize),
    },
  };
};

/**
 * Get an order by ID
 * @param {number} orderId - ID of the order to retrieve
 * @returns {Promise<Order>}
 */
const getOrderById = async (userId, orderId) => {
  return await Order.findOne({
    where: {
      id: orderId,
      user_id: userId,
    },
  });
};

module.exports = {
  createOrder,
  getOrderList,
  getOrderById,
};
