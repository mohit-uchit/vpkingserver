const express = require('express');
const router = express.Router();
const invoiceController = require('../controller/transactions/invoiceController');
const getInvoicesValidation = require('../validation/transactions/getInvoicesValidation');
const createInvoiceValidation = require('../validation/transactions/createInvoiceValidation');
const updateStatusValidation = require('../validation/transactions/updateStatusValidation');
const updateStatusAdminValidation = require('../validation/transactions/updateStatusAdmin');
const uploadImageValidation = require('../validation/transactions/uploadImageValidation');
const getInvoiceValidation = require('../validation/transactions/getInvoiceValidation');
const auth = require('../middleware/auth');
const checkRole = require('../middleware/checkRole');
const ftpController = require('../controller/transactions/ftpController');
const multer = require('multer');
const storage = multer.memoryStorage();
const uploadMiddleware = multer({ storage }).single('image'); 

router.get(
  '/',
  auth,
  getInvoicesValidation.validate,
  invoiceController.getInvoices,
);

router.get(
  '/:id',
  auth,
  getInvoiceValidation.validate,
  invoiceController.getInvoice,
);

router.post(
  '/',
  auth,
  createInvoiceValidation.validate,
  invoiceController.createInvoice,
);

router.patch(
  '/customer/:id',
  auth,
  checkRole('customer'),
  updateStatusValidation.validate,
  invoiceController.updateStatusCustomer,
);

router.patch(
  '/admin/:id',
  auth,
  checkRole('admin'),
  updateStatusAdminValidation.validate,
  invoiceController.updateStatusAdmin,
);

router.post(
  '/upload/:id',
  auth,
  checkRole('customer'),
  uploadMiddleware, // Use Multer middleware to handle single file upload
  uploadImageValidation.validate,
  ftpController.uploadImage,
);

router.get(
  '/image/:id',
  auth,
  checkRole('admin'),
  uploadImageValidation.validate,
  ftpController.getImage,
);

module.exports = router;
