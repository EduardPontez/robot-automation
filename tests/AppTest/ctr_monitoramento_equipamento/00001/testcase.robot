*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctr_monitoramento_equipamento.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Monitoramento Gráfico de Equipamentos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  Então devo visualizar a tela: Monitoramento Gráfico de Equipamentos

*** Keywords ***
Dado que eu acesse o menu: Controle | Monitoramento | Monitoramento Gráfico de Equipamentos
  resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

Então devo visualizar a tela: Monitoramento Gráfico de Equipamentos
  resource_ctr_monitoramento_equipamento.Acessar Tela Monitoramento Gráfico de Equipamentos
