*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrretiradacoletivabeneficios.robot
Resource        ../../../../resource/app/resource_frmretiradacoletivabeneficios.robot

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
  Ao visualizar a tela: Consumo de Benefícios
  Então devo selecionar um item no campo Empresa
  E selecionar um item no campo Benefício
  E clicar no botão: OK
  Então devo visualizar a tela: Consumo de Benefícios

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Consumo
  resource_mnu.Clicar No Menu Registro | Benefício | Consumo

Ao visualizar a tela: Consumo de Benefícios
  resource_ctrretiradacoletivabeneficios.Acessar Tela Consumo de Benefícios

Então devo selecionar um item no campo Empresa
  resource_ctrretiradacoletivabeneficios.Selecionar Empresa

E selecionar um item no campo Benefício
  resource_ctrretiradacoletivabeneficios.Selecionar Benefício

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Consumo de Benefícios
  resource_frmretiradacoletivabeneficios.Acessar Tela Consumo de Benefícios
