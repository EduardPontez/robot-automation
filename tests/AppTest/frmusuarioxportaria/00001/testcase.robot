*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmusuarioxportaria.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Usuário x Portaria
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Usuários | Usuário x Portaria
  Então devo visualizar a tela: Usuário x Portaria

*** Keywords ***
Dado que eu acesse o menu: Configurações | Usuários | Usuário x Portaria
  resource_mnu.Clicar No Menu Configurações | Usuários | Usuário x Portaria

Então devo visualizar a tela: Usuário x Portaria
  resource_frmusuarioxportaria.Acessar Tela Usuário x Portaria
