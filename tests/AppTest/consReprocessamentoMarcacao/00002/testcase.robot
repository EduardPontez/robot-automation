*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessamentoMarcacao.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Reprocessamento de Marcação (Resultado)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  Ao visualizar a tela: Reprocessamento de Marcação
  Então devo inserir uma data válida no campo "Data"
  E clicar no botão: Pesquisar Resgistros
  Então devo visualizar a tela: Reprocessamento de Marcação (Resultado)

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcação
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcação

Ao visualizar a tela: Reprocessamento de Marcação
  resource_consReprocessamentoMarcacao.Acessar Tela Reprocessamento de Marcação

Então devo inserir uma data válida no campo "Data"
  resource_consReprocessamentoMarcacao.Inserir Data

E clicar no botão: Pesquisar Resgistros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Reprocessamento de Marcação (Resultado)
  resource_consReprocessamentoMarcacao.Acessar Tela Reprocessamento de Marcação (Resultado)
