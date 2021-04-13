Feature: Deep search a key in the array

  Scenario: Validate a key is present in the json array
    * def jsonData =
      """
      {
        "dataSourceAttributes": [
          {
            "attributesSourceMapping": [
              "companyStatus",
              "countryOfOrigin",
              "formerNames[0]",
              "firstName",
              "name",
              "type"
            ],
            "dataSource": "ABC",
            "dateCreated": "2021-02-12T07:06:43Z"
          },
          {
            "attributesSourceMapping": [
              "companyStatus",
              "countryOfOrigin",
              "regulatedDetails[0]",
              "taxIds[0]",
              "type"
            ],
            "dataSource": "PQR",
            "dateCreated": "2021-02-12T07:06:44Z"
          },
          {
            "attributesSourceMapping": [
              "companyStatus",
              "countryOfOrigin",
              "regulatedDetails[0]",
              "firstName",
              "taxIds[0]",
              "type"
            ],
            "dataSource": "XYZ",
            "dateCreated": "2021-02-12T07:06:44Z"
          }
      ]
        }
      """
      * def query1 = karate.jsonPath(jsonData,"$.dataSourceAttributes[?(@.attributesSourceMapping[3] == \"firstName\")]")
      * print query1
      
