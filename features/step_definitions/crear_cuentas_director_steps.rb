Given("ingreso con mi usuario y contraseña de director de carrera") do
    fill_in 'user[login]', :with => ENV['DIR']
    fill_in 'user[password]', :with => ENV['DIRPW']
end

When("ingreso la siguiente los datos del usuario en los campos requeridos") do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
    case key
      when "Nombre:"
      fill_in 'user_name', :with => value
      when "Apellido:"
      fill_in 'user_lastname', :with => value
    when "Nombre de usuario:"
      fill_in 'user_username', :with => value
    when "Carrera:"
        find(:xpath, '/html/body/div/div/div/div/div/form/div[4]/div[1]/div/input').click 
        page.find('span', text: value).click
    
    when "Celular:"
      fill_in 'user_phone', :with => value
    when "Rol:"
        find(:xpath, '/html/body/div/div/div/div/div/form/div[5]/div[1]/div/input').click 
        page.find('span', text: value).click
      when "Correo:"
      fill_in 'user_email', :with => value
      when "Contraseña:"
      fill_in 'user_password', :with => value
     
      end
    end



end
Then ("El sistema me redirige a la página de Usuarios") do
  expect(page).to have_content('Usuarios')
end

 
