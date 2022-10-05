var express = require('express');
var router = express.Router();
var authController = require('../controllers/AuthController.js');


/* GET home page. */
router.get('/',  function(req, res, next){
    req.flash("info", "Hello World!");
    res.json( { title: 'ShareFood Api' }); 
});

router.get('/dashboardtest',  authController.isLoggedIn, function(req, res, next){
    req.flash("info", "Dashboard TEST Successssss!!");
    res.render('dashboard', { title: 'Express' }); 
});

// router.get('/api', function(req, res, next){
//     // TODO -- list all posible rest api

// });

// Todo Rolebased authorization
// router.get('/admin/dashboard', [authController.isLoggedIn, authController.isAdmin], function(req,res, next){ .. })




module.exports = router;

