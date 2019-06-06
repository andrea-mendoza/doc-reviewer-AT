Feature: Crear un evento
  Como docente
  Quiero crear un evento
  Para poder hacer un seguimiento en la revisión de los documentos de estudiantes

  Scenario Outline: datos validos
    Given Visito la pagina principal
    And Ingresar "<username>" como usuario
    And Ingresar "<password>" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el boton de "Eventos"
    And presiono la opcion "Crear evento"
    And estoy en la pagina de nuevo evento
    And selecciono "<title>" en el campo de titulo
    And selecciono "<career>" en el campo de carrera
    And ingresar "<nameEvent>" en el campo nombre del evento
    And selecciono "<fechaLimit>" en el campo fecha limite
    And Presiono el boton "registrar evento"
    Then El sistema muestra la lista de eventos

    Examples:
      |username|password| title | career | nameEvent | fechaLimit |
      |laurita|laura123|cosas|Ingeniería Mecatrónica|trabajo| 2019-06-12 |