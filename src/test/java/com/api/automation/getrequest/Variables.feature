Feature: Variables Creation in Karate Framework

  Background: Create and Initialize Variables
    * def app_name = "Google"
    * def page_lode_timeout = 20

  # <Gherkin Keyword> <def> <Variable_name> = <Value>
  # * <def> <variable_name> = <value>
  Scenario: To create a Variable
    # Use Variable for repeating value
    # Storing the data from a external file
    # In the matcher expression
    # Passing the Data from one feature file to another
    Given def var_int = 10
    And def var_string = "Karate"
    Then print "Int Variable ==> ", var_int
    And print "String Variable ==> ", var_string
    * def var_int_2 = var_int + 10
    And print "New Variable ==> ", var_int_2
    And print "BackGroud Section Variabel ==> ", app_name , page_lode_timeout
    

  Scenario: Acces the Variable
    * def var_int = 1
    * def var_string = "New"
    * def var_int_2 = var_int + 90
    Given print "Previous Scenario ==> ", var_int
    And print "Previous Scenario ==> ", var_string
    And print "Previous Scenario ==> ", var_int_2
    And print "BackGroud Section Variabel ==> ", app_name , page_lode_timeout
