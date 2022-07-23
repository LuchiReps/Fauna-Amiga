var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.render('Animales',{
      isAnimales: true
    });
  });

module.exports = router;