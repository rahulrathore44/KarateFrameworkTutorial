Feature: Variables in Karate Framework

  # def keywords come from the Karate framework. They are used to create variables.
  # Syntax: <Gherkin Keyword> <def> <Variable_name> = <value>
  # Using the wild * symbol to create variables.
  Scenario: 
    # Use cases
    # Variable for repeat value
    # Store the date in an external file
    # In the matcher expression
    # Pass the data from one feature file into another
    * def var_int = 10
    * def var_string = "Karate"
    * print "Int variable ==>", var_int
    * print "String variable ==>", var_string
    # this step below mentioned where states _var_int_2 is invalid variable name.
    * def var_int_2 = var_int + 10
    * print "New Variable ==>", var_int_2
