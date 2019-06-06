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
    When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingreso los siguientes campos
    |Nombre: 	    | Carolina Andrea             |
    |Apellido: 	  | Villalobos Montaño          |
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"
    And Se cambia el nombre de la parte superior por "Carolina Andrea Villalobos Montaño"

  Scenario: Editar ci del usuario       
    When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingresar 234323 en el campo ci
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"

  # Scenario Outline: Editar email invalido     
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingreso "<email>" en el campo Correo Electronico
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra una alerta "<alerta>"
      
  #   Examples:
  #       | email               | alerta                          | 
  #       |  c                  |  El correo no puede estar vacío |
  #       |  carito@            |  El correo no puede estar vacío |	  
  #       |  carito@gmail       |  Ocurrió un error al tratar de guardar usuario |

  # Scenario: Editar nombre invalido del usuario       
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar "" en el campo nombre
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra una alerta "El nombre no puede estar vacío"

  # Scenario: Editar apellido invalido del usuario       
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar "" en el campo Apellido
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra una alerta "El apellido no puede estar vacío"

  # Scenario: Editar email del usuario    
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar "carolina@gmail.com" en el campo Correo Electronico
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"


  # Scenario: Editar telefono del usuario con datos invalidos   
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar 12312731242 en el campo telefono
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra el mensaje "El celular no puede tener más de 8 caracteres"


  # Scenario: Editar telefono del usuario con datos invalidos   
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar 12312731242 en el campo telefono
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra el mensaje "El celular no puede tener más de 8 caracteres"