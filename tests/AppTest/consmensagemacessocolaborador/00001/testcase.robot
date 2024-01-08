*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot
Resource        ../../../../resource/app/resource_consmensagemacessocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consulta de Mensagem de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem | Individual
  Quando eu visualizar a tela: Mensagem de Acesso (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Mensagem de Acesso

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem | Individual
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Individual

Quando eu visualizar a tela: Mensagem de Acesso (Atualização)
  resource_frmmensagemcolaborador.Acessar Tela Mensagem de Acesso (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Mensagem de Acesso
  resource_consmensagemacessocolaborador.Acessar Tela Consulta de Mensagem de Acesso
