Then("Preencho as informacoes do empregado") do
    @browser.text_field(id:"firstName").set "Joao"
    @browser.text_field(id:"middleName").set "Antonio"
    @browser.text_field(id:"lastName").set "da Silva"
  end
  Then("Sou redirecinado para a pagina de detalhe do usuario") do 
    FirstName = @browser.text_field(id:"personal_txtEmpFirstName").value 
    MiddleName = @browser.text_field(id:"personal_txtEmpMiddleName").value
    LastName = @browser.text_field(id:"personal_txtEmpLastName").value 
    expect(FirstName.include?("Joao")).to be true
    expect(MiddleName.include?("Antonio")).to be true
    expect(LastName.include?("da Silva")).to be true
  end
