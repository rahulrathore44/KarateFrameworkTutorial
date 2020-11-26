Feature: To create the Job entry in the test application
  Helper file for POST /normal/webapi/add

  Scenario: To create the Job Entry with JSON data
    Given url 'http://localhost:9898'
    And path '/normal/webapi/add'
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    * def id = getRandomValue()
    And request {  "jobId": '#(id)',"jobTitle": "Software Engg - 2", "jobDescription": "To develop andriod application", "experience": [ "Google", "Apple", "Mobile Iron", "Google" ], "project": [ { "projectName": "Movie App", "technology": [ "Kotlin", "SQL Lite","Gradle", "Jenkins" ] } ]}
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 201
    * def responseJobId = response.jobId
