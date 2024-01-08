*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmProcessoAutomatico.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Processo Automático - Importação
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Importação
  Quando eu visualizar a tela: Processo Automático - Importação
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Processo Automático - Cadastro

*** Keywords ***
Dado que eu acesse o menu: Processo | Importação
  resource_mnu.Clicar No Menu Processo | Importação

Quando eu visualizar a tela: Processo Automático - Importação
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - Importação

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Processo Automático - Cadastro
  resource_frmProcessoAutomatico.Acessar Tela Processo Automático - Cadastro
