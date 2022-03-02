Feature: To test the callsingle karate function

  Background: Call the feature file
    * def result = karate.callSingle('CalledOnce.feature')

  Scenario Outline: To call the 
    * print "Value from Example"
    * print "Value from BackGround", result

    Examples: 
      | result |
