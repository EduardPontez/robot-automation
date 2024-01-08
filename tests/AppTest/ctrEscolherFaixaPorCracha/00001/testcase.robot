*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrEscolherFaixaPorCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Gravação de Crachá Por Faixa
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Gravação por Faixa
  Então devo visualizar a tela: Gravação de Crachá Por Faixa

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Gravação por Faixa
  resource_mnu.Clicar No Menu Registro | Crachá | Gravação por Faixa

Então devo visualizar a tela: Gravação de Crachá Por Faixa
  resource_ctrEscolherFaixaPorCracha.Acessar Tela Gravação de Crachá Por Faixa
