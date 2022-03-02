Feature: scenario outline using a dynamic generator function

  Background: 
    * def generator = function(i){ if (i == 20) return null; return { name: 'cat' + i, age: i } }

  Scenario Outline: cat name: <name>
    * print "===> ", <name>

    Examples: 
      | generator(10) |
