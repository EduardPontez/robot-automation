*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsGuardaVolumes.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro de Guarda-Volumes (Consulta)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Guarda-Volumes | Cadastro de Guarda-Volumes
  Então devo visualizar a tela: Cadastro de Guarda-Volumes (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Guarda-Volumes | Cadastro de Guarda-Volumes
  resource_mnu.Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes

Então devo visualizar a tela: Cadastro de Guarda-Volumes (Consulta)
  resource_cnsGuardaVolumes.Acessar Tela Cadastro de Guarda-Volumes (Consulta)
