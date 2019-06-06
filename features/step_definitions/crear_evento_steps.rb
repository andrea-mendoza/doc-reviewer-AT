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
      #find('#modal-f7b63f7b-f528-5809-6fb4-ab6f90044006 > div > div.datepicker-calendar-container > div.datepicker-footer > div > button.btn-flat.datepicker-done.waves-effect').click
      #fill_in('button',text: 'Aceptar').native.send_keys(:return)
      #find('button', text: 'Aceptar').click
    end
  end
end

When("Presiono el boton {string}") do |registrar|
  click_button(registrar)
end

Then("El sistema muestra la pagina de eventos") do
  expect(page).to have_content('Eventos')
end