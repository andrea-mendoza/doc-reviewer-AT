
After do 
    Capybara.current_session.driver.quit
end

After '@login' do 
  Capybara.current_session.driver.quit
  visit 'http://docs-academicos.herokuapp.com/'
  fill_in 'user[login]', :with => 'carito'
  fill_in 'user[password]', :with => 'carito123'
  click_button('Ingresar')
  click_link 'Carolina Andrea Villalobos Montaño'
  click_link 'Modificar mis datos'
  fill_in 'user[name]', :with => 'Carolina'
  fill_in 'user[lastname]', :with => 'Villalobos'
  click_button('Editar')
end

After '@password' do 
  Capybara.current_session.driver.quit
  visit 'http://docs-academicos.herokuapp.com/'
  fill_in 'user[login]', :with => 'carito'
  fill_in 'user[password]', :with => 'villalobos'
  click_button('Ingresar')
  click_link 'Carolina Villalobos'
  click_link 'Cambiar contraseña'
  fill_in 'user[password]', :with => 'carito123'
  fill_in 'user[password_confirmation]', :with => 'carito123'
  fill_in 'user[current_password]', :with => 'villalobos'
  click_button('Cambiar contraseña')
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

