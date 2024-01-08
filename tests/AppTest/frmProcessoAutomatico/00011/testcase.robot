*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Processo Automático - On-Line - Excluir Log de comandos da Tabela TbComanAcess
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Processo | On-Line
  Ao visualizar a tela: Processo Automático - On-Line
  Então devo inserir "Excluir Log de comandos da Tabela TbComanAcess" no campo Tipo de Processo

*** Keywords ***
Dado que eu acesse o menu: Processo | On-Line
  resource_mnu.Clicar No Menu Processo | OnLine

Ao visualizar a tela: Processo Automático - On-Line
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - On-Line

Então devo inserir "${PROCESSO}" no campo Tipo de Processo
  resource_frmProcessoAutomatico.Selecionar Tipo de Processo "${PROCESSO}"
