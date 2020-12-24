Feature: To get the variables set by Karate-config.js file

  Background: To get the value of myVarName
    * def localmyVarName = myVarName
    Given print "Background Variable value ==> ", localmyVarName

  Scenario: To get the value of username and password from karate-config.js
    * def localusername = username
    Given print "Scenario Variable value ==> ", localusername
    And print "Scenario Variable value ==> ", password
