const { body } = require('express-validator');
const {
  validateRequest,
  genericValidator,
  checkUnrecognizedParams,
} = require('../../helpers/validationHelper');

exports.validate = [
  genericValidator(body, 'series', {
    isRequired: true,
    isString: true,
    isLength: { min: 1, max: 255 },
  }),
  body('os')
    .isIn(['windows', 'linux'])
    .withMessage('OS must be either windows or linux'),
  genericValidator(body, 'ram', {
    isRequired: true,
    isString: true,
    isLength: { min: 1, max: 255 },
  }),
  genericValidator(body, 'ram', {
    isRequired: true,
    isString: true,
    isLength: { min: 1, max: 255 },
  }),
  genericValidator(body, 'pricing', {
    isDecimalInRange: { min: 1, max: 99999999.99 },
  }),
  checkUnrecognizedParams(['series', 'os', 'ram', 'pricing'], 'body'),
  validateRequest,
];
