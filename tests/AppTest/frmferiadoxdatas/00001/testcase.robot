*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmferiado.robot
Resource        ../../../../resource/app/resource_consferiado.robot
Resource        ../../../../resource/app/resource_frmferiadoxdatas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Feriados - Datas (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Feriado
  Quando eu visualizar a tela: Consulta de Feriados
  E clicar no botão: Editar o registro
  Então devo visualizar a tela: Cadastro de Grupos de Feriados (Atualização)
  Ao clicar no botão: Cadastro de Datas
  Então devo visualizar a tela: Cadastro de Feriados - Datas (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Feriado
  resource_mnu.Clicar No Menu Estrutura | Feriado

Quando eu visualizar a tela: Consulta de Feriados
  resource_consferiado.Acessar Tela Consulta de Feriados

E clicar no botão: Editar o registro
  resource_btn.Clicar No Botão Editar o registro

Então devo visualizar a tela: Cadastro de Grupos de Feriados (Atualização)
  resource_frmferiado.Acessar Tela Cadastro de Grupos de Feriados (Atualização)

Ao clicar no botão: Cadastro de Datas
  resource_btn.Clicar No Botão Cadastro de Datas

Então devo visualizar a tela: Cadastro de Feriados - Datas (Atualização)
  resource_frmferiadoxdatas.Acessar Tela Cadastro de Feriados - Datas (Atualização)
