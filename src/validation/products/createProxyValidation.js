const { body } = require('express-validator');
const {
  validateRequest,
  genericValidator,
  checkUnrecognizedParams,
} = require('../../helpers/validationHelper');

exports.validate = [
  genericValidator(body, 'pricing', {
    isRequired: true,
    isDecimalInRange: { min: 1, max: 99999999.99 },
  }),
  genericValidator(body, 'series', {
    isRequired: true,
    isString: true,
    isLength: { min: 1, max: 255 },
  }),
  genericValidator(body, 'portNumber', {
    isRequired: true,
    isIntInRange: { min: 1 },
  }),
  genericValidator(body, 'ram', {
    isRequired: true,
    isString: true,
    isLength: { min: 1, max: 255 },
  }),

  checkUnrecognizedParams(['pricing', 'series', 'portNumber', 'ram'], 'body'),

  validateRequest,
];
