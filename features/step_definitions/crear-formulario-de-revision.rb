Given("Visito la pagina principal") do
    visit 'http://docs-academicos.herokuapp.com/'
  end
  
  Given("Ingreso con mi usuario y contraseña") do
    fill_in 'user[login]', :with => ENV['DOCL']
    fill_in 'user[password]', :with => ENV['DLPWS']
  end
  
  Given("presiono el boton {string}") do |boton|
    click_button(boton)
  end

  When("presiono el icono Crear Form. Revision") do
    find('body > div.container > table > tbody > tr:nth-child(1) > td:nth-child(6) > a > i').click
  end

  When("presiono el link {string}") do |link|
    click_link(link)
  end

  Then("confirmo con el boton Crear formulario") do
    find('#confirmation-modal > div.modal-footer > input').click
  end

  Then("el sistema muestra mensaje de confirmacion con el titulo {string}") do |titulo|
    expect(page).to have_content(titulo)
  end
  
  Then("el sistema muesta la alerta {string}") do |alerta|
    expect(page).to have_content(alerta)
  end

  When("ingreso {string} en el campo titulo") do |titulo|
    fill_in 'survey[name]', :with => titulo
  end
  
  When("ingreso {string} en el campo seccion") do |mensaje|
    fill_in 'survey[questions_attributes][0][title]', :with => mensaje
  end

  When("ingreso {int} en el campo puntaje maximo") do |puntaje|
    fill_in 'survey[questions_attributes][0][max_score]', :with => puntaje
  end

  Then("el sistema vuelve mostrar el formulario") do
    expect(page).to have_content('Nuevo Formulario de Revisión')
    expect(page).to have_content('La suma de los puntajes máximos debe ser 100')
  end