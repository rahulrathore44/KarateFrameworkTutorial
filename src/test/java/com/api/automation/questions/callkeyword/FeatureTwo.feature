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
      var requestConfig = {
      			pagina:paginaNum,
        		paginacao:paginacaoNum,
        		busca:proposta
      }
      
      karate.log(requestConfig);
      var statusEncontrado = "";
      while(statusEsperado!= statusEncontrado){
      var test = karate.call('FeatureOne.feature', requestConfig);
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
    Given url 'https://api-hml.bancopan.com.br/veiculos/proposta'

  Scenario: Enviar dados Complementares sem chassi
    Given path "/proposta/v3/proposta/083292716/dadoscomplementares"
    And headers {  Accept : 'application/json',  Content-Type: 'application/json',  Authorization: '' }
    And method get
