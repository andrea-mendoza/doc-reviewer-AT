Given("Visito la pagina principal") do
  visit 'http://docs-academicos.herokuapp.com/'
end

Given("Ingresar {string} como usuario") do |username|
  fill_in 'user[login]', :with => username
end

Given("Ingresar {string} como contraseña") do |password|
  fill_in 'user[password]', :with => password
end

Given("presiono el boton {string}") do |ingresar|
  click_button(ingresar)
end

When("estoy en la pagina de eventos y presiono el boton de {string}") do |eventos|
  click_on eventos
end

When("presiono la opcion {string}") do |crear|
  click_on crear
end

When("estoy en la pagina de nuevo evento y presiono en {string}") do |primer|
  find('#event_form > div:nth-child(3) > div:nth-child(1) > div > input').click
end

When("selecciono {string}") do |primer|
  xpath = '//*[@id="select-options-36924a73-f052-879f-b550-58be2e5741131"]'
  find(:xpath, xpath).click
end

When("selecciono {string} en el campo de carrera") do |string|
  find('#event_form > div:nth-child(4) > div:nth-child(2) > div > input').click
end

When("Ingresar {string} en el campo nombre del evento") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("presiono en el campo de {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("selecciono {string} en el campo fecha limite") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("Presiono el boton {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema muestra la lista de eventos") do
  pending # Write code here that turns the phrase above into concrete actions
end