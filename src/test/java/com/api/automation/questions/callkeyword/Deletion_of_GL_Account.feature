#@ignore
Feature: Deletion of GL Account

  Background: Common GL Module Variables
    Given url baseUrl
    * def deleteglaccount = read('../payload/Delete Income Statement GL Account.xml')

  Scenario: Deletion of GL Account
    Given call read('../GLAccount for Calling from Deletion.feature')
    And request deleteglaccount
    And header Content-Type = 'application/xml'
    When method post
    Then status 200
    And match /response/operation/result/status == "success"
