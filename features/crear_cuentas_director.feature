Feature: Crear cuenta de usuario 
    Como director de carrera
    Quiero crear cuentas de usuario para estudiantes, docentes y otros directores
    Para que puedan participar del proceso de revisión de documentos.
    Background:
        Given Visito la pagina principal
        And ingreso con mi usuario y contraseña de director de carrera
        And presiono el boton "Ingresar"    

     Scenario: Crear cuenta para un estudiante
         When presiono la opcion "Usuarios"
         And presiono la opcion "Crear usuario"
         And ingreso la siguiente los datos del usuario en los campos requeridos
            |Nombre: 	        | Maria                |
            |Apellido: 	        | Rojas                |
            |Nombre de usuario: | maria1                |
            |Carrera: 	        | Ingeniería Ambiental |
            |Celular:           | 75848230             |
            |Rol:    	        | estudiante           |
            |Correo electrónico:| maria_roj1@gmail.com   |  	
            |Contraseña: 	    | maria123             |
        And presiono el boton "Crear usuario"
        Then El sistema me redirige a la página de Usuarios

     Scenario: Crear cuenta para un director
         When presiono la opcion "Usuarios"
         And presiono la opcion "Crear usuario"
         And ingreso la siguiente los datos del usuario en los campos requeridos
            |Nombre: 	        | Mari                |
            |Apellido: 	        | Rojas                |
            |Nombre de usuario: | mari11               |
            |Carrera: 	        | Ingeniería Ambiental |
            |Celular:           | 75848230             |
            |Rol:    	        | director             |
            |Correo electrónico:| maria1@gmail.com |  	
            |Contraseña: 	    | maria123             |
        And presiono el boton "Crear usuario"
        Then El sistema me redirige a la página de Usuarios    

     Scenario: Crear cuenta para docente
         When presiono la opcion "Usuarios"
         And presiono la opcion "Crea r usuario"
         And ingreso la siguiente los datos del usuario en los campos requeridos
            |Nombre: 	        | Diana                |
            |Apellido: 	        | Rojas                |
            |Nombre de usuario: | diana11              |
            |Carrera: 	        | Ingeniería Ambiental |
            |Celular:           | 75848230             |
            |Rol:    	        | docente             |
            |Correo electrónico:| diana1@gmail.com |  	
            |Contraseña: 	    | diana123             |
        And presiono el boton "Crear usuario"
        Then El sistema me redirige a la página de Usuarios    
