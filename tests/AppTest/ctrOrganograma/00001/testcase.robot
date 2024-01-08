*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consestruturaorganograma.robot
Resource        ../../../../resource/app/resource_frmestruturaorganograma.robot
Resource        ../../../../resource/app/resource_ctrOrganograma.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Organograma - Treeview
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  Quando eu visualizar a tela: Consulta de Estrutura de Organograma
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Estrutura Organograma (Atualização)
  Então devo setar o campo Descrição com o valor "Presidencia"
  E clicar no botão: Local
  Então visualizarei a tela: Organograma - Treeview

*** Keywords ***

Dado que eu acesse o menu: Estrutura | Empresa | Organograma
  resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

Quando eu visualizar a tela: Consulta de Estrutura de Organograma
  resource_consestruturaorganograma.Acessar Tela Consulta de Estrutura de Organograma

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Estrutura Organograma (Atualização)
  resource_frmestruturaorganograma.Acessar Tela Estrutura Organograma (Atualização)

Então devo setar o campo Descrição com o valor "${DESCRIÇAO}"
  resource_frmestruturaorganograma.Setar Campo Descrição "${DESCRIÇAO}"

E clicar no botão: Local
  resource_btn.Clicar no botão Local

Então visualizarei a tela: Organograma - Treeview
  resource_ctrOrganograma.Acessar Tela Organograma - Treeview
