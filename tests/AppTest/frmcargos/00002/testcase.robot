*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Cargos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  Quando eu visualizar a tela: Cadastro de Cargos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Cargos (Inclusão)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo

Quando eu visualizar a tela: Cadastro de Cargos (Atualização)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Cargos (Inclusão)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Inclusão)
