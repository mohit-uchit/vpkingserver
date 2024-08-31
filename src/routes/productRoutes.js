const express = require('express');
const router = express.Router();
const auth = require('../middleware/auth');
const checkRole = require('../middleware/checkRole');
const proxyController = require('../controller/products/proxyController');
const vpsController = require('../controller/products/vpsController');
const promoController = require('../controller/products/promoController');
const createProxyValidation = require('../validation/products/createProxyValidation');
const updateProxyValidation = require('../validation/products/updateProxyValidation');
const getInvoiceValidation = require('../validation/transactions/getInvoiceValidation');
const createVpsValidation = require('../validation/products/createVpsValidation');
const updateVpsValidation = require('../validation/products/updateVpsValidation');

// Proxies endpoints
router.get('/proxy', auth, checkRole('admin'), proxyController.getProxies);
router.post(
  '/proxy',
  auth,
  checkRole('admin'),
  createProxyValidation.validate,
  proxyController.createProxy,
);
router.patch(
  '/proxy/:id',
  auth,
  checkRole('admin'),
  updateProxyValidation.validate,
  proxyController.updateProxy,
);
router.delete(
  '/proxy/:id',
  auth,
  checkRole('admin'),
  getInvoiceValidation.validate,
  proxyController.deleteProxy,
);
router.get('/proxy/buy', auth, proxyController.buyProxy);

// VPS endpoints
router.get('/vps', auth, checkRole('admin'), vpsController.getVps);
router.post(
  '/vps',
  auth,
  checkRole('admin'),
  createVpsValidation.validate,
  vpsController.createVps,
);
router.patch(
  '/vps/:id',
  auth,
  checkRole('admin'),
  updateVpsValidation.validate,
  vpsController.updateVps,
);
router.delete(
  '/vps/:id',
  auth,
  checkRole('admin'),
  getInvoiceValidation.validate,
  vpsController.deleteVps,
);
router.get('/vps/buy', auth, vpsController.buyVps);

router.get('/promocode', auth, checkRole('admin'), promoController.getPromocodes);

router.post('/promocode', auth, checkRole('admin'), promoController.createPromocode);
router.patch(
  '/promocode/:id',
  auth,
  checkRole('admin'),
  promoController.updatePromocode,
);
router.delete(
  '/promocode/:id',
  auth,
  checkRole('admin'),
  promoController.deletePromocode,
);

router.post('/promocode/apply', auth, promoController.applyPromocode);

module.exports = router;
