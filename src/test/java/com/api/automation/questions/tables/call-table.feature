Feature: calling another feature file in a loop

  Background: 
    * table datatable
      | name       | age |
      | 'Bob'      |   2 |
      | 'Wild'     |   1 |
      | 'Nyan'     |   3 |
      | 'Keyboard' |   5 |
      | 'LOL'      |   3 |
      | 'Ceiling'  |   2 |
    * def result = call read('create-object.feature') datatable
    

  Scenario: Sample tests
    * print "Result ", result[0].name
    * print "Result ", result[1].name
