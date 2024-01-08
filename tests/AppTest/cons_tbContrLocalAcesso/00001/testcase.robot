*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbContrLocalAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Área de Risco - Painel de Controle
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Controle
  Então devo ver a tela: Área de Risco - Painel de Controle


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Controle
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Controle

Então devo ver a tela: Área de Risco - Painel de Controle
  resource_cons_tbContrLocalAcesso.Acessar Tela Área de Risco - Painel de Controle
