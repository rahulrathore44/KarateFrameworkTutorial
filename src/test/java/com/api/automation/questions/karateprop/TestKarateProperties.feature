Feature: Test the reading of karate.properties in the step

	Background: Get the file location from the jvm param
		* def fileLocation = karate.properties['filePath']

  Scenario: To get the username from the jvm param
    * def localUserName = karate.properties['username']
    Given print "Local username => ", localUserName

  Scenario Outline: Data Driven for the job description with file location passed via jvm param
    * print "Testing ==> ", __row

    Examples: 
      | read('jsonData.json') |
