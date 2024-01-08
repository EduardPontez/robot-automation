*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmTiposVisitas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Tipos de Visitas (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Tipo de Visita
  Quando eu visualizar a tela: Tipos de Visitas (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Tipos de Visitas (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Tipo de Visita
  resource_mnu.Clicar No Menu Identificação | Visitante | Tipo de Visita

Quando eu visualizar a tela: Tipos de Visitas (Atualização)
  resource_frmTiposVisitas.Acessar Tela Tipos de Visitas (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Tipos de Visitas (Inclusão)
  resource_frmTiposVisitas.Acessar Tela Tipos de Visitas (Inclusão)
