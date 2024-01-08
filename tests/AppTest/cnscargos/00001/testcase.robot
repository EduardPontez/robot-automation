*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargos.robot
Resource        ../../../../resource/app/resource_cnscargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Cargos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  Quando eu visualizar a tela: Cadastro de Cargos (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Cargos


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo

Quando eu visualizar a tela: Cadastro de Cargos (Atualização)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Cargos
  resource_cnscargos.Acessar Tela Consulta de Cargos
