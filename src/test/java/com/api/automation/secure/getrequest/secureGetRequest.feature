Feature: To access the GET end point which is secure with Basic Auth
  GET /secure/webapi/all

  Background: Setup the Base path
    Given url 'http://localhost:9898'

  Scenario: To access the GET end point with basic auth
    Given path '/secure/webapi/all'
    And headers {Accept:'application/json', Authorization:'Basic YWRtaW46d2VsY29tZQ=='}
    When method get
    Then status 200
    And match response == '#notnull'

  Scenario: To access the GET end point without basic auth
    Given path '/secure/webapi/all'
    And headers {Accept:'application/json'}
    When method get
    Then status 401
    And match response == '#notnull'

  Scenario: To access the GET end point with non-exiting user
    Given path '/secure/webapi/all'
    And headers {Accept:'application/json', Authorization:'Basic YXV0aG9yOndlbGNvbWUx'}
    When method get
    Then status 401

  Scenario: To access the GET end point with basic auth via js function
    Given path '/secure/webapi/all'
    * def auth = call read('../../basicAuth.js') {username:'admin',password:'welcome'}
    And print "This is Encoded string ==> ", auth
    And headers {Accept:'application/json', Authorization:'#(auth)'}
    When method get
    Then status 200
    And match response == '#notnull'
