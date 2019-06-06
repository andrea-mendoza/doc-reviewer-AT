Feature: Crear cuenta de usuario 
    Como estudiante 
    Quiero crear mi cuenta de estudiante en el sistema de revisión de documentos académicos 
    Para poder tener un seguimiento en la revisión de mis documentos.
    Background:
        Given yo estoy en la pagina de registro        

    Scenario: Campos validos
        When ingreso lo siguiente en los campos requeridos
            |Nombre: 	        | Daniela               |
            |Apellido: 	        | Vela                  |
            |Nombre de usuario: | danivo                |
            |Ci: 	            | 121212                |
            |Celular:           | 75848230              |	
            |Carrera: 	        | Ingeniería en Sistemas|
            |Correo:            | daniela_vela@gmail.com| 	
            |Contraseña: 	    | danivo123             |
            |Repetir contraseña:| danivo123             |
    
        # Then veo mi nombre "<nombre> " "<apellido>" en la pantalla

    Scenario: Campos en blanco
        When ingreso lo siguiente en los campos requeridos
            |Nombre: 	        |                   |
            |Apellido: 	        |                   |
            |Nombre de usuario: |                   |
            |Ci: 	            |                   |
            |Celular:           |                   |	
            |Carrera: 	        |                   |
            |Correo:            |                   | 	
            |Contraseña: 	    |                   |
            |Repetir contraseña:|                   |
        And presiono el boton "Registrarse"
        Then veo los mensajes 
            |Nombre: 	            | El nombre no puede estar vacío                |
            |Apellido: 	            | Los apellidos no pueden estar vacíos          |
            |Nombre de usuario: 	| El nombre de usuario no puede estar vacío     |
            |Carrera: 	            | Debe elegir una carrera                       |
            |Contraseña: 	        | Ingrese su contraseña                         |
            |Repetir contraseña:    | Repita su contraseña                          |
    


    Scenario: Correo usado previamente
        When ingreso lo siguiente en los campos requeridos
            |Nombre: 	        | Julia                     |
            |Apellido: 	        | Gutierrez                 |
            |Nombre de usuario: | julia1                    |
            |Ci: 	            | 28910289                  |
            |Celular:           | 78909876                  |	
            |Carrera: 	        | Ingeniería de Sistemas    |
            |Correo:            | juli@gmail.com            | 	
            |Contraseña: 	    | julia123                  |
            |Repetir contraseña:| julia123                  |
        And presiono el boton "Registrarse"
        Then veo el mensaje "Correo ya registrado" 



    Scenario: Numero de celular con mas de 8 digitos
        When ingreso lo siguiente en los campos requeridos
            |Nombre: 	        | Julia                     |
            |Apellido: 	        | Gutierrez                 |
            |Nombre de usuario: | julia1                    |
            |Ci: 	            | 28910289                  |
            |Celular:           | 789099675775876           |	
            |Carrera: 	        | Ingeniería de Sistemas    |
            |Correo:            | juli@gmail.com            | 	
            |Contraseña: 	    | julia123                  |
            |Repetir contraseña:| julia123                  |
        And presiono el boton "Registrarse"
        Then veo el mensaje "El celular no puede tener más de 8 caracteres" 

