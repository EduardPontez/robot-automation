*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessoservidor.robot
Resource        ../../../../resource/app/resource_cnsCreditosAcessoColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Créditos de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  Quando eu visualizar a tela: Créditos de Acesso
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Créditos de Acesso

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Quando eu visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessoservidor.Acessar Tela Créditos de Acesso

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Créditos de Acesso
  resource_cnsCreditosAcessoColaborador.Acessar Tela Consulta de Créditos de Acesso
