Feature: Crear cuenta de usuario 
    Como estudiante 
    Quiero crear mi cuenta de estudiante en el sistema de revisión de documentos académicos 
    Para poder tener un seguimiento en la revisión de mis documentos.
    Background:
        Given Visito la pagina de registro de usuarios    

    Scenario: Campos validos
        When ingreso la siguiente informacion en los campos requeridos
            |Nombre: 	        | Dani               |
            |Apellido: 	        | Vela                  |
            |Nombre de usuario: | danicita                |
            |Carrera: 	        | Ingeniería en Sistemas|
            |Ci: 	            | 121212                |
            |Celular:           | 75848230              |	
            |Correo:            | dani_vel@gmail.com| 	
            |Contraseña: 	    | danivo123             |
            |Repetir contraseña:| danivo123             |
        And presiono el boton "Registrarse"
        # Then estoy en la pagina de Mis Documentos y veo mi nombre "Daniela" "Vela" en la pantalla

    Scenario: Campos en blanco
        When ingreso la siguiente informacion en los campos requeridos
            |Nombre: 	        |                   |
            |Apellido: 	        |                   |
            |Nombre de usuario: |                   |
            |Ci: 	            |                   |
            |Carrera: 	        |                   |
            |Celular:           |                   |	
            |Correo:            |                   | 	
            |Contraseña: 	    |                   |
            |Repetir contraseña:|                   |
        And presiono el boton "Registrarse"
        Then veo los mensajes 
            |Nombre: 	            | El nombre no puede estar vacío                |
            |Apellido: 	            | Los apellidos no pueden estar vacíos          |
            |Nombre de usuario: 	| El nombre de usuario no puede estar vacío     |
            |Contraseña: 	        | Ingrese su contraseña                         |
            |Repetir contraseña:    | Repita su contraseña                          |
    


    Scenario: Correo usado previamente
        When ingreso la siguiente informacion en los campos requeridos
            |Nombre: 	        | Julia                     |
            |Apellido: 	        | Gutierrez                 |
            |Nombre de usuario: | julia1                    |
            |Carrera: 	        | Ingeniería de Sistemas    |
            |Ci: 	            | 28910289                  |
            |Celular:           | 78909876                  |	
            |Correo:            | juli@gmail.com            | 	
            |Contraseña: 	    | julia123                  |
            |Repetir contraseña:| julia123                  |
        And presiono el boton "Registrarse"
        Then permanezco en la misma página de Crear Cuenta 
        And deberia ver el mensaje de error "El correo electrónico ya fue registrado con otra cuenta."


    Scenario: Numero de celular con mas de 8 digitos
        When ingreso la siguiente informacion en los campos requeridos
            |Nombre: 	        | Julia                     |
            |Apellido: 	        | Gutierrez                 |
            |Nombre de usuario: | julia1                    |
            |Carrera: 	        | Ingeniería de Sistemas    |
            |Ci: 	            | 28910289                  |
            |Celular:           | 789099675775876           |	
            |Correo:            | juli@gmail.com            | 	
            |Contraseña: 	    | julia123                  |
            |Repetir contraseña:| julia123                  |
        And presiono el boton "Registrarse"
        Then veo el mensaje "El celular no puede tener más de 8 caracteres" 

  Scenario: Numero de celular negativo
        When ingreso la siguiente informacion en los campos requeridos
            |Nombre: 	        | Julia                     |
            |Apellido: 	        | Gutierrez                 |
            |Nombre de usuario: | julia1                    |
            |Carrera: 	        | Ingeniería de Sistemas    |
            |Ci: 	            | 28910289                  |
            |Celular:           | -789099675775876           |	
            |Correo:            | juli2@gmail.com            | 	
            |Contraseña: 	    | julia123                  |
            |Repetir contraseña:| julia123                  |
        And presiono el boton "Registrarse"
        Then permanezco en la misma página de Crear Cuenta 
        And deberia ver el mensaje de error "El número de celular no puede ser negativo."
        
  Scenario: CI negativo
        When ingreso la siguiente informacion en los campos requeridos
            |Nombre: 	        | Julia                     |
            |Apellido: 	        | Gutierrez                 |
            |Nombre de usuario: | julia1                    |
            |Carrera: 	        | Ingeniería de Sistemas    |
            |Ci: 	            | -1294828910289                  |
            |Celular:           | 70077586           |	
            |Correo:            | juli@gmail.com            | 	
            |Contraseña: 	    | julia123                  |
            |Repetir contraseña:| julia123                  |
        And presiono el boton "Registrarse"
        Then permanezco en la misma página de Crear Cuenta
        And deberia ver el mensaje de error "El CI no puede ser negativo."


 Scenario: Contraseñas diferentes
        When ingreso la siguiente informacion en los campos requeridos
            |Nombre: 	        | Julia                     |
            |Apellido: 	        | Gutierrez                 |
            |Nombre de usuario: | julia1                    |
            |Carrera: 	        | Ingeniería de Sistemas    |
            |Ci: 	            | -1294828910289                  |
            |Celular:           | 70077586           |	
            |Correo:            | juli@gmail.com            | 	
            |Contraseña: 	    | julia123                  |
            |Repetir contraseña:| julia1234789                  |
        And presiono el boton "Registrarse"
        Then veo el mensaje "La contraseña debe coincidir con la anterior" 

    Scenario: Contraseña con menos de 6 caracteres
        When ingreso la siguiente informacion en los campos requeridos
            |Nombre: 	        | Julia                     |
            |Apellido: 	        | Gutierrez                 |
            |Nombre de usuario: | julia1                    |
            |Carrera: 	        | Ingeniería de Sistemas    |
            |Ci: 	            | -1294828910289                  |
            |Celular:           | 70077586           |	
            |Correo:            | juli@gmail.com            | 	
            |Contraseña: 	    | 1234                  |
            |Repetir contraseña:| 1234                  |
        And presiono el boton "Registrarse"
        Then veo el mensaje "La contraseña debe tener al menos 6 caracteres" 

