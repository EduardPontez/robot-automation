*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsMovimentacaoGVolumes.robot
Resource        ../../../../resource/app/resource_frmUtilizaGVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Utilização de Guarda-Volumes
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  Quando eu visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Utilização de Guarda-Volumes

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Movimentação de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

Quando eu visualizar a tela: Utilização de Guarda-Volumes (Consulta)
  resource_cnsMovimentacaoGVolumes.Acessar Tela Utilização de Guarda-Volumes (Consulta)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Utilização de Guarda-Volumes
  resource_frmUtilizaGVolumes.Acessar Tela Utilização de Guarda-Volumes
