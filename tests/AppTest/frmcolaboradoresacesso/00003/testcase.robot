*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcolaboradoresacesso.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Parceiro - Perfil de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Parceiro
  Quando eu visualizar a tela: Cadastro de Parceiro
  E clicar no botão: Perfil de Acesso
  Então devo visualizar a tela: Cadastro de Parceiro - Perfil de Acesso

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Parceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Parceiro

Quando eu visualizar a tela: Cadastro de Parceiro
  resource_frmcolaborador.Acessar Tela Cadastro de Parceiro

E clicar no botão: Perfil de Acesso
  resource_btn.Clicar No Botão Perfil de Acesso

Então devo visualizar a tela: Cadastro de Parceiro - Perfil de Acesso
  resource_frmcolaboradoresacesso.Acessar Tela Cadastro de Parceiro - Perfil de Acesso
