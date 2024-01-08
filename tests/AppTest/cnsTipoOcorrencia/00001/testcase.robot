*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsTipoOcorrencia.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Tipo de Ocorrência
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  Então devo visualizar a tela: Consulta de Tipo de Ocorrência

*** Keywords ***
Dado que eu acesse o menu: Registro | Ocorrência | Tipos de Ocorrência
  resource_mnu.Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

Então devo visualizar a tela: Consulta de Tipo de Ocorrência
  resource_cnsTipoOcorrencia.Acessar Tela Consulta de Tipo de Ocorrência
