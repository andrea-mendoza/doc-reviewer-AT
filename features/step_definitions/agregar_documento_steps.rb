When("presiono el boton con el nombre de {string}") do |string|
    find('a', text: 'trabajo practico').click
  end
  
  When("presiono en {string}") do |string|
    xpath = '/html/body/div[1]/a'
    find(:xpath, xpath).click
  end

  When("estoy en la pagina de Nuevo Documento") do
    expect(page).to have_content('Nuevo Documento')
  end
  
  When("Ingreso los campos") do |table|
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
  
  When("Presiono el boton al final de la pagina {string}") do |registrar|
    click_button(registrar)
  end
  
  Then("El sistema muestra una alerta de {string}") do |alerta|
    expect(page).to have_content(alerta)
  end

  
  Then("El sistema muestra una alerta en la pagina") do
    find('#paper_pdf_file-error')
  end