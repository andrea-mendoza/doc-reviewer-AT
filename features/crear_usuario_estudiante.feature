Feature: Crear cuenta de usuario 
    Como estudiante 
    Quiero crear mi cuenta de estudiante en el sistema de revisión de documentos académicos 
    Para poder tener un seguimiento en la revisión de mis documentos.
  Scenario Outline: Campos validos
    Given yo estoy en la pagina de registro        
	When ingreso mi  "<nombre>"
    And ingreso mi apellido "<apellido>"
    And ingreso mi nombre de usuario "<username>"
    And ingreso mi ci "<ci>"
    And ingreso mi celular "<celular>"
    And selecciono mi carrera "<carrera>"
    And ingreso mi correo electronico "<correo>"
    And ingreso mi password "<password>"
    And ingreso mi confirmacion para mi password "<password_confirm>"
	And presiono el boton Registrarse
	Then soy redirigido a la pagina de Mis documentos
    And veo mi "<nombre> " "<apellido>" en la pantalla

    Examples:
   | nombre  |  apellido      |  username   |   ci  |  celular      |  carrera   |  correo  |  password      |  password_confirm   |
   | Daniela  |  Vela      |  danivo   |   28910289  |  78909876      |  Sistemas   |  danita@gmail.com  |  danivo123      |  danivo123   |

  Scenario Outline: Campos en blanco
    Given yo estoy en la pagina de registro        
	When ingreso mi  "<nombre>"
    And ingreso mi apellido "<apellido>"
    And ingreso mi nombre de usuario "<username>"
    And ingreso mi ci "<ci>"
    And ingreso mi celular "<celular>"
    And selecciono mi carrera "<carrera>"
    And ingreso mi correo electronico "<correo>"
    And ingreso mi password "<password>"
    And ingreso mi confirmacion para mi password "<password_confirm>"
	And presiono el boton Registrarse
	Then veo el mensaje "<mensaje>" 

    Examples:
   | nombre  |  apellido      |  username   |   ci  |  celular      |  carrera   |  correo  |  password      |  password_confirm   |    mensaje |
   |    |        |     |     |        |     |    |        |     |   Campos vacios   |

 Scenario Outline: Correo usado previamente
    Given yo estoy en la pagina de registro        
	When ingreso mi  "<nombre>"
    And ingreso mi apellido "<apellido>"
    And ingreso mi nombre de usuario "<username>"
    And ingreso mi ci "<ci>"
    And ingreso mi celular "<celular>"
    And selecciono mi carrera "<carrera>"
    And ingreso mi correo electronico "<correo>"
    And ingreso mi password "<password>"
    And ingreso mi confirmacion para mi password "<password_confirm>"
	And presiono el boton Registrarse
	Then veo el mensaje "<mensaje>" 


    Examples:
   | nombre  |  apellido      |  username   |   ci  |  celular      |  carrera   |  correo  |  password      |  password_confirm   |    mensaje |
   | Julia  |  Gutierrez      |  julia1   |   28910289  |  78909876      |  Sistemas   |  julia@gmail.com  |  julia123      |  julia123   | Correo ya usado |

Scenario Outline: Numero de celular con mas de 8 digitos
    Given yo estoy en la pagina de registro        
	When ingreso mi  "<nombre>"
    And ingreso mi apellido "<apellido>"
    And ingreso mi nombre de usuario "<username>"
    And ingreso mi ci "<ci>"
    And ingreso mi celular "<celular>"
    And selecciono mi carrera "<carrera>"
    And ingreso mi correo electronico "<correo>"
    And ingreso mi password "<password>"
    And ingreso mi confirmacion para mi password "<password_confirm>"
	And presiono el boton Registrarse
	Then veo el mensaje "<mensaje>" 


    Examples:
   | nombre  |  apellido      |  username   |   ci  |  celular      |  carrera   |  correo  |  password      |  password_confirm   |    mensaje |
   | Julia  |  Gutierrez      |  julia1   |   28910289  |  789098212121276      |  Sistemas   |  julia123@gmail.com  |  julia123      |  julia123   |   El celular no puede tener más de 8 caracteres |   
