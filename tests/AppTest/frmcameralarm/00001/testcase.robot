*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmservicftv.robot
Resource        ../../../../resource/app/resource_cnscamercftv.robot
Resource        ../../../../resource/app/resource_frmcamercftv.robot
Resource        ../../../../resource/app/resource_frmcameralarm.robot
Resource        ../../../../resource/app/resource_abaCFTV.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cameras X Alarmes
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | CFTV
  Ao visualizar a tela: Servidor CFTV (Atualização)
  E clicar na aba "Camera CFTV"
  Então devo visualizar a tela: Câmeras CFTV
  E clicar no botão "Editar o Registro" ao lado do item desejado
  Então devo visualizar a tela: Câmeras CFTV (Inclusão)
  E clicar na aba "Cameras Alarmes"
  Então devo visualizar a tela: Cameras X Alarmes

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | CFTV
  resource_mnu.Clicar No Menu Dispositivo | CFTV

Ao visualizar a tela: Servidor CFTV (Atualização)
  resource_frmservicftv.Acessar Tela Servidor CFTV (Atualização)

E clicar na aba "Camera CFTV"
  resource_abaCFTV.Clicar Na Aba Camera CFTV

Então devo visualizar a tela: Câmeras CFTV
  resource_cnscamercftv.Acessar Tela Câmeras CFTV

E clicar no botão "Editar o Registro" ao lado do item desejado
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Câmeras CFTV (Inclusão)
  resource_frmcamercftv.Acessar Tela Câmeras CFTV (Inclusão)

E clicar na aba "Cameras Alarmes"
  resource_abaCFTV.Clicar Na Aba Cameras Alarmes

Então devo visualizar a tela: Cameras X Alarmes
  resource_frmcameralarm.Acessar Tela Cameras X Alarmes
