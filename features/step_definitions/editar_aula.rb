When("presiono el link del evento {string}") do |string|
    find('body > div.container > table > tbody > tr:nth-child(2) > td:nth-child(1) > a').click
end
  
  When("presiono el link de la pagina {string}") do |string|
    find('body > div.container > ul > li:nth-child(3) > a').click
  end
  
  When("presiono el tercer icono Editar Aula") do
    find('body > div.container > table > tbody > tr:nth-child(2) > td:nth-child(6) > a > i').click
  end

  When("Ingreso {string} en el campo Ambiente") do |string|
    fill_in 'classroom[ambient]', :with => string
  end
  
  When("Ingreso una nueva fecha") do
    find('#classroom_defense_date').click
    find('button', text: '23').click
    click_button('Aceptar')
  end

  Then("El sistema muestra la pantalla de eventos") do
    expect(page).to have_content('Documentos')
  end

  Then("El sistema muestra la alerta {string}") do |mensaje|
    expect(page).to have_content(mensaje)
  end