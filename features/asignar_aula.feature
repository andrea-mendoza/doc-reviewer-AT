Feature: Asignar una aula
    Como docente
    Quiero asignar una aula
    Para tener en cuenta donde y cuando sera la defensa del trabajo de un estudiante.
    
Background:
    Given Visito la pagina principal
    And Ingreso con mi usuario "laurita"
    And Ingreso con mi contraseña "laura123"
    And presiono el boton "Ingresar"
    When estoy en la pagina de eventos

@onlyThis
Scenario: asignar una aula con datos validos
    And presiono el boton trabajo practico
    When estoy en la pagina de documentos
    And presiono la opcion Asignar aula
    And estoy en la pagina de Asignar Aula
    And Ingreso los siguientes campos de un aula
    |Ambiente:| AP-3|
    |Fecha de la defensa: | 2019-06-12|
    |Hora de la defensa:|04:33 PM|

    And Presiono el boton "Asignar aula"
    Then El sistema  muestra la lista de documentos


Scenario: asignar una aula sin ingresar un ambiente
    And presiono el boton trabajo practico
    When estoy en la pagina de documentos
    And presiono la opcion Asignar aula
    And estoy en la pagina de Asignar Aula
    And Ingreso los siguientes campos de un aula
    |Fecha de la defensa: | 2019-06-12|
    |Hora de la defensa:|04:33 PM|

    And Presiono el boton "Asignar aula"
    Then El sistema muestra una alerta

Scenario: asignar una aula sin seleccionar una fecha
    And presiono el boton trabajo practico
    When estoy en la pagina de documentos
    And presiono la opcion Asignar aula
    And estoy en la pagina de Asignar Aula
    And Ingreso los siguientes campos de un aula
    |Ambiente:| AP-3|
    |Hora de la defensa:|04:33 PM|

    And Presiono el boton "Asignar aula"
    Then El sistema  muestra la lista de documentos

Scenario: asignar una aula sin seleccionar la hora
    And presiono el boton trabajo practico
    When estoy en la pagina de documentos
    And presiono la opcion Asignar aula
    And estoy en la pagina de Asignar Aula
    And Ingreso los siguientes campos de un aula
    |Ambiente:| AP-3|
    |Fecha de la defensa: | 2019-06-12|

    And Presiono el boton "Asignar aula"
    Then El sistema  muestra la lista de documentos



    