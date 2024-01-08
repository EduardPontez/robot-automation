*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmagendavisitante.robot
Resource        ../../../../resource/app/resource_consagendamentovisitante.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Agendamento de Visitas - Visitante (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  Quando eu visualizar a tela: Consulta de Agendamento de Visitantes
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Agendamento de Visitas - Visitante (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Visitante | Agendamento Visitante
  resource_mnu.Clicar No Menu Identificação | Visitante | Agendamento Visitante

Quando eu visualizar a tela: Consulta de Agendamento de Visitantes
  resource_consagendamentovisitante.Acessar Tela Consulta de Agendamento de Visitantes

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Agendamento de Visitas - Visitante (Atualização)
  resource_frmagendavisitante.Acessar Tela Agendamento de Visitas - Visitante (Atualização)