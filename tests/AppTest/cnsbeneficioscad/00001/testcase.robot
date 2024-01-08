*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_cnsbeneficioscad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Benefícios
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  Quando eu visualizar a tela: Benefícios (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Benefícios

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Quando eu visualizar a tela: Benefícios (Atualização)
  resource_frmbeneficios.Acessar Tela Benefícios (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Benefícios
  resource_cnsbeneficioscad.Acessar Tela Consulta Benefícios
