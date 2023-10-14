Feature: Write res

  Scenario: To get the value from dynamic array
    * def inputJson =
      """
      {
      "firstName": "John",
      "age": 26,
      "phoneNumbers": [
        {
          "wifenumber": "first",
          "number": "0123-4567-8888",
          "photo": "s3/abcd/first.jpeg"
        },
        {
          "wifenumber": "second",
          "number": "0123-4567-8910",
          "photo": "s3/abcd/second.jpeg"
        },
        {
          "wifenumber": "Three",
          "number": "0123-4567-8910",
          "photo": "s3/abcd/Three.jpeg"
        }
      ]
      }
      """
    * def saveJsonToFile =
      """
      function(arg) {
        var WriteToFile = Java.type('com.api.automation.questions.javafun.WriteToFile');
        var jd = new WriteToFile();
        return jd.saveJson(arg);  
      }
      """
      * call saveJsonToFile inputJson
