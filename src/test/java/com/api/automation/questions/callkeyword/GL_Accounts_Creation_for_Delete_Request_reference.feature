@ignore
Feature: GL Accounts Creation for Delete Request reference

  Background: GL Accounts Creation for Delete Request reference
    Given url baseUrl
    # * def glaccountno = Autonum
    * def ISglaccount = read('../payload/Create GL Account Income Statement.xml')

  #* set ISglaccount  /request/operation/content/function/create/glaccount/ACCOUNTNO = glaccountno
  Scenario: Creation and deletion of Income Statement General  Account Number
    Given request  ISglaccount
    And header Content-Type = 'application/xml'
    When method post
    Then status 200
    And match /response/operation/result/status == "success"
    #And match /response/operation/result/data/glaccount/ACCOUNTNO == glaccountno
