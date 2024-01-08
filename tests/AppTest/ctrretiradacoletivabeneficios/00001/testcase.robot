*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrretiradacoletivabeneficios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Consumo de Benefícios
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Consumo
  Então devo visualizar a tela: Consumo de Benefícios

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Consumo
  resource_mnu.Clicar No Menu Registro | Benefício | Consumo

Então devo visualizar a tela: Consumo de Benefícios
  resource_ctrretiradacoletivabeneficios.Acessar Tela Consumo de Benefícios
