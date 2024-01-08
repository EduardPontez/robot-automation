*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsReacoesAcesso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Reações de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  Então devo ver a tela: Consulta de Reações de Acesso

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Reação de Acesso
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Reação de Acesso

Então devo ver a tela: Consulta de Reações de Acesso
  resource_cnsReacoesAcesso.Acessar Tela Consulta de Reações de Acesso
