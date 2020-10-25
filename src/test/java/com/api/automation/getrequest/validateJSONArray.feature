Feature: To validate the GET End point
  To validate the get end point response

  Background: Setup the base url
    Given url 'http://localhost:9898'

  Scenario: To get the data in JSON format
    Given path '/normal/webapi/all'
    And header Accept = 'application/json'
    When method get
    Then status 200
    And match response.[0].jobId == 1
    And match response.[0].experience[1] == 'Apple'
    And match response.[0].project[0].projectName == 'Movie App'
    And match response.[0].project[0].technology[2] == 'Gradle'
    #validate the size of array
    And match response.[0].experience == '#[3]'
    And match response.[0].project[0].technology == '#[3]'
    # Using wild card char
    And match response.[0].experience[*] == ['Google','Apple','Mobile Iron']
    And match response.[0].project[0].technology[*] == ['Kotlin','SQL Lite','Gradle']
    # Contains keyword
    And match response.[0].experience[*] contains ['Mobile Iron','Apple']
    And match response.[0].project[0].technology[*] contains ['SQL Lite']
    And match response.[*].jobId contains 1
