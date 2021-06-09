Feature: To test append of variable

  Scenario Outline: Some scenario <param>
    * print '/mypath/' + '<param>'
    #When method get
    #Then status 200

    Examples: 
      | param |
      | foo   |
      | bar   |
