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
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"
    And Se cambia el nombre de la parte superior por "Carolina Andrea Villalobos Montaño"

  Scenario: Editar ci del usuario       
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso 456736 en el campo ci
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"

    Scenario: Editar ci del usuario vacio      
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso 0 en el campo ci
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"


  Scenario: Editar email del usuario    
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso "carolina@gmail.com" en el campo Correo Electronico
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"

  Scenario Outline: Editar email invalido     
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso "<email>" en el campo Correo Electronico
    And Presiono el boton "Editar"
    Then El sistema muestra una alerta "<alerta>"
      
    Examples:
        | email               | alerta                          | 
        |  c                  |  El correo no puede estar vacío |
        |  carito@            |  El correo no puede estar vacío |	  
        |  carito@gmail       |  Ocurrió un error al tratar de guardar usuario |

  Scenario Outline: Editar telefono del usuario 
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso <celular> en el campo celular
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "<mensaje>"

   Examples:
        | celular               | mensaje                                         | 
        |   78576378            |  Tu cuenta se ha actualizado                    |
        |  786957463            |  El celular no puede tener más de 8 caracteres  |	  


  Scenario: Editar nombre invalido del usuario       
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingresar "" en el campo Nombre
    And Presiono el boton "Editar"
    Then El sistema muestra una alerta "El nombre no puede estar vacío"

  Scenario: Editar apellido invalido del usuario       
    When estoy en la pagina de eventos 
    And presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingresar "" en el campo Apellido
    And Presiono el boton "Editar"
    Then El sistema muestra una alerta "Los apellidos no pueden estar vacíos"