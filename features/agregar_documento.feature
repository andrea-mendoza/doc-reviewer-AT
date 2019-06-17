Feature: Agregar un documento
  Como estudiante
  Quiero agregar un documento a un evento
  Para poder tener una calificacion

  Background:
    Given Visito la pagina principal
    And Ingreso con mi usuario "Julia"
    And Ingreso con mi contraseña "julia1234"
    And presiono el boton "Ingresar"
@onlyThis
  Scenario: agregar un documento con datos validos
   When estoy en la pagina de eventos
    And presiono el boton con el nombre de "trabajo practico"
    When estoy en la pagina de documentos
    And presiono en "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los campos
      |Tipo de documento:| Pasantía|
      |Título: | final|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton al final de la pagina "Registrar"
    Then El sistema  muestra la lista de documentos


  Scenario: agregar un documento sin titulo
   When estoy en la pagina de eventos
    And presiono el boton con el nombre de "trabajo practico"
    When estoy en la pagina de documentos
    And presiono en "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los campos
      |Tipo de documento:| Pasantía|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton al final de la pagina "Registrar"
    Then El sistema muestra una alerta de "Campo obligatorio"

  Scenario: agregar un documento sin link
   When estoy en la pagina de eventos
    And presiono el boton con el nombre de "trabajo practico"
    When estoy en la pagina de documentos
    And presiono en "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los campos
      |Tipo de documento:| Pasantía|
      |Título: | final|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton al final de la pagina "Registrar"
    Then El sistema muestra una alerta de "Campo obligatorio"

  Scenario: agregar un documento sin resumen
   When estoy en la pagina de eventos
    And presiono el boton con el nombre de "trabajo practico"
    When estoy en la pagina de documentos
    And presiono en "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los campos
      |Tipo de documento:| Pasantía|
      |Título: | final|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton al final de la pagina "Registrar"
    Then El sistema  muestra la lista de documentos

  Scenario: agregar un documento sin seleccionar un tipo
   When estoy en la pagina de eventos
    And presiono el boton con el nombre de "trabajo practico"
    When estoy en la pagina de documentos
    And presiono en "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los campos
      |Título: | final|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "fold.pdf" en el campo elija un archivo
    And Presiono el boton al final de la pagina "Registrar"
    Then El sistema muestra una alerta de "Debe elegir su tipo de documento"

  Scenario: agregar un documento sin cargar un documento
   When estoy en la pagina de eventos
    And presiono el boton con el nombre de "trabajo practico"
    When estoy en la pagina de documentos
    And presiono en "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los campos
      |Tipo de documento:| Pasantía|
      |Título: | final|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And Presiono el boton al final de la pagina "Registrar"
    Then El sistema muestra una alerta en la pagina

  Scenario: agregar un documento sin cargar un documento
   When estoy en la pagina de eventos
    And presiono el boton con el nombre de "trabajo practico"
    When estoy en la pagina de documentos
    And presiono en "añadir"
    And estoy en la pagina de Nuevo Documento
    And Ingreso los campos
      |Tipo de documento:| Pasantía|
      |Título: | final|
      |Link archivo Google Docs:|https://trello.com/b/KF6z7Id3/automatizacion|
      |Resumen o Introducción:|dshshshshhshshshshshs|
    And cargo "readme.txt" en el campo elija un archivo
    And Presiono el boton al final de la pagina "Registrar"
    Then El sistema muestra una alerta en la pagina