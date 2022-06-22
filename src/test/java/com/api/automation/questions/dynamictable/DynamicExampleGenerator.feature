Feature: scenario outline using a dynamic example generator function

  Scenario Outline: The variable are resolved within the 'Examples' table itself <name>
    * def var1 = 'Hello World'
    * def var2 = <expression>
    * print 'After Expression Evaluation ',var2

    Examples: 
      | name                    | expression!                          |
      | 'As simple Variable'    | var1                                 |
      | 'As inline JSON Object' | { country: '#(var1)', active: 'No' } |
