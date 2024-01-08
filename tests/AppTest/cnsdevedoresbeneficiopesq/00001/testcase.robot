*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmdevedoresbeneficios.robot
Resource        ../../../../resource/app/resource_cnsdevedoresbeneficiopesq.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta Devedores de Benefícios (Filtro)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  Quando eu visualizar a tela: Devedores de Benefícios (Atualização)
  E clicar no botão: Pesquisar
  Então devo visualizar a tela: Consulta Devedores de Benefícios (Filtro)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Autorização de Devedores
  resource_mnu.Clicar No Menu Registro | Benefício | Autorização de Devedores

Quando eu visualizar a tela: Devedores de Benefícios (Atualização)
  resource_frmdevedoresbeneficios.Acessar Tela Devedores de Benefícios (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta Devedores de Benefícios (Filtro)
  resource_cnsdevedoresbeneficiopesq.Acessar Tela Consulta Devedores de Benefícios (Filtro)
