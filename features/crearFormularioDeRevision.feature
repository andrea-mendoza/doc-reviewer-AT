Feature: Creacion del formulario de revision
        Como docente administrador
        Quiero poder crear un formulario de revision
        Para calificar el trabajo de mis alumnos

Scenario: Crear un formulario de revision sin titulo     
  Given Visito la pagina principal
  And Ingresar "laurita" como usuario
  And Ingresar "laura123" como contraseña
  And presiono el boton "Ingresar" 
  When presiono el boton "Crear Form. Revision"
  And presiono el boton "Crear Formulario"
  Then el sistema muestra mensaje de confirmacion con el titulo "Confirmacion"
  And presiono el boton "Crear formulario"
  Then el sistema muesta la alerta "El titulo no puede estar vacio"


Scenario: Crear un formulario de revision con un titulo corto
  Given Visito la pagina principal
  And Ingresar "laurita" como usuario
  And Ingresar "laura123" como contraseña
  And presiono el boton "Ingresar" 
  When presiono el boton "Crear Form. Revision"
  And ingreso "Primer formulario" en el campo titulo
  And presiono el boton "Crear Formulario"
  Then el sistema muestra mensaje de confirmacion con el titulo "Confirmacion"
  And presiono el boton "Crear formulario"
  And el sistema vuelve mostrar el formulario

Scenario: Crear un formulario de revision sin puntaje
  Given Visito la pagina principal
  And Ingresar "laurita" como usuario
  And Ingresar "laura123" como contraseña
  And presiono el boton "Ingresar" 
  When presiono el boton "Crear Form. Revision"
  And ingreso "formulario de taller" en el campo titulo
  And ingreso "Antecedentes" en el campo seccion
  And presiono el boton "Crear Formulario"
  Then el sistema muestra mensaje de confirmacion con el titulo "Confirmacion"
  And presiono el boton "Crear formulario"
  And el sistema vuelve mostrar el formulario

Scenario: Crear un formulario de revision con puntajes negativos
  Given Visito la pagina principal
  And Ingresar "laurita" como usuario
  And Ingresar "laura123" como contraseña
  And presiono el boton "Ingresar" 
  When presiono el boton "Crear Form. Revision"
  And ingreso "formulario de taller" en el campo titulo
  And ingreso "Antecedentes" en el campo seccion
  And ingreso -123 en el campo puntaje maximo
  And presiono el boton "Crear Formulario"
  Then el sistema muestra mensaje de confirmacion con el titulo "Confirmacion"
  And presiono el boton "Crear formulario"
  And el sistema vuelve mostrar el formulario

Scenario: Crear un formulario de revision con puntajes mayores a 100
  Given Visito la pagina principal
  And Ingresar "laurita" como usuario
  And Ingresar "laura123" como contraseña
  And presiono el boton "Ingresar" 
  When presiono el boton "Crear Form. Revision" 
  And ingreso "formulario de taller" en el campo titulo
  And ingreso "Antecedentes" en el campo seccion
  And ingreso 234 en el campo puntaje maximo
  And presiono el boton "Crear Formulario"
  Then el sistema muestra mensaje de confirmacion con el titulo "Confirmacion"
  And presiono el boton "Crear formulario"
  And el sistema vuelve mostrar el formulario

Scenario:  Crear un formulario de revision con una seccion de texto
  Given Visito la pagina principal
  And Ingresar "laurita" como usuario
  And Ingresar "laura123" como contraseña
  And presiono el boton "Ingresar" 
  When presiono el boton "Crear Form. Revision"
  And ingreso "formulario de taller" en el campo titulo
  And presiono el boton "Quitar Seccion"
  And presiono el boton "Añadir seccion de texto"
  And ingreso "Antedecedentes" en el campo seccion
  And ingreso "Descripcion de los antecedentes" en el campo descripcion
  And presiono el boton "Crear Formulario"
  Then el sistema muestra mensaje de confirmacion con el titulo "Confirmacion"
  And presiono el boton "Crear formulario"
  And el sistema vuelve mostrar el formulario

 Scenario: Crear un formulario de revision con todos los campos en blanco
  Given Visito la pagina principal
  And Ingresar "laurita" como usuario
  And Ingresar "laura123" como contraseña
  And presiono el boton "Ingresar" 
  When presiono el boton "Crear Form. Revision"