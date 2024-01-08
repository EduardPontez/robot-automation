*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmSolicitacaoSaida.robot
Resource        ../../../../resource/app/resource_abaSolicitacaoSaida.robot
Resource        ../../../../resource/app/resource_frmMateriaisSolicitados.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Solicitação de Materiais (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Solicitação de Saída
  Quando eu visualizar a tela: Solicitação de Saída (Atualização)
  E clicar na aba: Materiais
  Então devo visualizar a tela: Solicitação de Materiais (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Solicitação de Saída
  resource_mnu.Clicar No Menu Entrada | Material | Solicitação de Saída

Quando eu visualizar a tela: Solicitação de Saída (Atualização)
  resource_frmSolicitacaoSaida.Acessar Tela Solicitação de Saída (Atualização)

E clicar na aba: Materiais
  resource_abaSolicitacaoSaida.Clicar Na Aba Materiais

Então devo visualizar a tela: Solicitação de Materiais (Atualização)
  resource_frmMateriaisSolicitados.Acessar Tela Solicitação de Materiais (Atualização)
