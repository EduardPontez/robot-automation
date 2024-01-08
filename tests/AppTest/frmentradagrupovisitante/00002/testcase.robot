*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctropcoesentradagrupo.robot
Resource        ../../../../resource/app/resource_consentradagrupo.robot
Resource        ../../../../resource/app/resource_ctrentradagrupo.robot
Resource        ../../../../resource/app/resource_frmentradagrupovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Grupo de Visitantes (Inclusão) (Busca Externa) através da tela Entrada de Grupo (Consulta)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  E clicar no botão: Últimas Visitas
  Então devo visualizar a tela: Entrada de Grupo (Consulta)
  Ao clicar no botão: Opções
  Então devo visualizar a tela: Entrada de Grupo de Visitante
  Ao clicar no botão "Editar o Registro" ao lado do campo Grupo de Visitantes
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Cadastro de Grupo de Visitantes (Atualização) (Busca Externa)
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Grupo de Visitantes (Inclusão) (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Visitante | Entrada de Grupo
  resource_mnu.Clicar No Menu Entrada | Visitante | Entrada de Grupo

Quando eu visualizar a tela: Opções de Entrada de Grupo de Visitantes
  resource_ctropcoesentradagrupo.Acessar Tela Opções de Entrada de Grupo de Visitantes

E clicar no botão: Últimas Visitas
  resource_btn.Clicar No Botão Últimas Visitas

Então devo visualizar a tela: Entrada de Grupo (Consulta)
  resource_consentradagrupo.Acessar Tela Entrada de Grupo (Consulta)

Ao clicar no botão: Opções
  resource_btn.Clicar No Botão Opções

Então devo visualizar a tela: Entrada de Grupo de Visitante
  resource_ctrentradagrupo.Acessar Tela Entrada de Grupo de Visitante

Ao clicar no botão "Editar o Registro" ao lado do campo Grupo de Visitantes
  resource_ctrentradagrupo.Clicar No Botão Editar o Registro (Grupo de Visitante)

Então o navegador deve exibir uma nova janela e eu visualizar a tela Cadastro de Grupo de Visitantes (Atualização) (Busca Externa)
  resource_frmentradagrupovisitante.Acessar Tela Cadastro de Grupo de Visitantes (Atualização) (Busca Externa)

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Grupo de Visitantes (Inclusão) (Busca Externa)
  resource_frmentradagrupovisitante.Acessar Tela Cadastro de Grupo de Visitantes (Inclusão) (Busca Externa)
