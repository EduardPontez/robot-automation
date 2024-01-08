*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_tbLocal_Acess.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Área de Risco - Consulta
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Consulta
  Então devo ver a tela: Área de Risco - Consulta


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Area de Risco | Consulta
  resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Consulta

Então devo ver a tela: Área de Risco - Consulta
  resource_cons_tbLocal_Acess.Acessar Tela Área de Risco - Consulta
