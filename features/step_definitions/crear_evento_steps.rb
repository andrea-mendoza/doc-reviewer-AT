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

When("estoy en la pagina de nuevo evento") do
  expect(page).to have_content("Nuevo Evento")
end

When("selecciono {string} en el campo de titulo") do |string|
  #xpath = '//*[@id="event_form"]/div[1]/div[1]/div'
  #find(:xpath, xpath).click
  #xpath = '//*[@id="select-options-1ad973db-6822-4d7f-4b0a-9e5d554017f32"]'
  #find(:xpath, xpath).click
end

When("selecciono {string} en el campo de carrera") do |string|
  xpath = '//*[@id="event_form"]/div[2]/div[2]/div'
  find(:xpath, xpath).click
  select(value, :from => 'Ingeniería Mecatrónica')
end

When("ingresar {string} en el campo nombre del evento") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("selecciono {string} en el campo fecha limite") do |string|
  xpath = '//*[@id="event_form"]/div[3]/label'
  find(:xpath, xpath).click
  xpath = '//*[@id="modal-c006dbfb-4fdd-9ef6-6e67-20ebc9eec9c4"]/div/div[2]/div[1]/div[2]/table/tbody/tr[3]/td[4]'
  find(:xpath, xpath).click
end

When("Presiono el boton {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("El sistema muestra la lista de eventos") do
  pending # Write code here that turns the phrase above into concrete actions
end