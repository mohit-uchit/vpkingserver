const { query } = require('express-validator');
const {
  validateRequest,
  genericValidator,
  checkUnrecognizedParams,
} = require('../../helpers/validationHelper');
const { allInvoiceStatus } = require('../../../config/constants');

exports.validate = [
  genericValidator(query, 'status', {
    isString: true,
    validObjectValues: allInvoiceStatus,
  }),

  genericValidator(query, 'page', {
    isIntInRange: { min: 1, max: 100 },
  }),

  genericValidator(query, 'pageSize', {
    isIntInRange: { min: 1, max: 100 },
  }),

  checkUnrecognizedParams(['status', 'page', 'pageSize', 'type'], 'query'),

  validateRequest,
];
