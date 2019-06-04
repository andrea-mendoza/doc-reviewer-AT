Feature: Crear un evento
  Como docente
  Quiero crear un evento
  Para poder hacer un seguimiento en la revisión de los documentos de estudiantes

  @onlyThis
  Scenario: datos validos
    Given Visito la pagina principal
    And Ingresar "laurita" como usuario
    And Ingresar "laura123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el boton de "Eventos"
    And presiono la opcion "Crear evento"
    When estoy en la pagina de nuevo evento y presiono en "Primer"
    And presiono el boton de "Elige una carrera"
    And selecciono "Ingenieria de sistemas" en el campo de carrera
    And Ingresar "investigacion redes" en el campo nombre del evento
    And presiono en el campo de "Fecha límite de recepción de documentos"
    And selecciono "2019-06-25" en el campo fecha limite
    And Presiono el boton "registrar evento"
    Then El sistema muestra la lista de eventos

  Scenario: semestre vacio
    Given Visito la pagina principal
    And Ingresar "carito" como usuario
    And Ingresar "carito123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el boton de "Evntos"
    And presiono la opcion "crear evento"
    And selecciono "" en el campo de semestre
    And selecciono "2019" en el campo de anio
    And Ingresar "investigacion redes" en el campo nombre del evento
    And selecciono "Ingenieria de sistemas" en el campo de carrera
    And selecciono "2019-06-25" en el campo fecha limite
    And Presiono el boton "registrar evento"
    Then El sistema muestra una alerta "debe ejegir un semestre"

  Scenario: nombre de evento vacio
    Given Visito la pagina principal
    And Ingresar "carito" como usuario
    And Ingresar "carito123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el boton de "Evntos"
    And presiono la opcion "crear evento"
    And selecciono "segundo" en el campo de semestre
    And selecciono "2019" en el campo de anio
    And Ingresar "" en el campo nombre del evento
    And selecciono "Ingenieria de sistemas" en el campo de carrera
    And selecciono "2019-06-25" en el campo fecha limite
    And Presiono el boton "registrar evento"
    Then El sistema muestra una alerta "debe ejegir un semestre"

  Scenario: carrera vaia
    Given Visito la pagina principal
    And Ingresar "carito" como usuario
    And Ingresar "carito123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el boton de "Evntos"
    And presiono la opcion "crear evento"
    And selecciono "segundo" en el campo de semestre
    And selecciono "2019" en el campo de anio
    And Ingresar "investigacion redes" en el campo nombre del evento
    And selecciono "" en el campo de carrera
    And selecciono "2019-06-25" en el campo fecha limite
    And Presiono el boton "registrar evento"
    Then El sistema muestra una alerta "debe ejegir un semestre"

  Scenario: fecha vacia
    Given Visito la pagina principal
    And Ingresar "carito" como usuario
    And Ingresar "carito123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el boton de "Evntos"
    And presiono la opcion "crear evento"
    And selecciono "segundo" en el campo de semestre
    And selecciono "2019" en el campo de anio
    And Ingresar "investigacion redes" en el campo nombre del evento
    And selecciono "Ingenieria de sistemas" en el campo de carrera
    And selecciono "" en el campo fecha limite
    And Presiono el boton "registrar evento"
    Then El sistema muestra una alerta "debe ejegir un semestre"
