Feature: To get the variables set by Karate-config.js file

  Background: Enviar dados complementares
    * def propostaNumero = '083292847'
    * def fun =
      """
      function(proposta)
      {
      var paginaNum = 1;
      var paginacaoNum = 50;
      var statusEsperado = 71;
      var request = Java.type('java.lang.String');
      var request1 = request.format("{pagina:%s, paginacao:%s, busca:%s}",paginaNum,paginacaoNum,proposta);
      karate.log(request1);
      var statusEncontrado = "";
      while(statusEsperado!= statusEncontrado){
      var test = karate.call('Source.feature', request1);
      karate.log(test.codigoStatus);
      statusEncontrado = test.codigoStatus
      if(statusEncontrado == "71"){
      break
      }
      }
      }
      """
    * def function = call fun propostaNumero

  # * def token = call read('../autenticacao/autenticar.feature')
  #Given url _url
  Scenario: Enviar dados Complementares sem chassi
    #Given path "/proposta/v3/proposta/083292716/dadoscomplementares"
    * karate.log("/proposta/v3/proposta/083292716/dadoscomplementares")
    #And headers {  Accept : 'application/json',  Content-Type: 'application/json',  Authorization: '#("Bearer " +token.token)' }
    #And method get
