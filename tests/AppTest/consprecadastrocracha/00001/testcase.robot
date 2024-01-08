*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprecadastrocracha69cra.robot
Resource        ../../../../resource/app/resource_consprecadastrocracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Pré-Cadastro de Crachá
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  Quando eu visualizar a tela: Pré-Cadastro de Crachá (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Pré-Cadastro de Crachá

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá

Quando eu visualizar a tela: Pré-Cadastro de Crachá (Atualização)
  resource_frmprecadastrocracha69cra.Acessar Tela Pré-Cadastro de Crachá (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Pré-Cadastro de Crachá
  resource_consprecadastrocracha.Acessar Tela Consulta de Pré-Cadastro de Crachá
