Feature: To get the variables set by Karate-config.js file

  Background: fazer Autenticação
    Given url 'https://api-hml.bancopan.com.br/veiculos/proposta'
    * def propostaNum = busca
    * def paginaNum = pagina
    * def paginacaoNum = paginacao
    * karate.log(" ============= ",propostaNum, paginaNum, paginacaoNum)   

  # * def token = call read('../autenticacao/autenticar.feature')
  Scenario: Enviar dados Complementares sem chassi
    Given path '/proposta/v3/proposta'
    And params {pagina:'#(paginaNum)', paginacao:'#(paginacaoNum)', busca:'#(propostaNum)'}
    And headers {  Accept : 'application/json',  Content-Type: 'application/json',  Authorization: '' }
    And method get
    Then status 200
    * def codigoStatus = response.results[0].status.codigo
