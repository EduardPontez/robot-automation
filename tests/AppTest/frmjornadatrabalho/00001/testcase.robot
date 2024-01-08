*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_conshorario.robot
Resource        ../../../../resource/app/resource_frmhorario.robot
Resource        ../../../../resource/app/resource_frmjornadatrabalho.robot
Resource        ../../../../resource/app/resource_abahorarios.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Jornada de Trabalho
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | Escala | Horário de Escala
  Ao visualizar a tela: Consulta de Horários
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Horários
  E preencher o campo "Descrição"
  E selecionar um item no campo "Turno"
  E selecionar um item no campo "Tipo de Jornada"
  E então devo clicar no botão: Atualizar
  E clicar na aba "Jornada de Trabalho"
  Então devo visualizar a tela: Jornada de Trabalho

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | Escala | Horário de Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala

Ao visualizar a tela: Consulta de Horários
  resource_conshorario.Acessar Tela Consulta de Horários

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Horários
  resource_frmhorario.Acessar Tela Horários

E preencher o campo "Descrição"
  resource_frmhorario.Inserir Descrição

E selecionar um item no campo "Turno"
  resource_frmhorario.Inserir Turno

E selecionar um item no campo "Tipo de Jornada"
  resource_frmhorario.Inserir Tipo de Jornada

E então devo clicar no botão: Atualizar
  resource_btn.Clicar No Botão Alterar o Registro (Inferior)

E clicar na aba "Jornada de Trabalho"
  resource_abahorarios.Clicar Na Aba Jornada de Trabalho

Então devo visualizar a tela: Jornada de Trabalho
  resource_frmjornadatrabalho.Acessar Tela Jornada de Trabalho
