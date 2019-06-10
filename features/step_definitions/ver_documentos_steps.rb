Given("ingreso con mi usuario y contraseña de estudiante") do
    fill_in 'user[login]', :with => ENV['EST']
    fill_in 'user[password]', :with => ENV['ESTPW']
end
  
Then("se muestra en pantalla una tabla con Mis Documentos") do 
    page.has_text?('Mis Documentos')
end
