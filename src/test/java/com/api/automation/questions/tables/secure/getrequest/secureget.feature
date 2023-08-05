Feature: To send the get request to an endpoint with SSL

  Scenario: To get all the data from endpoint with SSL
    Given url 'https://gorest.co.in/public/v2/users'
    And path '3826983'
    When method get
    Then status 200
