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

Testcase: Acessar Tela Codin de Benefícios (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  Quando eu visualizar a tela: Benefícios (Atualização)
  E clicar na aba: Codin de Benefício
  E eu visualizar a tela: Codin de Benefícios (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Codin de Benefícios (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Cadastro de Benefício
  resource_mnu.Clicar No Menu Registro | Benefício | Cadastro de Benefício

Quando eu visualizar a tela: Benefícios (Atualização)
  resource_frmbeneficios.Acessar Tela Benefícios (Atualização)

E eu visualizar a tela: Codin de Benefícios (Atualização)
  resource_frmcoletorbeneficio.Acessar Tela Codin de Benefícios (Atualização)

E clicar na aba: Codin de Benefício
  resource_ababeneficios.Clicar Na Aba Codin de Benefício

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Codin de Benefícios (Inclusão)
  resource_frmcoletorbeneficio.Acessar Tela Codin de Benefícios (Inclusão)
