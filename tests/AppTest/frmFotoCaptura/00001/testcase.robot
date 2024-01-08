*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcadastroimprensa.robot
Resource        ../../../../resource/app/resource_frmFotoCaptura.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Foto (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Identificação | Candidato | Cadastro de Candidato
  Ao visualizar a tela: Candidato (Atualização)
  E clicar no botão: Foto
  Então devo visualizar a tela: Foto (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Cadastro de Candidato
  resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

Ao visualizar a tela: Candidato (Atualização)
  resource_frmcadastroimprensa.Acessar Tela Candidato (Atualização)

E clicar no botão: Foto
  resource_btn.Clicar No Botão Foto

Então devo visualizar a tela: Foto (Inclusão)
  resource_frmFotoCaptura.Acessar Tela Foto (Inclusão)
