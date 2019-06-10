

  When("presiono el boton trabajo practico")  do
    find('a', text: 'trabajo practico').click
  end
  
  When("estoy en la pagina de documentos") do
    expect(page).to have_content('Documentos')
  end
  
  When("presiono la opcion Asignar aula") do 
    xpath = '/html/body/div[1]/table/tbody/tr[2]/td[6]/a'
    find(:xpath, xpath).click
  end
  
  When("estoy en la pagina de Asignar Aula") do
    expect(page).to have_content('Aula') 
  end
  
  When("Ingreso los siguientes campos de un aula") do |table|
    data = table.rows_hash
  data.each_pair do |key, value|
    case key
    when "Ambiente:"
        fill_in 'classroom_ambient', :with => value
    when "Fecha de la defensa:"
        find('#new_classroom > div:nth-child(5) > label').click
        find('button', text: '12').click
        click_button('Aceptar')
    when "Hora de la defensa:"
        find('#new_classroom > div:nth-child(6) > label').click
        click_button('Aceptar')
    end
  end
  end
  
  When("Presiono el boton {string}") do |asignar|
    click_button(asignar)
  end
  
  Then("El sistema  muestra la lista de documentos") do
    expect(page).to have_content('Documentos')
  end

  Then("El sistema muestra una alerta") do
    find('#classroom_ambient-error')
  end