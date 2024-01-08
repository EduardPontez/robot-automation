*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCentrodeCusto.robot
Resource        ../../../../resource/app/resource_frmCentroCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar tela Centro de Custo (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  Quando eu visualizar a tela: Consulta de Centro de Custo
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Centro de Custo (Inclusão)



*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Centro de Custo

Quando eu visualizar a tela: Consulta de Centro de Custo
  resource_cnsCentrodeCusto.Acessar Tela Consulta de Centro de Custo

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Centro de Custo (Inclusão)
  resource_frmCentroCusto.Acessar Tela Centro de Custo (Inclusão)
