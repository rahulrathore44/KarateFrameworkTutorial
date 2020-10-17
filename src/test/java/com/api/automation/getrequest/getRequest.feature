Feature: To test the get end point of the application
  To test different get end point with different data formate supported by the application

  Scenario: To get all the data from application in JSON format
    Given url 'http://localhost:9898/normal/webapi/all'
    When method get # Send the get request
    #Then status 201 # the status code response should be 200
    Then status 200 # the status code response should be 200
