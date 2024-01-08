*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmautorizacaoacessoimprensa.robot
Resource        ../../../../resource/app/resource_cnsmotivoacessoimprensa.robot
Resource        ../../../../resource/app/resource_frmmotivoacessoimprensa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Motivos de Acesso de Candidato (Inclusão) (Busca Externa) através da tela Autorização de Acesso Candidato (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  Quando eu visualizar a tela: Autorização de Acesso da Candidato
  E clicar no botão: Novo Item
  Então devo ver a tela: Autorização de Acesso Candidato (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Código do Acesso
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Motivos de Acesso de Candidato (Busca Externa)
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Motivos de Acesso de Candidato (Inclusão) (Busca Externa)


*** Keywords ***
Dado que eu acesse o menu: Identificação | Candidato | Autorização Acesso
  resource_mnu.Clicar No Menu Identificação | Candidato | Autorização Acesso

Quando eu visualizar a tela: Autorização de Acesso da Candidato
  resource_ctrautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso da Candidato

E clicar no botão: Novo Item
  resource_btn.Clicar No Botão Novo Item

Então devo ver a tela: Autorização de Acesso Candidato (Inclusão)
  resource_frmautorizacaoacessoimprensa.Acessar Tela Autorização de Acesso Candidato (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Código do Acesso
  resource_frmautorizacaoacessoimprensa.Clicar No Botão Buscar Dados Externos Para Código do Acesso

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Motivos de Acesso de Candidato (Busca Externa)
  resource_cnsmotivoacessoimprensa.Acessar Tela Consulta de Motivos de Acesso de Candidato (Busca Externa)

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Motivos de Acesso de Candidato (Inclusão) (Busca Externa)
  resource_frmmotivoacessoimprensa.Acessar Tela Motivos de Acesso de Candidato (Inclusão) (Busca Externa)
