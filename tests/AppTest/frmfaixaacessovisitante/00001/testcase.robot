*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessovisitante.robot
Resource        ../../../../resource/app/resource_frmfaixaacessovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Faixas de Horários (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  Então devo visualizar a tela: Créditos de Acesso
  E preencher o campo: Código do Colaborador
  E preencher o campo: Data Inicial
  E clicar no botão: OK
  Então devo visualizar a tela: Faixas de Horários (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Visitante
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

Então devo visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessovisitante.Acessar Tela Créditos de Acesso

E preencher o campo: Código do Colaborador
  resource_ctrcreditosdeacessovisitante.Inserir Código do Colaborador

E preencher o campo: Data Inicial
  resource_ctrcreditosdeacessovisitante.Inserir Data Inicial

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Faixas de Horários (Inclusão)
  resource_frmfaixaacessovisitante.Acessar Tela Faixas de Horários (Inclusão)
