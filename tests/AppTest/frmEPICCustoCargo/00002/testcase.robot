*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEPICCustoCargo.robot
Resource        ../../../../resource/app/resource_cnsEPICCustoCargo.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de EPI por Centro de Custo e Cargo (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo
  Quando eu visualizar a tela: Cadastro de EPI por Centro de Custo e Cargo
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Cadastro de EPI por Centro de Custo e Cargo (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

Quando eu visualizar a tela: Cadastro de EPI por Centro de Custo e Cargo
  resource_cnsEPICCustoCargo.Acessar Tela Cadastro de EPI por Centro de Custo e Cargo

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Cadastro de EPI por Centro de Custo e Cargo (Atualização)
  resource_frmEPICCustoCargo.Acessar Tela Cadastro de EPI por Centro de Custo e Cargo (Atualização)
