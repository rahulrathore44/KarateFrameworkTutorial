Feature: To create job description in the test application

  Scenario Outline: Data Driven for the job description entry using json files
    * print "Testing ==> ", __row

    Examples: 
      | read("jsonData.json") |
