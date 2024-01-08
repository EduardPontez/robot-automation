*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmprocedimentotratalarme.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Procedimentos para Tratamento de Alarmes (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Dispositivo | Alarme | Procedimento de Alarme
  Quando eu visualizar a tela: Procedimentos para Tratamento de Alarmes (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Procedimentos para Tratamento de Alarmes (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Dispositivo | Alarme | Procedimento de Alarme
  resource_mnu.Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme

Quando eu visualizar a tela: Procedimentos para Tratamento de Alarmes (Atualização)
  resource_frmprocedimentotratalarme.Acessar Tela Procedimentos para Tratamento de Alarmes (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Procedimentos para Tratamento de Alarmes (Inclusão)
  resource_frmprocedimentotratalarme.Acessar Tela Procedimentos para Tratamento de Alarmes (Inclusão)
