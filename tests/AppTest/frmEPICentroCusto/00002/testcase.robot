*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEPICentroCusto.robot
Resource        ../../../../resource/app/resource_cnsEPICentroCusto.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de EPI por Centro de Custo (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo
  Quando eu visualizar a tela: Cadastro de EPI por Centro de Custo
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Cadastro de EPI por Centro de Custo (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo

Quando eu visualizar a tela: Cadastro de EPI por Centro de Custo
  resource_cnsEPICentroCusto.Acessar Tela Cadastro de EPI por Centro de Custo

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Cadastro de EPI por Centro de Custo (Atualização)
  resource_frmEPICentroCusto.Acessar Tela Cadastro de EPI por Centro de Custo (Atualização)
