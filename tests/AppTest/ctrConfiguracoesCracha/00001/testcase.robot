*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Configurações Crachá
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Crachá
  Então devo visualizar a tela: Configurações Crachá

*** Keywords ***
Dado que eu acesse o menu: Configurações | Configurações Gerais | Configurações Crachá
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Crachá

Então devo visualizar a tela: Configurações Crachá
  resource_ctrConfiguracoesCracha.Acessar Tela Configurações Crachá
