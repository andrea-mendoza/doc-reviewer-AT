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
  when "CI:"
    fill_in 'user_ci', :with => value
  when "Celular:"
    fill_in 'user_phone', :with => value
  when "Carrera:"
    find('#new_user > div:nth-child(7) > div > input').click
    # page.find(:xpath, '//*[@id="select-options-e597527f-3f12-2166-f85d-210ca474702a1"]/span').click
    # find('#select-options-e597527f-3f12-2166-f85d-210ca474702a1').click
    
    # find('#new_user > div:nth-child(7) > div > input').native.send_keys(:arrow_down)  
    # find('#new_user > div:nth-child(7) > div > input').native.send_keys(:return)  

    sleep 5
	when "Correo:"
    fill_in 'user_email', :with => value
	when "Contraseña:"
    fill_in 'user_password', :with => value
	when "Repetir contraseña:"
    fill_in 'user_password_confirmation', :with => value
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

Then("veo los mensajes") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
  case key
	when "Nombre:"
    expect(page).to have_content(value )
	end
  end
end