Feature: scenario outline using CSV substution

  Scenario Outline: Test Case name: <name>
    * def temp1 = '<empty_value>'
    * print "[Before] Empty Value:",temp1
    * def newValue = (temp1 == "" || temp1 == "null") ? null : temp1
    * def jObj = { Fname: '<name>', tradeNumber: '<tradeNumber>', empty_value: '#(newValue)' }
    * print "JSON Body:",jObj
    * print "[After] Empty Value:",newValue

    Examples: 
      | read('./DataWithEmpty.csv') |
