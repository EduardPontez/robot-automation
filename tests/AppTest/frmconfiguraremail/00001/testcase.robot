*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmconfiguraremail.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Configuração do E-mail (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Email
  Então devo visualizar a tela: Configuração do E-mail (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Configurações | Email
  resource_mnu.Clicar No Menu Configurações | Email

Então devo visualizar a tela: Configuração do E-mail (Atualização)
  resource_frmconfiguraremail.Acessar Tela Configuração do E-mail (Atualização)
