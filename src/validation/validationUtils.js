const moment = require('moment');

/**
 * Function to validate time input in the format "HH:mm".
 *
 * @param time
 * @returns {boolean}
 */
function validateTime(time) {
  const regex = /^([01]\d|2[0-3]):[0-5]\d$/;
  return regex.test(time);
}

function validateHms(time) {
  const regex = /^([01]\d|2[0-3]):[0-5]\d:[0-5]\d$/;
  return regex.test(time);
}

function isValidDateFormat(date, dateFormat) {
  return moment(date, dateFormat, true).isValid();
}

module.exports = {
  validateTime,
  validateHms,
  isValidDateFormat,
};
