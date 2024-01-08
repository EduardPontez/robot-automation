*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Mensagem de Acesso (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Envio de Mensagem | Individual
  Quando eu visualizar a tela: Mensagem de Acesso (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Mensagem de Acesso (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Envio de Mensagem | Individual
  Clicar No Menu Registro | Envio de Mensagem | Individual

Quando eu visualizar a tela: Mensagem de Acesso (Atualização)
  resource_frmmensagemcolaborador.Acessar Tela Mensagem de Acesso (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Mensagem de Acesso (Inclusão)
  resource_frmmensagemcolaborador.Acessar Tela Mensagem de Acesso (Inclusão)
