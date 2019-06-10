Feature: Ver documentos 
        Como estudiante
        Quiero poder ver mis documentos subidos
        Para poder seguir su proceso de revision

Background:
    Given Visito la pagina principal
    And ingreso con mi usuario y contraseña de estudiante
    And presiono el boton "Ingresar"

Scenario: Ver documentos     
  When presiono la opcion "Mis Documentos"
  Then se muestra en pantalla una tabla con Mis Documentos
