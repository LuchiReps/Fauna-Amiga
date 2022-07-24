var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer')
router.get('/', function (req, res, next) {
  res.render('Contacto', {
    isContacto: true
  });
});

router.post('/', async function (req, res, next) {
  console.log(req.body)
  var nombre = req.body.nombre
  var email = req.body.email
  var tel = req.body.tel
  var comentario = req.body.comentario

  var obj = {
    to: 'luchieukene@gmail.com',
    subject: 'Contacto desde la pagina web',
    html: nombre + ' se contacto a traves de ' + email + ' ,con un telefono que es ' + tel + ' .Ademas de haber comentado: ' + comentario + '.'
  }
var transport = nodemailer.createTransport({
  host:process.env.SMTP_HOST,
  port:process.env.SMTP_PORT,
  auth: {
    user:process.env.SMTP_USER,
    pass:process.env.SMTP_PASS
}
})

var info = await transport.sendMail(obj);

res.render('contacto',{
message: 'Mensaje enviado correctamente',
isContacto: true
})

})

module.exports = router;