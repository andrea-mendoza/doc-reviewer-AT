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
	# And presiono el boton "Registrarse"
	# Then veo mi nombre "<nombre> " "<apellido>" en la pantalla

    Examples:
   | nombre  |  apellido      |  username   |   ci  |  celular      |  carrera   |  correo  |  password      |  password_confirm   |
   | Daniela  |  Vela      |  dani  |   28910289  |  78909876      |  Ingeniería de Sistemas   |  danita@gmail.com  |  danivo123      |  danivo123   |

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
	And presiono el boton "Registrarse"
	Then veo el mensaje "El nombre no puede estar vacío" 
	And veo el mensaje "Los apellidos no pueden estar vacíos" 
	And veo el mensaje "El nombre de usuario no puede estar vacío" 
	And veo el mensaje "Debe elegir una carrera" 
	And veo el mensaje "Ingrese su contraseña" 
	And veo el mensaje "Repita su contraseña" 


    Examples:
   | nombre  |  apellido      |  username   |   ci  |  celular      |  carrera   |  correo  |  password      |  password_confirm   |
   |    |        |     |     |        |     |    |        |       |

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
	And presiono el boton "Registrarse"
	Then veo el mensaje "Correo ya registrado" 

    Examples:
   | nombre  |  apellido      |  username   |   ci  |  celular      |  carrera   |  correo  |  password      |  password_confirm   |   
   | Julia  |  Gutierrez      |  julia1   |   28910289  |  78909876      |  Sistemas   |  juli@gmail.com  |  julia123      |  julia123   | 

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
	And presiono el boton "Registrarse"
	Then veo el mensaje "El celular no puede tener más de 8 caracteres" 

    Examples:
   | nombre  |  apellido      |  username   |   ci  |  celular      |  carrera   |  correo  |  password      |  password_confirm   |    mensaje |
   | Julia  |  Gutierrez      |  julia1   |   28910289  |  789098212121276      |  Sistemas   |  julia123@gmail.com  |  julia123      |  julia123   |   El celular no puede tener más de 8 caracteres |   
