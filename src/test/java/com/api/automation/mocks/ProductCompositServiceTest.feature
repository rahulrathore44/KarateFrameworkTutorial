Feature: To test the Get endpoint of product composite service

  Scenario: To test GET end point by mocking downstream service
    Given url 'http://localhost:9090'
    And path 'productinfo/123'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And match response.companyName == 'Amazon.com'
    And match response.product == '#notnull'
    And match response.review == '#notnull'
