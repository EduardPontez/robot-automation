*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrFavoritosRecentes.robot
Resource        ../../../../resource/app/resource_frmFavoritos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Favoritos
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Ao fazer o Login no Suricato, então devo visualizar a tela: Meu Suricato
  Ao clicar no botão: Favoritos
  Então devo visualizar a tela: Favoritos


*** Keywords ***
Ao fazer o Login no Suricato, então devo visualizar a tela: Meu Suricato
  resource_ctrFavoritosRecentes.Acessar Tela Meu Suricato

Ao clicar no botão: Favoritos
  resource_btn.Clicar No Botão Favoritos

Então devo visualizar a tela: Favoritos
  resource_frmFavoritos.Acessar Tela Favoritos
