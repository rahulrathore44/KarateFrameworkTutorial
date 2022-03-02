Feature: To test the calling of the Java Function

  Scenario: Call the Java Function
    * def JavaDemo = Java.type('com.api.automation.call.javafun.CaseBundle')
    * def result = JavaDemo.getStaticMap()
    * print "Result ===> ",result
    * match result contains  { 'static-one': '#string' }
