*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditosdeacessoservidor.robot
Resource        ../../../../resource/app/resource_frmfaixaacessoservidor.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Faixas de Horários (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  Ao visualizar a tela: Créditos de Acesso
  E preencher o campo: Código do Colaborador
  E preencher o campo: Data Inicial
  E clicar no botão: OK
  Então devo visualizar a tela: Faixas de Horários (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

Ao visualizar a tela: Créditos de Acesso
  resource_ctrcreditosdeacessoservidor.Acessar Tela Créditos de Acesso

E preencher o campo: Código do Colaborador
  resource_ctrcreditosdeacessoservidor.Inserir Código do Colaborador

E preencher o campo: Data Inicial
  resource_ctrcreditosdeacessoservidor.Inserir Data Inicial

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Faixas de Horários (Inclusão)
  resource_frmfaixaacessoservidor.Acessar Tela Faixas de Horários (Inclusão)
