const router = require('express').Router();
const authController = require('../controller/auth/authController');
const auth = require('../middleware/auth');

router.post('/login', authController.login);

router.post('/signup', authController.signup);

router.get('/getUserRole', auth, authController.getUserRole);

module.exports = router;
