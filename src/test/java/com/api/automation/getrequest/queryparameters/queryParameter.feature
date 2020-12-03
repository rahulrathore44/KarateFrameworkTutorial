Feature: To test the Get end point with Query Parameter
  GET /normal/webapi/find

  Background: Create and Initialize base Url
    Given url 'http://localhost:9898'

  Scenario: To get the data using Query Parameter
    # Create the Job Entry
    # Get the newly created Job Entry using Query Param
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def createJobId = getRandomValue()
    * def createJob = call read("../../createJobEntryWithVariables.feature") { _url:'http://localhost:9898', _path:'/normal/webapi/add',_id:'#(createJobId)' }
    # Send the Get request with query param
    Given path '/normal/webapi/find'
    #And param id = createJobId
    #And param jobTitle = 'Software Engg - 2'
    And params {id:'#(createJobId)', jobTitle:'Software Engg - 2'}
    And headers {Accept:'application/json'}
    When method get
    Then status 200
    And match response.jobId == createJobId

  Scenario: To get the data using Query Parameter with JobId not in the application
    # Create the Job Entry
    # Get the newly created Job Entry using Query Param
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def createJobId = getRandomValue()
    * def createJob = call read("../../createJobEntryWithVariables.feature") { _url:'http://localhost:9898', _path:'/normal/webapi/add',_id:'#(createJobId)' }
    # Send the Get request with query param
    Given path '/normal/webapi/find'
    And param id = 78542554
    And param jobTitle = 'Software Engg - 2'
    And headers {Accept:'application/json'}
    When method get
    Then status 404
