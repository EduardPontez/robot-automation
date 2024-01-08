*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmotivosusofrota.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Motivos de Uso da Frota (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Motivo de Uso
  Quando eu visualizar a tela: Motivos de Uso da Frota (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Motivos de Uso da Frota (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Motivo de Uso
  resource_mnu.Clicar No Menu Veículos | Cadastro | Motivo de Uso

Quando eu visualizar a tela: Motivos de Uso da Frota (Atualização)
  resource_frmmotivosusofrota.Acessar Tela Motivos de Uso da Frota (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Motivos de Uso da Frota (Inclusão)
  resource_frmmotivosusofrota.Acessar Tela Motivos de Uso da Frota (Inclusão)
