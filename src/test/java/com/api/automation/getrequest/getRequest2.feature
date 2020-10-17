Feature: To test the get end point of the application
  To test different get end point with different data formate supported by the application

  Scenario: To get the data from appliction in JSON format
    Given application url is 'www.google.com'
    And context path is '/getdata'
    When I send the get request
    Then response status code should be 200
    And response data should be in JSON format

  Scenario: To get the data from appliction in XML format
    Given application url is 'www.google.com'
    And context path is '/getdata'
    When I send the get request
    Then response status code should be 200
    And response data should be in XML format
