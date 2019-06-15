Given("Visito la pagina principal") do
    visit 'http://docs-academicos.herokuapp.com/'
end


When("presiono el boton {string}") do |nombre_boton|
    click_button(nombre_boton)
  end

When("estoy en la pagina de eventos") do
    expect(page).to have_content('Eventos')
    expect(page).to have_css('body > div > table')
end


Then("veo el mensaje {string}") do |mensaje|
    expect(page).to have_content(mensaje)
  end

  When("presiono la opcion {string}") do |opcion|
    click_link opcion
  end
  
  Then("El sistema muestra una alerta {string}") do |alerta|
    expect(page).to have_content(alerta)
  end