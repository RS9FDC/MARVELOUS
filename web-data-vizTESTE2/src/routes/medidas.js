var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});


// var medidaController = require("../controllers/medidaController");

router.get("/ultimas2", function (req, res) {
    medidaController.buscarUltimasMedidas2(req, res);
});


module.exports = router;