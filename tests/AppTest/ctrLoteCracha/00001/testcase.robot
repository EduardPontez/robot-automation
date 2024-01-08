*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrLoteCracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Lote de Cracha
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  Então devo visualizar a tela: Lote de Cracha

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Lote de Crachá

Então devo visualizar a tela: Lote de Cracha
  resource_ctrLoteCracha.Acessar Tela Lote de Cracha
