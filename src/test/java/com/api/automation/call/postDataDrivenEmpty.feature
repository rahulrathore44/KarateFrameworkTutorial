Feature: To call the other feature file with JSON Object

  Scenario: Call the another feature file
  	* def content = {}
    * def result = call read('source.feature') content
