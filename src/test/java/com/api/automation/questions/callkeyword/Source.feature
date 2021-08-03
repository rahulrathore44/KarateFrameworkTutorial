Feature: To get the variables set by Karate-config.js file

  Background: fazer Autenticação
    Given url _url
    * def propostaNum = '#(propostaNumero)'
    * def pagina = '#(paginaNum)'
    * def paginacao = '#(paginacaoNum)'
    #* def token = call read('../autenticacao/autenticar.feature')

  Scenario: Enviar dados Complementares sem chassi
    #Given path '/proposta/v3/proposta'
    * def qparams {pagina:'#(paginaNum)', paginacao:'#(paginacaoNum)', busca:'#(propostaNum)'}
    * karate.log(qparams)
    * def codigoStatus = 71
