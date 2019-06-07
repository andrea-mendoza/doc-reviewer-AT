Feature: Agregar un documento
  Como estudiante
  Quiero agregar un documento a un evento
  Para poder tener una calificacion

  Background:
    Given Visito la pagina principal
    And Ingreso con mi usuario "Julia"
    And Ingreso con mi contraseña "julia1234"
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos

  Scenario: agregar un documento con datos validos
    And presiono el boton con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los siguientes campos
      |Tipo de documento:| Pasantía|
      |Título: | final|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton "Registrar"
    Then El sistema  muestra la lista de documentos


  Scenario: agregar un documento sin titulo
    And presiono el boton con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los siguientes campos
      |Tipo de documento:| Pasantía|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton "Registrar"
    Then El sistema muestra una alerta "Campo obligatorio"

  Scenario: agregar un documento sin link
    And presiono el boton con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los siguientes campos
      |Tipo de documento:| Pasantía|
      |Título: | final|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton "Registrar"
    Then El sistema muestra una alerta "Campo obligatorio"

  Scenario: agregar un documento sin resumen
    And presiono el boton con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los siguientes campos
      |Tipo de documento:| Pasantía|
      |Título: | final|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton "Registrar"
    Then El sistema  muestra la lista de documentos

  Scenario: agregar un documento sin seleccionar un tipo
    And presiono el boton con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los siguientes campos
      |Título: | final|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton "Registrar"
    Then El sistema muestra una alerta "Debe elegir su tipo de documento"






