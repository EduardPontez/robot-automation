*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcondutoresveiculosfrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Condutores de Veículos da Frota (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Empresa | Condutores
  Então devo visualizar a tela: Condutores de Veículos da Frota (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Empresa | Condutores
  resource_mnu.Clicar No Menu Veículos | Frota | Empresa | Condutores

Então devo visualizar a tela: Condutores de Veículos da Frota (Atualização)
  resource_frmcondutoresveiculosfrota.Acessar Tela Condutores de Veículos da Frota (Atualização)
