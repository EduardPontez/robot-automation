*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abamensagemacesso.robot
Resource        ../../../../resource/app/resource_frmmensagemvisitante.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Mensagem de Acesso (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Registro | Envio de Mensagem | Individual
  Quando eu visualizar a tela: Mensagem de Acesso (Atualização)
  E clicar na aba Visitante
  Então devo visualizar a tela: Mensagem de Acesso (Atualização)

*** Keywords ***
Dado que eu acesse o menu Registro | Envio de Mensagem | Individual
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Individual

Quando eu visualizar a tela: Mensagem de Acesso (Atualização)
  resource_frmmensagemcolaborador.Acessar Tela Mensagem de Acesso (Atualização)

E clicar na aba Visitante
  resource_abamensagemacesso.Clicar Na Aba Visitante

Então devo visualizar a tela: Mensagem de Acesso (Atualização)
  resource_frmmensagemvisitante.Acessar Tela Mensagem de Acesso (Atualização)
