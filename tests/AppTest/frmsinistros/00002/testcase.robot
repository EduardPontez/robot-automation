*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmsinistros.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Sinistros (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Sinistros
  Quando eu visualizar a tela: Sinistros (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Sinistros (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Sinistros
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

Quando eu visualizar a tela: Sinistros (Atualização)
  resource_frmsinistros.Acessar Tela Sinistros (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Sinistros (Inclusão)
  resource_frmsinistros.Acessar Tela Sinistros (Inclusão)
