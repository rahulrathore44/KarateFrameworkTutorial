Feature: stateful mock server

  Scenario: pathMatches('/public/v2/users/3826983') && methodIs('get')
    * def response = { mock: "Hello From mock server"}
