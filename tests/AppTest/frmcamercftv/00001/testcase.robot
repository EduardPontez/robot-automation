*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnscamercftv.robot
Resource        ../../../../resource/app/resource_frmcamercftv.robot
Resource        ../../../../resource/app/resource_abaCFTV.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Câmeras CFTV (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Ao visualizar a tela: Servidor CFTV (Atualização)
  E clicar na aba "Camera CFTV"
  Então devo visualizar a tela: Câmeras CFTV
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Câmeras CFTV (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Ao visualizar a tela: Servidor CFTV (Atualização)
  resource_frmservicftv.Acessar Tela Servidor CFTV (Atualização)

E clicar na aba "Camera CFTV"
  resource_abaCFTV.Clicar Na Aba Camera CFTV

Então devo visualizar a tela: Câmeras CFTV
  resource_cnscamercftv.Acessar Tela Câmeras CFTV

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Câmeras CFTV (Inclusão)
  resource_frmcamercftv.Acessar Tela Câmeras CFTV (Inclusão)
