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
    xpath = '/html/body/div[1]/table/tbody/tr[2]/td[6]/a'
    find(:xpath, xpath).click
  end
  
  When("estoy en la pagina de Asignar Aula") do
    expect(page).to have_content('Asignar Aula')
  end
  
  When("Ingreso los siguientes campos") do |table|
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