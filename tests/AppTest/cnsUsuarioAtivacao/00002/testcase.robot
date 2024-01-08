*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsUsuarioAtivacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Ativar Relatório - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Relatórios | Ativar
  Ao visualizar a tela: Ativar Relatório
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Ativar Relatório - Filtro

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Ativar
  resource_mnu.Clicar No Menu Relatórios | Ativar

Ao visualizar a tela: Ativar Relatório
  resource_cnsUsuarioAtivacao.Acessar Tela Ativar Relatório

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Ativar Relatório - Filtro
  resource_cnsUsuarioAtivacao.Acessar Tela Ativar Relatório - Filtro
