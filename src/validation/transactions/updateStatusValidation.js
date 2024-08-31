const { param, query } = require('express-validator');
const {
  validateRequest,
  genericValidator,
  checkUnrecognizedParams,
} = require('../../helpers/validationHelper');
const { invoiceStatus } = require('../../../config/constants');
exports.validate = [
  genericValidator(param, 'id', {
    isRequired: true,
    isIntInRange: { min: 1 },
  }),
  genericValidator(query, 'status', {
    isString: true,
    validObjectValues: invoiceStatus,
  }),

  validateRequest,
];
