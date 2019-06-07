Feature: Crear un evento
  Como docente
  Quiero crear un evento
  Para poder hacer un seguimiento en la revisión de los documentos de estudiantes

  Background:
    Given Visito la pagina principal
    And Ingreso con mi usuario "laurita"
    And Ingreso con mi contraseña "laura123"
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos
    And presiono el boton con el nombre "Eventos"
    And presiono la opcion "Crear evento"

  Scenario: crear un evento con datos validos
    And Ingreso los siguientes campos
      |Semestre:| Primer|
      |Nombre del evento: | calidad|
      |Carrera: | Ingeniería en Sistemas|
      |Fecha límite de recepción de documentos:| 2019-06-12 |

    And Presiono el boton "Registrar evento"
    Then El sistema muestra la pagina de eventos

  Scenario: crear un evento sin elegir semestre
    And Ingreso los siguientes campos
      |Nombre del evento: | calidad|
      |Carrera: | Ingeniería en Sistemas|
      |Fecha límite de recepción de documentos:| 2019-06-12 |

    And Presiono el boton "Registrar evento"
    Then El sistema muestra una alerta "Debe elegir un semestre"

  Scenario: crear un evento sin elegir una carrera
    And Ingreso los siguientes campos
      |Semestre:| Primer|
      |Nombre del evento: | calidad|
      |Fecha límite de recepción de documentos:| 2019-06-12 |

    And Presiono el boton "Registrar evento"
    Then El sistema muestra una alerta "Debe elegir la carrera"

  Scenario: crear un evento sin ingresar un nombre
    And Ingreso los siguientes campos
      |Semestre:| Primer|
      |Carrera: | Ingeniería en Sistemas|
      |Fecha límite de recepción de documentos:| 2019-06-12 |

    And Presiono el boton "Registrar evento"
    Then El sistema muestra una alerta "El nombre no puede estar vacío"


  Scenario: crear un evento sin seleccionar una fecha limite
    And Ingreso los siguientes campos
      |Semestre:| Primer|
      |Nombre del evento: | calidad|
      |Carrera: | Ingeniería en Sistemas|

    And Presiono el boton "Registrar evento"
    Then El sistema muestra una alerta "Debe elegir una fecha límite"


