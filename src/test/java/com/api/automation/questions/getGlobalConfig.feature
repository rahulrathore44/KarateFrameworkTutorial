Feature: to get the variable set at karate-config.js

  Background: to get the value of myVarName
    * def localVar = myVarName
    Then print "value => ", localVar

  Scenario: to get the username and password from karate-config.js
    * def localUserName = username
    Given print "Local username => ", localUserName
    * def localPassword = password
    Then print "Local password => ", localPassword
