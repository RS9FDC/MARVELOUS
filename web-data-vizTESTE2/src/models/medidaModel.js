var database = require("../database/config");

function buscarUltimasMedidas() {

    var instrucaoSql = `SELECT heroi, COUNT(*) AS vezes_apareceu
    FROM quiz
    GROUP BY heroi;`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


// module.exports = {
//     buscarUltimasMedidas
// }









function buscarUltimasMedidas2() {

    var instrucaoSql = `SELECT idade FROM usuario`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


module.exports = {
    buscarUltimasMedidas,
    buscarUltimasMedidas2
}
