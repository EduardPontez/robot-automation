*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmreclamacoes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Reclamações (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  Então devo visualizar a tela: Reclamações (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Reclamações
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

Então devo visualizar a tela: Reclamações (Atualização)
  resource_frmreclamacoes.Acessar Tela Reclamações (Atualização)
