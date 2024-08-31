const express = require('express');
const router = express.Router();
const env = process.env.NODE_ENV || 'development';
const ipRoutes = require('./src/routes/ipRoutes');
const authRoutes = require('./src/routes/authRoutes');
const invoiceRoutes = require('./src/routes/invoiceRoutes'); // Make sure path is correct
const productRoutes = require('./src/routes/productRoutes');
const responseHandle = require('./src/helpers/responseHanlde');
const responseCode = require('./src/helpers/responseCode');

router.get('/', function (req, res) {
  return responseHandle.responseWithoutData(
    res,
    responseCode.OK,
    'Welcome to AkshayRdpService! If you are looking for a job, please send your resume to zbu@ezpapel.com!',
  );
});

router.use('/ip', ipRoutes);
router.use('/invoice', invoiceRoutes);
router.use('/auth', authRoutes);
router.use('/products', productRoutes);

router.all('*', function (req, res, next) {
  return responseHandle.responseWithError(
    res,
    responseCode.NOT_FOUND,
    'Route Not Found!',
  );
});

module.exports = router;
