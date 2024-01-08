*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivopessoasnaograta.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Motivos de Pessoas não Gratas (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Motivo
  Quando eu visualizar a tela: Motivos de Pessoas não Gratas (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Motivos de Pessoas não Gratas (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Pessoa Não Grata | Motivo
  resource_mnu.Clicar No Menu Identificação | Pessoa Não Grata | Motivo

Quando eu visualizar a tela: Motivos de Pessoas não Gratas (Atualização)
  resource_frmmotivopessoasnaograta.Acessar Tela Motivos de Pessoas não Gratas (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Motivos de Pessoas não Gratas (Inclusão)
  resource_frmmotivopessoasnaograta.Acessar Tela Motivos de Pessoas não Gratas (Inclusão)
