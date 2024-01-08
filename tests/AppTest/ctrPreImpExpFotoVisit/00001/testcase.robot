*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrPreImpExpFotoVisit.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Visitante - Pré Seleção (Importador/Exportador) - Controle
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Processo | Foto | Visitante
  Então devo visualizar a tela: Visitante - Pré Seleção (Importador/Exportador) - Controle

*** Keywords ***
Dado que eu acesse o menu: Processo | Foto | Visitante
  resource_mnu.Clicar No Menu Processo | Foto | Visitante

Então devo visualizar a tela: Visitante - Pré Seleção (Importador/Exportador) - Controle
  resource_ctrPreImpExpFotoVisit.Acessar Tela Visitante - Pré Seleção (Importador/Exportador) - Controle
