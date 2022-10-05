var Quote = require('../../models/index').Quote;
// Restful Style Controller + some views


module.exports.index = function(req, res) {

    var qoutes = Quote.findall();
    res.json( {quote: q}); 

    
};

