*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentoGVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***
Testcase: Acessar Tela Relatório de Utilização de Guarda-Volumes - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
  Ao visualizar a tela: Relatório de Utilização de Guarda-Volumes
  E clicar no botão: Pesquisar Registros
  Então eu devo visualizar a tela: Relatório de Utilização de Guarda-Volumes - Filtro

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes

Ao visualizar a tela: Relatório de Utilização de Guarda-Volumes
  resource_cnsMovimentoGVolumes.Acessar Tela Relatório de Utilização de Guarda-Volumes

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Então eu devo visualizar a tela: Relatório de Utilização de Guarda-Volumes - Filtro
  resource_cnsMovimentoGVolumes.Acessar Tela Relatório de Utilização de Guarda-Volumes - Filtro
