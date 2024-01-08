*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsimprensaautorizada.robot
Resource        ../../../../resource/app/resource_frmentradaimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Entrada de Candidato (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Candidato | Entrada
  Ao visualizar a tela: Consulta de Candidato Autorizado
  E clicar no botão: Editar o Registro
  Então eu devo visualizar: Entrada de Candidato (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Candidato | Entrada
  resource_mnu.Clicar No Menu Entrada | Candidato | Entrada

Ao visualizar a tela: Consulta de Candidato Autorizado
  resource_cnsimprensaautorizada.Acessar Tela Consulta de Candidato Autorizado

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então eu devo visualizar: Entrada de Candidato (Inclusão)
  resource_frmentradaimprensa.Acessar Tela Entrada de Candidato (Inclusão)
