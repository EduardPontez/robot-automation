*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consReprocessaMarcacaoOrfa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Reprocessamento de Marcações Orfãs REP (Resultado)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  Ao visualizar a tela: Reprocessamento de Marcações Orfãs REP
  Então devo inserir uma data válida no campo "Data"
  E clicar no botão: Pesquisar Registros
  Então devo visualizar a tela: Reprocessamento de Marcações Orfãs REP (Resultado)

*** Keywords ***
Dado que eu acesse o menu: Controle | Comando | Reprocessamento de Marcações Orfãs REP
  resource_mnu.Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP

Ao visualizar a tela: Reprocessamento de Marcações Orfãs REP
  resource_consReprocessaMarcacaoOrfa.Acessar Tela Reprocessamento de Marcações Orfãs REP

Então devo inserir uma data válida no campo "Data"
  resource_consReprocessaMarcacaoOrfa.Inserir Data

E clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Reprocessamento de Marcações Orfãs REP (Resultado)
  resource_consReprocessaMarcacaoOrfa.Acessar Tela Reprocessamento de Marcações Orfãs REP (Resultado)
