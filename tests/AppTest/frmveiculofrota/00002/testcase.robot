*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmveiculofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Veículos Frota (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Veículos
  Quando eu visualizar a tela: Veículos Frota (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Veículos Frota (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Veículos
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Veículos

Quando eu visualizar a tela: Veículos Frota (Atualização)
  resource_frmveiculofrota.Acessar Tela Veículos Frota (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Veículos Frota (Inclusão)
  resource_frmveiculofrota.Acessar Tela Veículos Frota (Inclusão)
