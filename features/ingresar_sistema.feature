    
Feature: Ingresar al sistema 
    Como usuario 
    Quiero ingresar al sistema de revision de documentos 
    Para poder ver el progreso de revision de mis documentos.
     Background:
         Given yo estoy en la pagina de iniciar sesion  

  Scenario: Campos validos
	 When ingreso lo siguiente en los campos requeridos
            |Nombre de usuario o email: | Julia                |
            |Contraseña: 	            | julia1234             |
    And presiono el boton "Ingresar"
	Then veo mi nombre "Julia" "Gutierrez" en la pantalla

  Scenario: Campos en blanco
	When ingreso lo siguiente en los campos requeridos
            |Nombre de usuario o email: |                 |
            |Contraseña: 	            |              |
	And presiono el boton "Ingresar"
	Then veo el mensaje "Ingrese su contraseña"

  

   Scenario: Contraseña incorrecta
    Given yo estoy en la pagina de iniciar sesion        
	When ingreso lo siguiente en los campos requeridos
            |Nombre de usuario o email: |    Julia             |
            |Contraseña: 	            |    julia123          |
	And presiono el boton "Ingresar"
	Then veo el mensaje "Login o contraseña inválidos"


   Scenario: Nombre de usuario incorrecto
    Given yo estoy en la pagina de iniciar sesion        
	When ingreso lo siguiente en los campos requeridos
            |Nombre de usuario o email: |    julia123             |
            |Contraseña: 	            |    julia123          |
	And presiono el boton "Ingresar"
	Then veo el mensaje "Username/email o contraseña inválidos."


