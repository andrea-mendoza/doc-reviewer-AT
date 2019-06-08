Given("yo estoy en la pagina de iniciar sesion") do
  visit 'http://docs-academicos.herokuapp.com/users/sign_in'
end
  
When("ingreso lo siguiente en los campos requeridos") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
  case key
	when "Nombre de usuario o email:"
    fill_in 'user_login', :with => value
  when "Contraseña:"
    fill_in 'user_password', :with => value
	end
  end
end


  When("presiono el boton {string}") do |boton|
    click_button(boton)
  end
  
  
  Then("veo mi nombre {string} {string} en la pantalla") do |nombre, apellido|
    expect(page).to have_content(nombre+' '+ apellido )

  end
  
  Then("veo el mensaje {string}") do |mensaje|
    expect(page).to have_content(mensaje )
  end