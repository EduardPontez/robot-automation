*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoOcorrencia.robot
Resource        ../../../../resource/app/resource_frmTipoOcorrencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Tipo de Ocorrência (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  Ao visualizar a tela: Consulta de Tipo de Ocorrência
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Tipo de Ocorrência (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  resource_mnu.Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

Ao visualizar a tela: Consulta de Tipo de Ocorrência
  resource_cnsTipoOcorrencia.Acessar Tela Consulta de Tipo de Ocorrência

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Tipo de Ocorrência (Inclusão)
  resource_frmTipoOcorrencia.Acessar Tela Tipo de Ocorrência (Inclusão)
