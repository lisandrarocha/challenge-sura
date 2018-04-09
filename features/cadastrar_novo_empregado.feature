Feature: Cadastrar um novo empregado no sistema Orange HRM

  Para cadastrar um novo empregado no sistema e preciso estar logado com o usuario administrador do sistema

  Scenario: Cadastrar um novo empregado no sistema

  Given Estiver na pagina "opensource.demo.orangehrmlive.com"
  And Eu preenchi o campo "txtUsername" com o valor "Admin"
  And Eu preenchi o campo "txtPassword" com o valor "admin"
  And Clico no botao "btnLogin"
  And Clico no link "menu_pim_viewPimModule"
  And Clico no link "menu_pim_addEmployee"
  Then Preencho as informacoes do empregado 
  And Clico no botao "btnSave"
  Then Sou redirecinado para a pagina de detalhe do usuario