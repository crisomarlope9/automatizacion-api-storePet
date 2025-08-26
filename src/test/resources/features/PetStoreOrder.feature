@testOrdenAll
Feature: Ordenes de Store
  @testOrden
  Scenario Outline: Creaciòn de Orden
   Given Se define la url "https://petstore.swagger.io/v2"
    When se crea la orden
    Then valido el codigo de respuesta sea igual "<statusCodeEsperado>"
    And estado de la orden sea "placed"

    Examples:
      |statusCodeEsperado|
      |200               |

  @testOrden2
  Scenario Outline: Consulta la orden
    Given Se define la url "https://petstore.swagger.io/v2/"
    When se consulta la orden por "<id>"
    Then valido el codigo de respuesta sea igual "<statusCodeEsperado>"
    And valido el "<idResp>" de la orden


    Examples:
      |id|statusCodeEsperado|idResp|
      |1 |200               |1     |
      |2 |200               |2     |
      |3 |200               |3     |
      |4 |200               |4     |
      |5 |200               |5     |


