*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmDefinicoesPessoasNaoGratas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Definições Pessoas Não Gratas
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Pessoa Não Grata
  Então devo visualizar a tela: Definições Pessoas Não Gratas

*** Keywords ***
Dado que eu acesse o menu: Configurações | Pessoa Não Grata
  resource_mnu.Clicar No Menu Configurações | Pessoa Não Grata

Então devo visualizar a tela: Definições Pessoas Não Gratas
  resource_frmDefinicoesPessoasNaoGratas.Acessar Tela Definições Pessoas Não Gratas
