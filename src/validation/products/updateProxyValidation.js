const { body, param } = require('express-validator');
const {
  validateRequest,
  genericValidator,
  checkUnrecognizedParams,
} = require('../../helpers/validationHelper');

exports.validate = [
  genericValidator(param, 'id', {
    isRequired: true,
    isIntInRange: { min: 1 },
  }),

  genericValidator(body, 'pricing', {
    isDecimalInRange: { min: 1, max: 99999999.99 },
  }),
  genericValidator(body, 'portNumber', {
    isIntInRange: { min: 1 },
  }),
  genericValidator(body, 'ram', {
    isString: true,
    isLength: { min: 1, max: 255 },
  }),
  genericValidator(body, 'series', {
    isString: true,
    isLength: { min: 1, max: 255 },
  }),

  checkUnrecognizedParams(['pricing', 'portNumber', 'ram', 'series'], 'body'),

  validateRequest,
];
