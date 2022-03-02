Feature: To access the java script function which has karate functions
  
  Scenario: To access the java script function which has karate functions
    
    * def auth = call read('testFunction.js') {proposta:1,status:'welcome'}
    And print "This is Encoded string ==> ", auth
    
