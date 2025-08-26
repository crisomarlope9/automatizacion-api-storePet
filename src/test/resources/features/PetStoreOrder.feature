@testOrdenAll
Feature: Ordenes de Store
  @testOrden
  Scenario Outline: Creaciòn de Orden
   Given Se define la url "https://petstore.swagger.io/v2"
    When se crea la orden
    Then valido el codigo de respuesta sea igual "<statusCodeEsperado>"

    Examples:
      |statusCodeEsperado|
      |200               |

  @testOrden2
  Scenario Outline: Consulta la orden
    Given Se define la url "https://petstore.swagger.io/v2/"
    When se consulta la orden por "<id>"
    Then valido el codigo de respuesta sea igual "<statusCodeEsperado>"

    Examples:
      |id|statusCodeEsperado|
      |1 |200               |
      |2 |200               |
      |3 |200               |
      |4 |200               |
      |5 |200               |


