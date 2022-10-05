var express = require('express');
var router = express.Router();

//  /v1/api/  

// get Api Controllers
var quotesApiController = require('../controllers/Api/QuotesApiController');







/* GET all qoutes RestApi  /1v/api/qoutes    */
router.get('/all-qoutes', quotesApiController.index);

module.exports = router;
