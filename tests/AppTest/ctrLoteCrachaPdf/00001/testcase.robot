*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrLoteCracha.robot
Resource        ../../../../resource/app/resource_ctrLoteCrachaPdf.robot

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
  Ao visualizar a tela: Lote de Cracha
  E clicar no botão: Processar
  Então devo visualizar a tela: Lote de Cracha

#Botão Processar com o nome de "Ajuda"
*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Lote de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Lote de Crachá

Ao visualizar a tela: Lote de Cracha
  resource_ctrLoteCracha.Acessar Tela Lote de Cracha

E clicar no botão: Processar
  resource_btn.Clicar No Botão Processar

Então devo visualizar a tela: Lote de Cracha
  resource_ctrLoteCrachaPdf.Acessar Tela Lote de Cracha
