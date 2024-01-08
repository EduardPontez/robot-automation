*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmGrupoEmailEPI.robot
Resource        ../../../../resource/app/resource_cnsGrupoEmailEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro Grupo de Email - EPI (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI
  Quando eu visualizar a tela: Grupo de Email - EPI
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Grupo de Email - EPI (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

Quando eu visualizar a tela: Grupo de Email - EPI
  resource_cnsGrupoEmailEPI.Acessar Tela Grupo de Email - EPI

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Grupo de Email - EPI (Inclusão)
  resource_frmGrupoEmailEPI.Acessar Tela Cadastro de Grupo de Email - EPI (Inclusão)
