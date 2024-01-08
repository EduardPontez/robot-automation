*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCadastroElevadores.robot
Resource        ../../../../resource/app/resource_consElevadores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Elevadores
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Elevadores
  Quando eu visualizar a tela: Consulta de Cadastro de Elevadores
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Elevadores

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Configuração Elevadores | Cadastro de Elevadores
  resource_mnu.Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores

Quando eu visualizar a tela: Consulta de Cadastro de Elevadores
  resource_consElevadores.Acessar Tela Consulta de Cadastro de Elevadores

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Elevadores
  resource_frmCadastroElevadores.Acessar Tela Cadastro de Elevadores
