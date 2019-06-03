Feature: Agregar un documento
  Como estudiante
  Quiero añadir un documento a un evento
  Para poder tener una calificacion

  @onlyThis
  Scenario: datos validos
    Given estoy en la pagina principal
    And Ingresar "Julia" como usuario
    And Ingresar "julia1234" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el nombre del evento "taller de grado"
    And presiono la opcion "añadir"
    And selecciono "taller de grado" en el campo tipo de documento
    And ingreso "taller" en el campo de titulo
    And ingreso "www.drive.docuemntos.com" en el campo de link archivo google docs
    And cargo "taller.pdf" en el campo elija un archivo
    And ingreso "este trabajo es el final" en el campo de resumen
    And Presiono el boton "registrar"
    Then El sistema  muestra la lista de documentos

  Scenario: datos validos
    Given estoy en la pagina principal
    And Ingresar "laurita" como usuario
    And Ingresar "laura123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el nombre del evento "taller de grado"
    And presiono la opcion "añadir"
    And selecciono "taller de grado" en el campo tipo de documento
    And ingreso "taller" en el campo de titulo
    And ingreso "https://trello.com/c/Y2zutwdE/9-agregar-un-docuemento-como-estudiante" en el campo de link archivo google docs
    And cargo "taller.pdf" en el campo elija un archivo
    And ingreso "este trabajo es el final" en el campo de resumen
    And Presiono el boton "registrar"
    Then El sistema  muestra la lista de documentos

  Scenario: formato invalido
    Given estoy en la pagina principal
    And Ingresar "laurita" como usuario
    And Ingresar "laura123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el nombre del evento "taller de grado"
    And presiono la opcion "añadir"
    And selecciono "taller de grado" en el campo tipo de documento
    And ingreso "taller" en el campo de titulo
    And ingresar "https://trello.com/c/Y2zutwdE/9-agregar-un-docuemento-como-estudiante" en el campo de link archivo google docs
    And cargo "taller.txt" en el campo elija un archivo
    And "este trabajo es el final" en el campo de resumen
    And Presiono el boton "registrar"
    Then El sistema muestra una alerta "ingrese el valor con tipo valido"

  Scenario: formato invalido
    Given estoy en la pagina principal
    And Ingresar "laurita" como usuario
    And Ingresar "laura123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el nombre del evento "taller de grado"
    And presiono la opcion "añadir"
    And selecciono "taller de grado" en el campo tipo de documento
    And ingreso "taller" en el campo de titulo
    And ingreso "https://trello.com/c/Y2zutwdE/9-agregar-un-docuemento-como-estudiante" en el campo de link archivo google docs
    And cargo "taller.txt" en el campo elija un archivo
    And ingreso "este trabajo es el final" en el campo de resumen
    And Presiono el boton "registrar"
    Then El sistema muestra una alerta "ingrese el valor con tipo valido"

  Scenario: link vacio
    Given estoy en la pagina principal
    And Ingresar "laurita" como usuario
    And Ingresar "laura123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el nombre del evento "taller de grado"
    And presiono la opcion "añadir"
    And selecciono "taller de grado" en el campo tipo de documento
    And ingreso "taller" en el campo de titulo
    And ingreso "" en el campo de link archivo google docs
    And cargo "taller.txt" en el campo elija un archivo
    And ingreso "este trabajo es el final" en el campo de resumen
    And Presiono el boton "registrar"
    Then El sistema muestra una alerta "campo obligatorio"

  Scenario: titulo vacio
    Given estoy en la pagina principal
    And Ingresar "laurita" como usuario
    And Ingresar "laura123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el nombre del evento "taller de grado"
    And presiono la opcion "añadir"
    And selecciono "taller de grado" en el campo tipo de documento
    And ingreso "" en el campo de titulo
    And ingreso "https://trello.com/c/Y2zutwdE/9-agregar-un-docuemento-como-estudiante" en el campo de link archivo google docs
    And cargo "taller.txt" en el campo elija un archivo
    And ingreso "este trabajo es el final" en el campo de resumen
    And Presiono el boton "registrar"
    Then El sistema muestra una alerta "campo obligatorio"

  Scenario: resumen vacio
    Given estoy en la pagina principal
    And Ingresar "laurita" como usuario
    And Ingresar "laura123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el nombre del evento "taller de grado"
    And presiono la opcion "añadir"
    And selecciono "taller de grado" en el campo tipo de documento
    And ingreso "taller" en el campo de titulo
    And ingreso "https://trello.com/c/Y2zutwdE/9-agregar-un-docuemento-como-estudiante" en el campo de link archivo google docs
    And cargo "taller.txt" en el campo elija un archivo
    And ingreso "" en el campo de resumen
    And Presiono el boton "registrar"
    Then El sistema muestra una alerta "campo obligatorio"

  Scenario: tipo no seleccionado
    Given estoy en la pagina principal
    And Ingresar "laurita" como usuario
    And Ingresar "laura123" como contraseña
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos y presiono el nombre del evento "taller de grado"
    And presiono la opcion "añadir"
    And selecciono "" en el campo tipo de documento
    And ingreso "taller" en el campo de titulo
    And ingreso "https://trello.com/c/Y2zutwdE/9-agregar-un-docuemento-como-estudiante" en el campo de link archivo google docs
    And cargo "taller.txt" en el campo elija un archivo
    And ingreso "este trabajo es el final" en el campo de resumen
    And Presiono el boton "registrar"
    Then El sistema muestra una alerta "campo obligatorio"