Feature: scenario outline using CSV substution

  Scenario Outline: Test Case name: <name>
    #* print "===> ", '<name>'
    * def uniqueID = function(){ return java.util.UUID.randomUUID() + '' }
    * def jObj = { Fname: '<name>', tradeNumber: '#(uniqueID())' }
    * print "===> ", jObj

    Examples: 
      | read('./Data.csv') |
