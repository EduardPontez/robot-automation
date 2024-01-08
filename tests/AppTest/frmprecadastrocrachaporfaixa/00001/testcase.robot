*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprecadastrocrachaporfaixa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Pré cadastro de crachá por faixa
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachás por Faixa
  Então devo visualizar a tela: Pré cadastro de crachá por faixa

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachás por Faixa
  resource_mnu.Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachás por Faixa

Então devo visualizar a tela: Pré cadastro de crachá por faixa
  resource_frmprecadastrocrachaporfaixa.Acessar Tela Pré cadastro de crachá por faixa
