Feature: Editar datos del usuario
        Como usuario de la aplicacion
        Quiero editar mis datos
        Para matener mis datos actualizados
  Background:
    Given Visito la pagina principal
    And Ingresar "carito" como usuario
    And Ingresar "carito123" como contraseña
    And presiono el boton "Ingresar"

  @login
  Scenario: Editar nombre y apellido del usuario       
    When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingresar "Carolina Andrea" en el campo nombre
    And Ingresar "Villalobos Montaño" en el campo apellido
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"
    And Se cambia el nombre de la parte superior por "Carolina Andrea Villalobos Montaño"

  Scenario: Editar ci del usuario       
    When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Villalobos"
    And presiono la opcion "Modificar mis datos"
    And Ingresar 234323 en el campo ci
    And Presiono el boton "Editar"
    Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"

  # Scenario: Editar email invalido     
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Andrea Villalobos Montaño"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar " " en el campo Correo Electronico
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra una alerta "El correo no puede estar vacío"

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
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Andrea Villalobos Montaño"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar "carolina@gmail.com" en el campo Correo Electronico
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra el mensaje "Tu cuenta se ha actualizado"


  # Scenario: Editar telefono del usuario con datos invalidos   
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Andrea Villalobos Montaño"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar 12312731242 en el campo telefono
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra el mensaje "El numero de telefono debe tener hasta 8 digitos"


  # Scenario: Editar telefono del usuario con datos invalidos   
  #   When estoy en la pagina de eventos y presiono el boton con el nombre "Carolina Andrea Villalobos Montaño"
  #   And presiono la opcion "Modificar mis datos"
  #   And Ingresar 12312731242 en el campo telefono
  #   And Presiono el boton "Editar"
  #   Then El sistema muestra el mensaje "El numero de telefono debe tener hasta 8 digitos"