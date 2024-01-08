*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprecadastrocracha69cra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Pré-Cadastro de Crachá (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  Quando eu visualizar a tela: Pré-Cadastro de Crachá (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Pré-Cadastro de Crachá (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Crachá | Pré-Cadastro de Crachá
  resource_mnu.Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá

Quando eu visualizar a tela: Pré-Cadastro de Crachá (Atualização)
  resource_frmprecadastrocracha69cra.Acessar Tela Pré-Cadastro de Crachá (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Pré-Cadastro de Crachá (Inclusão)
  resource_frmprecadastrocracha69cra.Acessar Tela Pré-Cadastro de Crachá (Inclusão)
