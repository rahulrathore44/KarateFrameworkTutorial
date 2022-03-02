Feature: To verify Donations Rest Services

  Background: Setup base path
    * url 'https://donation-service.dev.heartfulnessinstitute.in/donations'

  Scenario: To test the get end point with JSON To upload file
    Given path '/ecsUpload'
    And multipart file file = { read: 'TechCrunchcontinentalUSA.csv', filename: 'TechCrunchcontinentalUSA.csv', Content-Type:'multipart/form-data' }
    When method post
    Then status 200
