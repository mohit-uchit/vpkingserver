const { body } = require('express-validator');
const {
  validateRequest,
  genericValidator,
  checkUnrecognizedParams,
} = require('../../helpers/validationHelper');

exports.validate = [
    genericValidator(body, 'amount', {
      isRequired: true,
      isDecimalInRange: { min: 1, max: 99999999.99 },
    }),

  checkUnrecognizedParams(['amount'], 'body'),

  validateRequest,
];
