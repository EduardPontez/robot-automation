*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consvisitantecorpcad.robot
Resource        ../../../../resource/app/resource_frmvisitantecorp.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Visitantes - Pesquisa
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Cadastro de Visitante
  Quando eu visualizar a tela: Cadastro de Visitantes (Atualização)
  E clicar no botão: Pesquisa
  Então devo visualizar a tela: Cadastro de Visitantes - Pesquisa

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Cadastro de Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Cadastro de Visitante

Quando eu visualizar a tela: Cadastro de Visitantes (Atualização)
  resource_frmvisitantecorp.Acessar Tela Cadastro de Visitantes (Atualização)

E clicar no botão: Pesquisa
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Cadastro de Visitantes - Pesquisa
  resource_consvisitantecorpcad.Acessar Tela Cadastro de Visitantes - Pesquisa
