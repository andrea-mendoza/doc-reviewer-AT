Given("estoy en la pagina principal") do
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

When("estoy en la pagina de eventos y presiono el nombre del evento {string}") do |link|
  click_link(link)
end

When("presiono la opcion {string}") do |añadir|
  #click_link añadir
end

When("selecciono {string} en el campo tipo de documento") do |nombre|
  #page.select 'select-wrapper', from: 'Month'
end

When("ingreso {string} en el campo de titulo") do |title|
  fill_in 'paper[title]', :with => title
end

When("ingreso {string} en el campo de link archivo google docs") do |link|
  fill_in 'paper[link]', :with => link
end

When("cargo {string} en el campo elija un archivo") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("ingreso {string} en el campo de resumen") do |resume|
  fill_in 'paper[resume]', :with => resume
end

Then("El sistema  muestra la lista de documentos") do
  page.all('h3', text: 'Documentos')
end

When("ingresar {string} en el campo de link archivo google docs") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("{string} en el campo de resumen") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("Presiono el boton {string}") do |registrar|
  click_button(registrar)
end

Then("El sistema muestra una alerta {string}") do |alerta|
  page.has_content?(alerta)
end