Feature: scenario outline using a dynamic generator function

  Background: 
    * def generator = function(i){ if (i == 20) return null; return { name: 'cat' + i, age: i } }

  Scenario Outline: cat name: <name>
    * print "===> ", <name>

    Examples: 
      | generator(10) |

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
    * def photoList = karate.jsonPath(inputJson,"$.phoneNumbers[*].photo")
    * print "List of Photos ", photoList 
