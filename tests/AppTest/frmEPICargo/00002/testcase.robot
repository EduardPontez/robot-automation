*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEPICargo.robot
Resource        ../../../../resource/app/resource_cnsEPICargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de EPI por Cargo (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo
  Quando eu visualizar a tela: Cadastro de EPI por Cargo
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Cadastro de EPI por Cargo (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo

Quando eu visualizar a tela: Cadastro de EPI por Cargo
  resource_cnsEPICargo.Acessar Tela Cadastro de EPI por Cargo

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Cadastro de EPI por Cargo (Atualização)
  resource_frmEPICargo.Acessar Tela Cadastro de EPI por Cargo (Atualização)
