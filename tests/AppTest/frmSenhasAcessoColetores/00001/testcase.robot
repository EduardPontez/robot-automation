*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmSenhasAcessoColetores.robot
Resource        ../../../../resource/app/resource_cnsSenhasAcessoColetores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Senhas de Acesso nos Codins (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Senha
  Quando eu visualizar a tela: Consulta de Senhas de Acesso nos Codins
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Senhas de Acesso nos Codins (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Senha
  resource_mnu.Clicar No Menu Identificação | Colaborador | Senha

Quando eu visualizar a tela: Consulta de Senhas de Acesso nos Codins
  resource_cnsSenhasAcessoColetores.Acessar Tela Consulta de Senhas de Acesso nos Codins

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Senhas de Acesso nos Codins (Inclusão)
  resource_frmSenhasAcessoColetores.Acessar Tela Senhas de Acesso nos Codins (Inclusão)
