Feature: Editar empregado existente no sistema

  Para editar um empregado que ja existe no sistema sera necessario estar logado no sistema

  Scenario: Editar empregado existente

  Given Clico no link "menu_pim_viewPimModule"
  And Clico no link "menu_pim_viewEmployeeList"
  And Eu preenchi o campo "empsearch_employee_name_empName" com o valor "Joao Antonio da Silva"
  Then Clico no botao "searchBtn"
  And Clico no link "Joao Antonio"
  And Clico no botao "btnSave"
  And Edito as informacoes necessarias
  And Clico no botao "btnSave"