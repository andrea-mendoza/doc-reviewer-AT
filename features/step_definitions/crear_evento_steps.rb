Given("Visito la pagina principal") do
  visit 'http://docs-academicos.herokuapp.com/'
end

Given("Ingreso con mi usuario {string}") do |username|
  fill_in 'user[login]', :with => username
end

Given("Ingreso con mi contraseña {string}") do |password|
  fill_in 'user[password]', :with => password
end

Given("presiono el boton {string}") do |ingresar|
  click_button(ingresar)
end

When("estoy en la pagina de eventos") do
  expect(page).to have_content('Eventos')
end

When("presiono el boton con el nombre {string}") do |eventos|
  click_on eventos
end

When("presiono la opcion {string}") do |crear|
  click_on crear
end

When("Ingreso los siguientes campos") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
    when "Semestre:"
      find('#event_form > div:nth-child(3) > div:nth-child(1) > div > input').click
      find('span', text: 'Primer').click
    when "Nombre del evento:"
      fill_in 'event_name', :with => value
    when "Carrera:"
      find('#event_form > div:nth-child(4) > div:nth-child(2) > div > input').click
      find('span', text: 'Ingeniería de Sistemas').click
    when "Fecha límite de recepción de documentos:"
      find('#event_form > div.input-field > label').click
      find('button', text: '12').click
      xpath = '//*[@id="modal-26905384-a6a6-7b33-9928-075a55def6d8"]/div/div[2]/div[2]/div/button[2]'
      find(:xpath, xpath).click
    end
  end
end

When("Presiono el boton {string}") do |registrar|
  click_button(registrar)
end

Then("El sistema muestra la pagina de eventos") do
  expect(page).to have_content('Eventos')
end