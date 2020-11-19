Feature: To use the JSON path expression

  Background: Setup the Base path
    Given url 'http://localhost:9898'

  Scenario: To get the value of property using json path expression
    Given path '/normal/webapi/all'
    When method get
    Then status 200
    # karate.jsonPath(doc,jsonPathExpression)
    * def jobID = 1
    * def jobTitle = karate.jsonPath(response,"$[?(@.jobId == " + jobID + ")].jobTitle")
    * def jobDescription = karate.jsonPath(response,"$[?(@.jobId == 1)].jobDescription")
    * def experience = karate.jsonPath(response,"$[?(@.jobId == 1)].experience")
    And print "Job Title ==> ", jobTitle
    And print "Job Description ==> ", jobDescription
    And print "Experience ==> ", experience
