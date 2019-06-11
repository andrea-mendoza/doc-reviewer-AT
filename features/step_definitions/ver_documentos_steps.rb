Given("ingreso con mi usuario y contraseña de estudiante") do
    fill_in 'user[login]', :with => ENV['EST']
    fill_in 'user[password]', :with => ENV['ESTPW']
end
  
Then("se muestra en pantalla una tabla con Mis Documentos") do 
    page.has_text?('Mis Documentos')
    expect(page).to have_css 'table'
    expect(page).to have_text 'No.'
    expect(page).to have_text 'Título'

end
When("presiono el documento {string}") do |nombre|
    click_link(nombre)
end

Then("se muestra en pantalla la información del documento") do |table|
    expect(page).to have_css 'table'

    data = table.rows_hash
    data.each_pair do |key, value|
      case key
        when "Tipo de documento:"
            expect(page).to have_text value
        when "Título:"
            expect(page).to have_text value
        when "Autor:"
            expect(page).to have_text value
        when "Link Google Docs:"
            expect(page).to have_text value
        when "Presentado:"
            expect(page).to have_text value
      end
    end
end

