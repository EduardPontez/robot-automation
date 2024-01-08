*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Processo Automático - On-Line
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | On-Line
  Quando eu visualizar a tela: Processo Automático - On-Line
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Processo Automático - Cadastro On-Line

*** Keywords ***
Dado que eu acesse o menu: Processo | On-Line
  resource_mnu.Clicar No Menu Processo | OnLine

Quando eu visualizar a tela: Processo Automático - On-Line
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - On-Line

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Processo Automático - Cadastro On-Line
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - Cadastro On-Line
