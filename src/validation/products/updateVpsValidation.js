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
  genericValidator(body, 'series', {
    isString: true,
    isLength: { min: 1, max: 255 },
  }),
  body('os')
    .optional()
    .isIn(['windows', 'linux'])
    .withMessage('OS must be either windows or linux'),
  genericValidator(body, 'ram', {
    isString: true,
    isLength: { min: 1, max: 255 },
  }),
  genericValidator(body, 'pricing', {
    isDecimalInRange: { min: 1, max: 99999999.99 },
  }),
  checkUnrecognizedParams(['series', 'os', 'ram', 'pricing'], 'body'),
  validateRequest,
];
