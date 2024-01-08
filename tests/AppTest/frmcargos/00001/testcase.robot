*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Cargos (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  Então devo visualizar a tela: Cadastro de Cargos (Atualização)



*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cargo

Então devo visualizar a tela: Cadastro de Cargos (Atualização)
  resource_frmcargos.Acessar Tela Cadastro de Cargos (Atualização)
