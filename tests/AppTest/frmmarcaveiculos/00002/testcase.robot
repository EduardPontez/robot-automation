*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmmarcaveiculos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Marcas de Veículos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Cadastro | Marcas
  Quando eu visualizar a tela: Marcas de Veículos (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Marcas de Veículos (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Cadastro | Marcas
  resource_mnu.Clicar No Menu Veículos | Cadastro | Marcas

Quando eu visualizar a tela: Marcas de Veículos (Atualização)
  resource_frmmarcaveiculos.Acessar Tela Marcas de Veículos (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Marcas de Veículos (Inclusão)
  resource_frmmarcaveiculos.Acessar Tela Marcas de Veículos (Inclusão)
