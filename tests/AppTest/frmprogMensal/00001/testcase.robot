*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprogMensal.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Programação
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem | Mensagens Pré-definidas
  Então devo visualizar a tela: Programação

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem | Mensagens Pré-definidas
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Mensagens Pré-definidas

Então devo visualizar a tela: Programação
  resource_frmprogMensal.Acessar Tela Programação
