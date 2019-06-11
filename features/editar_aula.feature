Feature: Editar Aula
        Como docente administrador
        Quiero editar el aula de defensa
        Para matener al alumno informado

  Background:
    Given Visito la pagina principal
    And Ingreso con mi usuario y contraseña de docente
    And presiono el boton "Ingresar"

  Scenario: Editar el nombre del aula      
    When estoy en la pagina de eventos 
    And presiono el link del evento "taller de grado"
    And presiono el link de la pagina "2"
    When presiono el tercer icono Editar Aula 
    And Ingreso "A4-2" en el campo Ambiente
    And presiono el boton "Editar aula"
    Then El sistema muestra la pantalla de eventos


  Scenario: Editar la fecha del aula      
    When estoy en la pagina de eventos 
    And presiono el link del evento "taller de grado"
    And presiono el link de la pagina "2"
    When presiono el tercer icono Editar Aula 
    And Ingreso una nueva fecha
    And presiono el boton "Editar aula"
    Then El sistema muestra la pantalla de eventos

Scenario: Editar el nombre del aula y dejarlo en blanco     
    When estoy en la pagina de eventos 
    And presiono el link del evento "taller de grado"
    And presiono el link de la pagina "2"
    When presiono el tercer icono Editar Aula 
    And Ingreso "" en el campo Ambiente
    And presiono el boton "Editar aula"
    Then El sistema muestra la alerta "El ambiente no puede estar vacío"


