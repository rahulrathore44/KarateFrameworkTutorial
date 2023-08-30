Feature: To send the get request to an endpoint with SSL

  Background: Start the Mock server
  	* def port = karate.start('get-mock.feature').port
  
  Scenario: To get all the data from endpoint with SSL
    Given url 'http://localhost:' + port + '/public/v2/users'
    And path '3826983'
    When method get
    Then status 200
    
    
    Scenario: To get all the data from endpoint with SSL
    Given url 'http://localhost:' + port + '/public/v3/users'
    And path '3826983'
    When method get
    Then status 200
