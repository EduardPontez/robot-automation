*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoGVolumes.robot
Resource        ../../../../resource/app/resource_frmLiberaGVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Liberação de Guarda-Volumes
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  Ao visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  E clicar no botão: Engrenagem
  Então devo visualizar a tela: Liberação de Guarda-Volumes

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

Ao visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  resource_cnsMovimentacaoGVolumes.Acessar Tela Utilização de Guarda-Volumes (Consulta)

E clicar no botão: Engrenagem
  resource_btn.Clicar No Botão Engrenagem

Então devo visualizar a tela: Liberação de Guarda-Volumes
  resource_frmLiberaGVolumes.Acessar Tela Liberação de Guarda-Volumes
