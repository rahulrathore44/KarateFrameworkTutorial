Feature: To parse the given date time

  Scenario: Parse the date time using java script function
    * def parsedDate = call read("DateTimeUtil.js") {textDate:"2021-02-06T04:45:11.577+0000",patteren:"yyyy-MM-dd"}
    * print "======== > ", parsedDate
