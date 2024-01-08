*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcadastroimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Candidato (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Cadastro de Candidato
  Quando eu visualizar a tela: Candidato (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Candidato (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Cadastro de Candidato
  resource_mnu.Clicar No Menu Identificação | Candidato | Cadastro de Candidato

Quando eu visualizar a tela: Candidato (Atualização)
  resource_frmcadastroimprensa.Acessar Tela Candidato (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Candidato (Inclusão)
  resource_frmcadastroimprensa.Acessar Tela Candidato (Inclusão)
