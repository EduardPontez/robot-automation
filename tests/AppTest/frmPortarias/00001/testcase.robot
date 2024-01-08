*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmPortarias.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Incluir uma nova Portaria
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Estrutura | Portaria e Recepção
  Quando eu visualizar a tela Portarias (Atualização)
  E clicar no botão Abrir um novo registro
  E preencher o campo Descrição
  E selecionar uma opção no campo Planta
  Então devo clicar no botão Incluir o Registro


*** Keywords ***

Dado que eu acesse o menu Estrutura | Portaria e Recepção
  resource_mnu.Clicar No Menu Estrutura | Portaria e Recepção

Quando eu visualizar a tela Portarias (Atualização)
  resource_frmPortarias.Acessar Tela Portarias (Atualização)

E clicar no botão Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

E preencher o campo Descrição
  resource_frmPortarias.Setar Campo Descrição

E selecionar uma opção no campo Planta
  resource_frmPortarias.Setar Campo Planta

Então devo clicar no botão Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro
