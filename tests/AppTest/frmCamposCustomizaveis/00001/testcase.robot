*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmCamposCustomizaveis.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Formulário de Campos Customizáveis
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Campos Customizáveis
  Então devo visualizar a tela: Formulário de Campos Customizáveis

*** Keywords ***
Dado que eu acesse o menu: Configurações | Campos Customizáveis
  resource_mnu.Clicar No Menu Configurações | Campos Customizáveis

Então devo visualizar a tela: Formulário de Campos Customizáveis
  resource_frmCamposCustomizaveis.Acessar Tela Formulário de Campos Customizáveis
