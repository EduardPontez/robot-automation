*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsFilialFRMcad.robot
Resource        ../../../../resource/app/resource_frmFilial.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Filiais (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Filial
  Quando eu visualizar a tela: Consulta de Filial
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Filiais (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Filial
  resource_mnu.Clicar No Menu Estrutura | Empresa | Filial

Quando eu visualizar a tela: Consulta de Filial
  resource_cnsFilialFRMcad.Acessar Tela Consulta de Filial

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Filiais (Inclusão)
  resource_frmFilial.Acessar Tela Filiais (Inclusão)
