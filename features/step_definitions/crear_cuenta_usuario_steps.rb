Given("Visito la pagina de registro de usuarios") do
  visit 'http://docs-academicos.herokuapp.com/users/sign_up'
end

When("ingreso la siguiente informacion en los campos requeridos") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
  case key
	when "Nombre:"
    fill_in 'user_name', :with => value
	when "Apellido:"
    fill_in 'user_lastname', :with => value
  when "Nombre de usuario:"
    fill_in 'user_username', :with => value
  when "Carrera:"
    find(:xpath, '//*[@id="new_user"]/div[5]/div/input').click 
    page.find('span', text: value).click
  when "CI:"
    fill_in 'user_ci', :with => value
  when "Celular:"
    fill_in 'user_phone', :with => value

	when "Correo:"
    fill_in 'user_email', :with => value
	when "Contraseña:"
    fill_in 'user_password', :with => value
	when "Repetir contraseña:"
    fill_in 'user_password_confirmation', :with => value
	end
  end

end



Then("estoy en la pagina de Mis Documentos y veo mi nombre {string} {string} en la pantalla") do |nombre, apellido|
  expect(page).to have_content(nombre+' '+ apellido )
end


Then("veo los mensajes") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
  case key
	when "Nombre:"
    expect(page).to have_content(value )
	end
  end
end

Then("permanezco en la misma página de Crear Cuenta") do
  page.has_text?('Crear cuenta')
end

Then("deberia ver el mensaje de error {string}") do |mensaje|
  if !page.has_content?(mensaje)
    raise "ERROR should be: "+mensaje	
  end
end