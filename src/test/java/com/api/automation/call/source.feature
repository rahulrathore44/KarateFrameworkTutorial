Feature: To create job description in the test application <a>

  Background: 
    * print "====> Hello"

  Scenario Outline: Print the passed information
    # * def customJson = { "caseTypeID":"O7QYDY-TravelSe-Work-BizTravel", "content": '#(localContent)'  }
    * def customJson = { "caseTypeID":"O7QYDY-TravelSe-Work-BizTravel", "content": '#(__row)'  }
    * print "JSON Object ===> ", customJson

    Examples: 
      | read('../JsonResponse.json') |
