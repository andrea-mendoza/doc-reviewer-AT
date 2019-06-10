Feature: Editar datos del usuario
        Como usuario de la aplicacion
        Quiero editar mis datos
        Para matener mis datos actualizados
  Background:
    Given Visito la pagina principal
    And Ingreso con mi usuario y contraseña
    And presiono el boton "Ingresar"

  @login
  Scenario: Editar nombre y apellido del usuario       
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso los siguientes campos
    |Nombre: 	    | Carolina Andrea             |
    |Apellido: 	  | Villalobos Montaño          |
    And presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"
    And Se cambia el nombre de la parte superior por "Carolina Andrea Villalobos Montaño"

  Scenario: Editar ci del usuario       
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso 456736 en el campo ci
    And presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"

    Scenario: Editar ci del usuario vacio      
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso 0 en el campo ci
    And presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"


  Scenario: Editar email del usuario    
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso "carolina@gmail.com" en el campo Correo Electronico
    And presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"

  Scenario Outline: Editar email invalido     
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso "<email>" en el campo Correo Electronico
    And presiono el boton "Editar"
    Then El sistema muestra una alerta "<alerta>"
      
    Examples:
        | email               | alerta                          | 
        |  c                  |  El correo no puede estar vacío |
        |  carito@            |  El correo no puede estar vacío |	  
        |  carito@gmail       |  Ocurrió un error al tratar de guardar usuario |

  Scenario: Editar telefono del usuario 
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso 78576378 en el campo celular
    And presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"

  Scenario: Editar telefono del usuario 
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso 786957463 en el campo celular
    And presiono el boton "Editar"
    Then El sistema muestra una alerta "El celular no puede tener más de 8 caracteres" 

  Scenario: Editar nombre invalido del usuario       
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingresar "" en el campo Nombre
    And presiono el boton "Editar"
    Then El sistema muestra una alerta "El nombre no puede estar vacío"

  Scenario: Editar apellido invalido del usuario       
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingresar "" en el campo Apellido
    And presiono el boton "Editar"
    Then El sistema muestra una alerta "Los apellidos no pueden estar vacíos"

  @password
  Scenario: Cambiar la contraseña del usuario     
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Cambiar contraseña"
    And Ingreso los siguientes campos en el formulario
    |Nueva Contraseña 	       |  villalobos  |
    |Repetir Nueva Contraseña  |  villalobos  |
    |Contraseña Actual         |  carito123   |
    And presiono el boton "Cambiar contraseña"
    Then El sistema muestra el mensaje "Se cambio la contraseña correctamente."