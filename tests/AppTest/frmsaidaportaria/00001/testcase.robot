*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conssaidavisitantes.robot
Resource        ../../../../resource/app/resource_frmsaidaportaria.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Saída Portaria (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  Ao visualizar a tela: Consulta de Saída de Visitantes
  E clicar no botão: Sair
  Então devo visualizar a tela: Saída Portaria (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Saída de Visitante
  resource_mnu.Clicar No Menu Entrada | Visitante | Saída de Visitante

Ao visualizar a tela: Consulta de Saída de Visitantes
  resource_conssaidavisitantes.Acessar Tela Consulta de Saída de Visitantes

E clicar no botão: Sair
  resource_btn.Clicar No Botão Sair

Então devo visualizar a tela: Saída Portaria (Atualização)
  resource_frmsaidaportaria.Acessar Tela Saída Portaria (Atualização)
