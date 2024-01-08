*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrcreditoscoletivos.robot
Resource        ../../../../resource/app/resource_ctravisocreditos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Processamento Créditos Coletivos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  Ao visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  E preencher os campos: Hora inicial/Hora final
  E preencher o campo: Quantidade de Crédito
  E clicar no botão: Executar
  Então devo visualizar a tela: Processamento Créditos Coletivos

*** Keywords ***
Dado que eu acesse o menu: Registro | Crédito de Acesso | Coletivo
  resource_mnu.Clicar No Menu Registro | Crédito de Acesso | Coletivo

Ao visualizar a tela: Créditos de Acesso Coletivos (Atualização)
  resource_ctrcreditoscoletivos.Acessar Tela Créditos de Acesso Coletivos (Atualização)

E preencher os campos: Hora inicial/Hora final
  resource_ctrcreditoscoletivos.Preencher campos Hora inicial/Hora final

E preencher o campo: Quantidade de Crédito
  resource_ctrcreditoscoletivos.Preencher campo Quantidade de Crédito

E clicar no botão: Executar
  resource_btn.Clicar No Botão Engrenagem

Então devo visualizar a tela: Processamento Créditos Coletivos
  resource_ctravisocreditos.Acessar Tela Processamento Créditos Coletivos
