*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcorretor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Corretor (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Corretores
  Quando eu visualizar a tela: Corretor (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Corretor (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Corretores
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Corretores

Quando eu visualizar a tela: Corretor (Atualização)
  resource_frmcorretor.Acessar Tela Corretor (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Corretor (Inclusão)
  resource_frmcorretor.Acessar Tela Corretor (Inclusão)
