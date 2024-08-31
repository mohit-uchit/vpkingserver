const { param } = require('express-validator');
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

  validateRequest,
];
