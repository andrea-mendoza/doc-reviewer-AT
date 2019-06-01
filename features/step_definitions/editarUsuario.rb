Given("Visito la pagina principal") do
    visit 'http://docs-academicos.herokuapp.com/'
end
  
Given("Ingreso {string} como usuario") do |username|
    fill_in 'user[login]', :with => username
end
  
Given("Ingreso {string} como contraseña") do |password|
    fill_in 'user[password]', :with => password
end

Given("presiono el boton {string}") do |ingresar|
    click_button(ingresar)
end

When("estoy en la pagina de eventos y presiono el boton con el nombre {string}") do |nombre|
    click_link nombre
end

When("presiono la opcion {string}") do |opcion|
    click_link opcion
end

When("Ingreso {string} en el campo nombre") do |nombre|
    fill_in 'user[name]', :with => nombre
end

When("Ingreso {string} en el campo apellido") do |apellido|
    fill_in 'user[lastname]', :with => apellido
end

When("Presiono el boton {string}") do |editar|
    click_button(editar)
end

Then("El sistema muestra el mensaje {string}") do |mensaje|
    page.has_content?(mensaje)
end