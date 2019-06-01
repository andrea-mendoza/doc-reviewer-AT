Given("yo estoy en la pagina de registro") do
  visit 'http://docs-academicos.herokuapp.com/users/sign_up'
end

When("ingreso mi  {string}") do |nombre|
  fill_in 'user_name', :with => nombre

end

When("ingreso mi apellido {string}") do |apellido|
  fill_in 'user_lastname', :with => apellido
end

When("ingreso mi nombre de usuario {string}") do |username|
  fill_in 'user_username', :with => username
end

When("ingreso mi ci {string}") do |ci|
  fill_in 'user_ci', :with => ci
end

When("ingreso mi celular {string}") do |celular|
  fill_in 'user_phone', :with => celular
end

When("selecciono mi carrera {string}") do |carrera|
  # find('#new_user > div:nth-child(7) > div > input').click

 
end

When("ingreso mi correo electronico {string}") do |email|
  fill_in 'user_email', :with => email
end

When("ingreso mi password {string}") do |password|
  fill_in 'user_password', :with => password
end

When("ingreso mi confirmacion para mi password {string}") do |password_confirm|
  fill_in 'user_password_confirmation', :with => password_confirm
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
