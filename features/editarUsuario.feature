Feature: Editar datos del usuario
        Como usuario de la aplicacion
        Quiero editar mis datos
        Para matener mis datos actualizados

Scenario: Editar nombre del usuario       
  Given Visito la pagina principal
  And Ingreso "carito" como usuario
  And Ingreso "carito123" como contraseña
  And presiono el boton "Ingresar" 
  When estoy en la pagina de eventos
  And presiono el boton con el nombre "Carolina Villalobos"
  And presiono la opcion "Modificar mis datos"
  And Ingreso "Carolina Andrea" en el campo nombre
  And Ingreso "Villalobos Montaño" en el campo apellido
  And Presiono el boton "Editar"
  Then El sistema regresa a la pagina de eventos
  And El sistema muestra el mensaje "Tu cuenta se ha actualizado"

