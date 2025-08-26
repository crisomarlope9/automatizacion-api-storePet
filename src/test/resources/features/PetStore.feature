Feature: Mascota
@testEjecucion
  Scenario Outline: Consultar mascota por Id


    Given defino la url "https://petstore.swagger.io/v2/"
    When consulto la mascota de la ID "<idMascota>"
    And valido el codigo de respuesta sea <statusCodeEsperado>
    And valido el nombre de la moscota sea "doggie"

    Examples:
  | idMascota | statusCodeEsperado |
  |16          |200                 |
  |17          |200                 |
  |18          |200                 |
  |19          |200                 |
  |15          |200                 |
  |26          |200                 |
  |27          |200                 |
  |28          |200                 |
  |29          |200                 |
  |25          |200                 |

  @AgregarMascota

  Scenario Outline: agregar mascota
    Given defino la url "https://petstore.swagger.io/v2/"
    When creo una mascota con "<nombre>"
    And valido el codigo de respuesta sea <statusCodeEsperado>
    Examples:
      | nombre | statusCodeEsperado |
      |Doki          |200                 |

  @EliminarMascota

  Scenario Outline: eliminar mascota
    Given defino la url "https://petstore.swagger.io/v2/"
    When elimino una mascota con el "<id>"
    And valido el codigo de respuesta sea <statusCodeEsperado>
    Examples:
      | id | statusCodeEsperado |
      |1        |200                 |

  @actualizarMascota
  Scenario Outline: actualizar nombre de mascota
    Given defino la url "https://petstore.swagger.io/v2/"
    When actualizo "DOKKI1" de mascota por "<id>"
    And valido el codigo de respuesta sea <statusCodeEsperado>
    Examples:
      | id | statusCodeEsperado |
      |1        |200                 |
  @iniciarSesion
  Scenario Outline: iniciar sesion
    Given defino la url "https://petstore.swagger.io/v2/"
    When ingreso con mi "<user>" y "<contrasena>"
    And valido el codigo de respuesta sea <statusCodeEsperado>
    Examples:
      | user|contrasena | statusCodeEsperado |
      |cristhianomar9@gmail.com     |Pocoyo77!   |200                 |


