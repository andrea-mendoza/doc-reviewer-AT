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

When("presiono el boton con el nombre {string}") do |string|
  find('a', text: 'trabajo practico').click
end

When("estoy en la pagina de documentos") do
  expect(page).to have_content('Documentos')
end

When("presiono la opcion {string}") do |string|
  xpath = '/html/body/div[1]/a'
  find(:xpath, xpath).click

end

When("estoy en la pagina de Nuevo Documento") do
  expect(page).to have_content('Nuevo Documento')
end

When("Ingreso los siguientes campos") do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
    when "Tipo de documento:"
      find('#new_paper > div:nth-child(3) > div > input').click
      find('span', text: 'Pasantía').click
    when "Título:"
      fill_in 'paper_title', :with => value
    when "Link archivo Google Docs:"
      fill_in 'paper_google_docs_link', :with => value
    when "Resumen o Introducción:"
      fill_in 'paper_resume', :with => value
    end
  end
end

When("cargo {string} en el campo elija un archivo") do |fileName|
  xpath = '//*[@id="new_paper"]/div[4]'
  find(:xpath, xpath).click
  page.attach_file(File.absolute_path('./features/step_definitions/pdfs/'+fileName), make_visible: true)
end

When("Presiono el boton {string}") do |registrar|
  click_button(registrar)
end

Then("El sistema  muestra la lista de documentos") do
  expect(page).to have_content('Documentos')
end

Then("El sistema muestra una alerta {string}") do |alerta|
  expect(page).to have_content(alerta)
end
