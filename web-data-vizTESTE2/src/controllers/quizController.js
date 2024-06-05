var quizModel = require("../models/quizModel");


function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var heroi = req.body.heroiServer;
    var fk_usuario = req.body.fk_usuarioServer
   
    

    // Faça as validações dos valores
    if (heroi == undefined) {
        res.status(400).send("Seu heroi está undefined!");
    }else if (fk_usuario == undefined) {
        res.status(400).send("Sua fk está undefined!");
    } else {

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
        quizModel.cadastrar(heroi, fk_usuario)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }




    // var idUsuario = req.params.idUsuario;

    // avisoModel.cadastrar(idUsuario)
    //     .then(
    //         function (resultado) {
    //             if (resultado.length > 0) {
    //                 res.status(200).json(resultado);
    //             } else {
    //                 res.status(204).send("Nenhum resultado encontrado!");
    //             }
    //         }
    //     )
    //     .catch(
    //         function (erro) {
    //             console.log(erro);
    //             console.log(
    //                 "Houve um erro ao buscar os avisos: ",
    //                 erro.sqlMessage
    //             );
    //             res.status(500).json(erro.sqlMessage);
    //         }
    //     );








}

module.exports = {
    cadastrar
}