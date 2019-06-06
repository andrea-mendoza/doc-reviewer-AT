Feature: Crear un evento
  Como docente
  Quiero crear un evento
  Para poder hacer un seguimiento en la revisión de los documentos de estudiantes

  Background:
    Given Visito la pagina principal

  Scenario: ingresar con datos validos
    And Ingreso con mi usuario "laurita"
    And Ingreso con mi contraseña "laura123"
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos
    And presiono el boton con el nombre "Eventos"
    And presiono la opcion "Crear evento"
    And Ingreso los siguientes campos
      |Semestre:| Primer|
      |Nombre del evento: | calidad|
      |Carrera: | Ingeniería en Sistemas|
      |Fecha límite de recepción de documentos:| 2019-06-12 |
      |button:| Aceptar |

    And Presiono el boton "Registrar evento"
    Then El sistema muestra la pagina de eventos