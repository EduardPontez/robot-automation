*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ababeneficios.robot
Resource        ../../../../resource/app/resource_frmbeneficios.robot
Resource        ../../../../resource/app/resource_frmcoletorbeneficio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Codin de Benefícios (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  Quando eu visualizar a tela: Benefícios (Atualização)
  E clicar na aba: Codin de Benefício
  Então devo visualizar a tela: Codin de Benefícios (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Quando eu visualizar a tela: Benefícios (Atualização)
  resource_frmbeneficios.Acessar Tela Benefícios (Atualização)

E clicar na aba: Codin de Benefício
  resource_ababeneficios.Clicar Na Aba Codin de Benefício

Então devo visualizar a tela: Codin de Benefícios (Atualização)
  resource_frmcoletorbeneficio.Acessar Tela Codin de Benefícios (Atualização)
