Feature: Ver documentos 
        Como estudiante
        Quiero poder ver mis documentos subidos
        Para poder seguir su proceso de revision

Background:
    Given Visito la pagina principal
    And ingreso con mi usuario y contraseña de estudiante
    And presiono el boton "Ingresar"

Scenario: Ver mis documentos     
  When presiono la opcion "Mis Documentos"
  Then se muestra en pantalla una tabla con Mis Documentos

Scenario: Ver un documento     
  When presiono la opcion "Mis Documentos"
  And presiono el documento "Caratula"
  Then se muestra en pantalla la información del documento
      |Tipo de documento: 	  | Trabajo Dirigido          |
      |Título: 	              | Caratula                  |
      |Autor: 	              | Julia Gutierrez           |
      |Link Google Docs:      |	https://drive.google.com/file/d/1q1mL037QB3MtQ5er45h8fxly5TE2aDWT/view?usp=sharing  |
      |Presentado:	          | 09 Abr, 2019 - 22:21      |

