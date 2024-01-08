*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGuardaVolumes.robot
Resource        ../../../../resource/app/resource_frmGuardaVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Guarda-Volumes (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Guarda-Volumes | Cadastro de Guarda-Volumes
  Quando eu visualizar a tela: Cadastro de Guarda-Volumes (Consulta)
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Cadastro de Guarda-Volumes (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Cadastro de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes

Quando eu visualizar a tela: Cadastro de Guarda-Volumes (Consulta)
  resource_cnsGuardaVolumes.Acessar Tela Cadastro de Guarda-Volumes (Consulta)

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Cadastro de Guarda-Volumes (Atualização)
  resource_frmGuardaVolumes.Acessar Tela Cadastro de Guarda-Volumes (Atualização)
