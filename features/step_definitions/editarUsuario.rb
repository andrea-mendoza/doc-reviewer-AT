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

When("estoy en la pagina de eventos") do
    pending # Write code here that turns the phrase above into concrete actions
end

When("presiono el boton con el nombre {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

When("presiono la opcion {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

When("Ingreso {string} en el campo nombre") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

When("Ingreso {string} en el campo apellido") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

When("Presiono el boton {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema regresa a la pagina de eventos") do
    pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema muestra el mensaje {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end