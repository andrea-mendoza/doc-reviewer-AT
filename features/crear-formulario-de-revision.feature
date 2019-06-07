Feature: Creacion del formulario de revision
        Como docente administrador
        Quiero poder crear un formulario de revision
        Para calificar el trabajo de mis alumnos

Background:
    Given Visito la pagina principal
    And Ingreso con mi usuario y contraseña
    And presiono el boton "Ingresar"

Scenario: Crear un formulario de revision sin titulo     
  When presiono el icono Crear Form. Revision
  And presiono el link "Crear Formulario"
  Then el sistema muestra mensaje de confirmacion con el titulo "Confirmación"
  And confirmo con el boton Crear formulario
  Then el sistema muesta la alerta "El título no puede estar vacío"


Scenario: Crear un formulario de revision con un titulo corto
  When presiono el icono Crear Form. Revision
  And ingreso "Primer formulario" en el campo titulo
  And presiono el link "Crear Formulario"
  Then el sistema muestra mensaje de confirmacion con el titulo "Confirmación"
  And confirmo con el boton Crear formulario
  And el sistema vuelve mostrar el formulario

# Scenario: Crear un formulario de revision sin puntaje
#   When presiono el boton "Crear Form. Revision"
#   And ingreso "formulario de taller" en el campo titulo
#   And ingreso "Antecedentes" en el campo seccion
#   And presiono el boton "Crear Formulario"
#   Then el sistema muestra mensaje de confirmacion con el titulo "Confirmación"
#   And presiono el boton "Crear formulario"
#   And el sistema vuelve mostrar el formulario

# Scenario: Crear un formulario de revision con puntajes negativos 
#   When presiono el boton "Crear Form. Revision"
#   And ingreso "formulario de taller" en el campo titulo
#   And ingreso "Antecedentes" en el campo seccion
#   And ingreso -123 en el campo puntaje maximo
#   And presiono el boton "Crear Formulario"
#   Then el sistema muestra mensaje de confirmacion con el titulo "Confirmación"
#   And presiono el boton "Crear formulario"
#   And el sistema vuelve mostrar el formulario

# Scenario: Crear un formulario de revision con puntajes mayores a 100
#   When presiono el boton "Crear Form. Revision" 
#   And ingreso "formulario de taller" en el campo titulo
#   And ingreso "Antecedentes" en el campo seccion
#   And ingreso 234 en el campo puntaje maximo
#   And presiono el boton "Crear Formulario"
#   Then el sistema muestra mensaje de confirmacion con el titulo "Confirmación"
#   And presiono el boton "Crear formulario"
#   And el sistema vuelve mostrar el formulario

#  Scenario: Crear un formulario de revision con todos los campos en blanco
#   When presiono el boton "Crear Form. Revision"