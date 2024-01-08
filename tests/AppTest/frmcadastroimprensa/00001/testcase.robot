*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcadastroimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Candidato (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Cadastro de Candidato
  Então devo visualizar a tela: Candidato (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Cadastro de Candidato
  resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

Então devo visualizar a tela: Candidato (Atualização)
  resource_frmcadastroimprensa.Acessar Tela Candidato (Atualização)
