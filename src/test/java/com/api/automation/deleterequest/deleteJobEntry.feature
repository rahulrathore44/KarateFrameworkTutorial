Feature: To test the delete end point
  DELETE /normal/webapi/remove/{id}

  Background: Create and Initialize base Url
    Given url 'http://localhost:9898'

  Scenario: To delete the job entry from application using job id
    # Create a new Job entry
    # Delete the newly created job entry
    # Get request with qury parameter and validate for 404
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def createJobId = getRandomValue()
    * def creatJob = call read("../createJobEntryWithVariables.feature") {_url:'http://localhost:9898',_path:'/normal/webapi/add',_id:'#(createJobId)'}
    # delete request
    Given path '/normal/webapi/remove/' + createJobId
    And headers {Accept:'application/json'}
    When method delete
    Then status 200
    # Get Request
    Given path '/normal/webapi/find'
    And params {id:'#(createJobId)',jobTitle:'Software Engg - 2'}
    And header Accept = 'application/json'
    When method get
    Then status 404

  Scenario: To delete the job entry from application using job id and delete the job entry twice
    # Create a new Job entry
    # Delete the newly created job entry
    # Get request with qury parameter and validate for 404
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def createJobId = getRandomValue()
    * def creatJob = call read("../createJobEntryWithVariables.feature") {_url:'http://localhost:9898',_path:'/normal/webapi/add',_id:'#(createJobId)'}
    # delete request
    Given path '/normal/webapi/remove/' + createJobId
    And headers {Accept:'application/json'}
    When method delete
    Then status 200
    # delete request
    Given path '/normal/webapi/remove/' + createJobId
    And headers {Accept:'application/json'}
    When method delete
    Then status 404
