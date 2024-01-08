*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmliberafaixahoraria.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Liberação de Faixa Horária
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Liberação Faixa Horária | Individual
  Então devo visualizar a tela: Liberação de Faixa Horária

*** Keywords ***
Dado que eu acesse o menu: Registro | Liberação Faixa Horária | Individual
  resource_mnu.Clicar No Menu Registro | Liberação Faixa Horária | Individual

Então devo visualizar a tela: Liberação de Faixa Horária
  resource_frmliberafaixahoraria.Acessar Tela Liberação de Faixa Horária
