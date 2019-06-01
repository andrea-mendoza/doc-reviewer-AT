Given("yo estoy en la pagina de iniciar sesion") do
  visit 'http://docs-academicos.herokuapp.com/users/sign_in'
end
  
  When("ingreso mi nombre de usuario  {string}") do |username|
    fill_in 'user_login', :with => username
  end
  
  When("ingreso mi password {string}") do |password|
    fill_in 'user_password', :with => password
  end
  
  When("presiono el boton {string}") do |boton|
    click_button(boton)
  end
  
  
  Then("veo mi {string} {string} en la pantalla") do |nombre, apellido|
    expect(page).to have_content(nombre+' '+ apellido )
    sleep 3
  end
  
  Then("veo el mensaje {string}") do |mensaje|
    expect(page).to have_content(mensaje )
  end