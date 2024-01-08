*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessovisitante.robot
Resource        ../../../../resource/app/resource_cnsCreditosAcessoVisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Créditos de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  Quando eu visualizar a tela: Créditos de Acesso
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Créditos de Acesso de Visitante

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

Quando eu visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessovisitante.Acessar Tela Créditos de Acesso

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar Registros (Inferior)

Então devo visualizar a tela: Consulta de Créditos de Acesso de Visitante
  resource_cnsCreditosAcessoVisitante.Acessar Tela Consulta de Créditos de Acesso de Visitante
