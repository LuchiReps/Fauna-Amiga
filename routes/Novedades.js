var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.render('Novedades',{
      isNovedades: true
    });
  });

module.exports = router;