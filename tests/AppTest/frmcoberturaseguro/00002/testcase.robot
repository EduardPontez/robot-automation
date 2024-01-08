*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcoberturaseguro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cobertura de Seguros (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Cobertura
  Quando eu visualizar a tela: Cobertura de Seguros (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cobertura de Seguros (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Cobertura
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cobertura

Quando eu visualizar a tela: Cobertura de Seguros (Atualização)
  resource_frmcoberturaseguro.Acessar Tela Cobertura de Seguros (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cobertura de Seguros (Inclusão)
  resource_frmcoberturaseguro.Acessar Tela Cobertura de Seguros (Inclusão)
