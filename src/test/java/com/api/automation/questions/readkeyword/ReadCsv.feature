Feature: To read the csv file and use in the scenario

  Background: 
    * def generator = read('testdata.csv')

  Scenario: Print the first record from CSV data
  # Access all data
  * print generator
  # Access single recod
  * print generator[0]
  # Access a property from single recod
  * print generator[0].email
  
  
  Scenario: Print the second record from CSV data
  # Access single recod
  * print generator[1]
  # Access a property from single recod
  * print generator[1].email
