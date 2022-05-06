const router = require('express').Router()
const authController = require('../controllers/authController')


router.route('/signup').post(authController.signUp)
router.route('/login').post(authController.login)
router.route('/updateProfile').post(authController.updateProfile)

module.exports = router;