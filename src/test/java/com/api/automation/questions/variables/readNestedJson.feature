Feature: Read nested json in Karate Framework

  Scenario: 
    * def input_json =
      """
      {
      "data": [
      {
      "cluster": "testkfds02",
      "headers": [
      "environment:test",
      "event_version:1.0.0",
      "producerId:",
      "x-datadog-trace-id:8962847973565398488",
      "x-datadog-parent-id:6367804385302955860",
      "x-datadog-sampling-priority:0",
      "x-datadog-tags:_dd.p.dm=-1",
      "dd-pathway-ctx-base64:cxuOR2tZNu/+75HEl2Sa8JHEl2Q="
      ],
      "key": "f804df79-d42a-4f02-be02-a46254ca1ca1",
      "value": "{\"QA1\": \"578d3ac6-04eb-4ae2-8927-af7e0ca5472b\", \"QA2\": 1721145375757, \"QA3\": \"f804df79-d42a-4f02-be02-a46254ca1ca1\", \"QA4\": \"055482906\", \"QA5\": \"Test\", \"QA6\": \"Test1\", \"solution\": \"QA7\", \"solutionType\": \"LEGACY\", \"channel\": \"UNKNOWN\", \"relatedSessionId\": null, \"sessionData\": null}"
      }
      ]
      }

      """
    * def var_string = karate.jsonPath(input_json,"$.data[0].value")
    * def parseJson =
      """
      function(inputValue, name){
      	var obj = JSON.parse(inputValue);
      	return obj[name]
      }
      """
    * print "String variable ==>", var_string
    * print "QA5 Value ==>", parseJson(var_string, 'QA5')
