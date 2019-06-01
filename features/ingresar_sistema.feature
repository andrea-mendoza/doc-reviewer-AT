    
Feature: Ingresar al sistema 
    Como usuario 
    Quiero ingresar al sistema de revision de documentos 
    Para poder ver el progreso de revision de mis documentos.
 
  Scenario Outline: Campos validos
    Given yo estoy en la pagina de iniciar sesion        
	When ingreso mi nombre de usuario  "<username>"
    And ingreso mi password "<password>"
	And presiono el boton "Ingresar"
	Then veo mi "<nombre>" "<apellido>" en la pantalla
    

    Examples:
   | username  |  password  | nombre    |   apellido    |  
   | Julia  |  julia1234      |  Julia   |   Gutierrez  | 

  Scenario Outline: Campos en blanco
    Given yo estoy en la pagina de iniciar sesion        
	When ingreso mi nombre de usuario  "<username>"
    And ingreso mi password "<password>"
	And presiono el boton "Ingresar"
	Then veo el mensaje "Ingrese su contraseña"

    Examples:
   | username  |  password  | 
   |   |        |    

    Scenario Outline: Contraseña incorrecta
    Given yo estoy en la pagina de iniciar sesion        
	When ingreso mi nombre de usuario  "<username>"
    And ingreso mi password "<password>"
	And presiono el boton "Ingresar"
	Then veo el mensaje "Login o contraseña inválidos"


    Examples:
   | username  |  password  |  
   |  Julia  |  julia123  |    