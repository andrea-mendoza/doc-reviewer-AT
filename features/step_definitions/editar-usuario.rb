Given("Visito la pagina principal") do
    visit 'http://docs-academicos.herokuapp.com/'
  end
  
  Given("Ingreso con mi usuario y contraseña") do
    fill_in 'user[login]', :with => ENV['DOC']
    fill_in 'user[password]', :with => ENV['DPWS']
  end
  
  Given("presiono el boton {string}") do |ingresar|
    click_button(ingresar)
  end
  When("estoy en la pagina de eventos") do
    expect(page).to have_content('Eventos')
    expect(page).to have_css('body > div > table')
  end
  
  When("presiono el boton con el nombre {string}") do |nombre|
    click_link nombre
  end
  
  When("presiono la opcion {string}") do |opcion|
    click_link opcion
  end

  When("Ingreso los siguientes campos") do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
        when "Nombre:"
          fill_in 'user[name]', :with => value
        when "Apellido:"
          fill_in 'user[lastname]', :with => value
      end
    end
  end
  
  When("Presiono el boton {string}") do |editar|
    click_button(editar)
  end
  
  Then("El sistema muestra el mensaje {string}") do |mensaje|
    page.has_content?(mensaje)
    expect(page).to have_content(mensaje)
  end
  
  Then("Se cambia el nombre de la parte superior por {string}") do |nombre|
    page.has_content?(nombre)
    expect(page).to have_content(nombre)
  end

When("Ingreso {int} en el campo ci") do |ci|
    fill_in 'user[ci]', :with => ci
  end
  
  When("Ingreso {string} en el campo Correo Electronico") do |email|
    fill_in 'user[email]', :with => email
  end
  
  Then("El sistema muestra una alerta {string}") do |alerta|
    expect(page).to have_content(alerta)
  end

  When("Ingreso {int} en el campo celular") do |celular|
    fill_in 'user[phone]', :with => celular
  end
  
  When("Ingresar {string} en el campo Nombre") do |nombre|
    fill_in 'user[name]', :with => nombre
  end
  
  When("Ingresar {string} en el campo Apellido") do |apellido|
    fill_in 'user[lastname]', :with => apellido
  end

  When("Ingreso los siguientes campos en el formulario") do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
        when "Nueva Contraseña"
          fill_in 'user[password]', :with => value
        when "Repetir Nueva Contraseña"
          fill_in 'user[password_confirmation]', :with => value
        when "Contraseña Actual"
          fill_in 'user[current_password]', :with => value
      end
    end
  end