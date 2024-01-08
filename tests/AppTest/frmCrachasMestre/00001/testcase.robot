*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsCrachasMestre.robot
Resource        ../../../../resource/app/resource_frmCrachasMestre.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Crachás Mestre (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Mestre e Acesso Geral
  Quando eu visualizar a tela: Consulta de Crachás Mestre
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Crachás Mestre (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Mestre e Acesso Geral
  resource_mnu.Clicar No Menu Registro | Crachá | Mestre e Acesso Geral

Quando eu visualizar a tela: Consulta de Crachás Mestre
  resource_cnsCrachasMestre.Acessar Tela Consulta de Crachás Mestre

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Crachás Mestre (Inclusão)
  resource_frmCrachasMestre.Acessar Tela Crachás Mestre (Inclusão)
