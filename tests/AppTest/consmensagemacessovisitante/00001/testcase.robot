*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abamensagemacesso.robot
Resource        ../../../../resource/app/resource_frmmensagemvisitante.robot
Resource        ../../../../resource/app/resource_frmmensagemcolaborador.robot
Resource        ../../../../resource/app/resource_consmensagemacessovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Consulta de Mensagens de Acesso do Visitante
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Registro | Envio de Mensagem | Individual
  Quando eu visualizar a tela: Mensagem de Acesso (Atualização)
  E clicar na aba Visitantes
  E visualizar a tela: Mensagem de Acesso (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta de Mensagens de Acesso do Visitante

*** Keywords ***
Dado que eu acesse o menu Registro | Envio de Mensagem | Individual
  resource_mnu.Clicar No Menu Registro | Envio de Mensagem | Individual

Quando eu visualizar a tela: Mensagem de Acesso (Atualização)
  resource_frmmensagemcolaborador.Acessar Tela Mensagem de Acesso (Atualização)

E clicar na aba Visitantes
  resource_abamensagemacesso.Clicar Na Aba Visitante

E visualizar a tela: Mensagem de Acesso (Atualização)
  resource_frmmensagemvisitante.Acessar Tela Mensagem de Acesso (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Mensagens de Acesso do Visitante
  resource_consmensagemacessovisitante.Acessar Tela Consulta de Mensagens de Acesso do Visitante
