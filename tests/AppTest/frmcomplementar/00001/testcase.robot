*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcorretor.robot
Resource        ../../../../resource/app/resource_frmcomplementar.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro Corretor
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Corretores
  Ao visualizar a tela: Corretor (Atualização)
  E clicar no botão: Ficha complementar
  Então devo visualizar a tela: Cadastro Corretor

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Corretores
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Corretores

Ao visualizar a tela: Corretor (Atualização)
  resource_frmcorretor.Acessar Tela Corretor (Atualização)

E clicar no botão: Ficha complementar
  resource_btn.Clicar No Botão Ficha Complementar

Então devo visualizar a tela: Cadastro Corretor
  resource_frmcomplementar.Acessar Tela Cadastro Corretor
