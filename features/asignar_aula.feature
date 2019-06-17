Feature: Asignar una aula
    Como docente
    Quiero asignar una aula
    Para tener en cuenta donde y cuando sera la defensa del trabajo de un estudiante.
    
Background:
    Given Visito la pagina principal
    And Ingreso con mi usuario "laurita"
    And Ingreso con mi contraseña "laura123"
    And presiono el boton "Ingresar"


Scenario: asignar una aula con datos validos
    When estoy en la pagina de eventos
    And presiono la opcion con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion de "asignar aula"
    And estoy en la pagina de Asignar Aula
    And Ingreso en los siguientes campos
    |Ambiente:| AP-3|
    |Fecha de la defensa: | 2019-06-12|
    |Hora de la defensa:|04:33 PM|

    And Presiono el boton de "Asignar aula"
    Then El sistema  muestra la lista de documentos
    

Scenario: asignar una aula sin ingresar un ambiente
    When estoy en la pagina de eventos
    And presiono la opcion con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion de "asignar aula"
    And estoy en la pagina de Asignar Aula
    And Ingreso en los siguientes campos
    |Fecha de la defensa: | 2019-06-12|
    |Hora de la defensa:|04:33 PM|

    And Presiono el boton de "Asignar aula"
    Then El sistema muestra una alerta debajo del campo ambiente

Scenario: asignar una aula sin seleccionar una fecha
    When estoy en la pagina de eventos
    And presiono la opcion con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion de "asignar aula"
    And estoy en la pagina de Asignar Aula
    And Ingreso en los siguientes campos
    |Ambiente:| AP-3|
    |Hora de la defensa:|04:33 PM|

    And Presiono el boton de "Asignar aula"
    Then El sistema muestra una alerta debajo del campo fecha

@onlyThis
Scenario: asignar una aula sin seleccionar la hora
    When estoy en la pagina de eventos
    And presiono la opcion con el nombre "trabajo practico"
    When estoy en la pagina de documentos
    And presiono la opcion de "asignar aula"
    And estoy en la pagina de Asignar Aula
    And Ingreso en los siguientes campos
    |Ambiente:| AP-3|
    |Fecha de la defensa: | 2019-06-12|

    And Presiono el boton de "Asignar aula"
    Then El sistema muestra una alerta debajo del campo hora