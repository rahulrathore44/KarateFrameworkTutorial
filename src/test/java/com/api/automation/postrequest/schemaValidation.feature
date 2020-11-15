Feature: Validate the JSON schema
  To validate the JSON schema for POST /normal/webapi/add

  Background: Create and Initialize base Url
    Given url 'http://localhost:9898'

  Scenario: To create the Job Entry in JSON format
    Given path '/normal/webapi/add'
    * def body = read("data/jobEntry.json")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    And match response ==
      """
      {
      "jobId": '#number',
      "jobTitle": '#string',
      "jobDescription": '#string',
      "experience": '#[] #string',
      "project": '#[] #object'
      }
      """

  Scenario: Schema Validation for GET end point
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get # Send the get request
    Then status 200 # the status code response should be 200
    * def projectSchema = { "projectName": '#string',"technology": '#[] #string' }
    * def mainSchema = {"jobId": '#number',"jobTitle": '#string',"jobDescription": '#string',"experience": '#[] #string',"project": '#[] ##(projectSchema)'}
    And match response ==
      """
      '#[] ##(mainSchema)'
      """
