*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsSenhasAcessoColetores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Senhas de Acesso nos Codins
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Senha
  Então devo visualizar a tela: Consulta de Senhas de Acesso nos Codins

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Senha
  resource_mnu.Clicar No Menu Identificação | Colaborador | Senha

Então devo visualizar a tela: Consulta de Senhas de Acesso nos Codins
  resource_cnsSenhasAcessoColetores.Acessar Tela Consulta de Senhas de Acesso nos Codins
