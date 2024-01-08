*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsLayoutImportacao.robot
Resource        ../../../../resource/app/resource_frmLayoutImportacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Layout de Importação e Exportação - Inclusão
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Layout de Arquivo
  Quando eu visualizar a tela: Layout de Importação e Exportação - Consulta
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Layout de Importação e Exportação - Inclusão

*** Keywords ***
Dado que eu acesse o menu: Processo | Layout de Arquivo
  resource_mnu.Clicar No Menu Processo | Layout de Arquivo

Quando eu visualizar a tela: Layout de Importação e Exportação - Consulta
  resource_cnsLayoutImportacao.Acessar Tela Layout de Importação e Exportação - Consulta

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Layout de Importação e Exportação - Inclusão
  resource_frmLayoutImportacao.Acessar Tela Layout de Importação e Exportação - Inclusão