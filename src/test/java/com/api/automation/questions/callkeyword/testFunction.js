function myfunc(data) {
	
    var paginaNum = 1;
    var paginacaoNum = 50;
    var statusEsperado = 71;
    var requestConfig = {
        pagina: paginaNum,
        paginacao: paginacaoNum,
        busca: data.proposta
    }
    var statusEsperado = data.status;
    karate.log("Output ",data);
    var statusEncontrado = "";
    while (statusEsperado != statusEncontrado) {
        var numProposta = data.proposta;
        var test = karate.call('../consultaProposta/consultarProposta.feature@consultaPlugin', requestConfig);
        karate.log(test.codigoStatus);
        statusEncontrado = test.codigoStatus
        if (statusEncontrado == data.status) {
            return true;
        }
    }
    return false;
}