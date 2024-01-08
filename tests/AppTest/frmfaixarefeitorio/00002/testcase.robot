*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmfaixarefeitorio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Faixa Horária de Refeitório - Cadastro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Faixa de Acesso de Refeitório
  Quando eu visualizar a tela: Faixa Horária de Refeitório
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Faixa Horária de Refeitório - Cadastro

*** Keywords ***
Dado que eu acesse o menu: Configurações | Faixa de Acesso de Refeitório
  resource_mnu.Clicar No Menu Configurações | Faixa de Acesso de Refeitório

Quando eu visualizar a tela: Faixa Horária de Refeitório
  resource_frmfaixarefeitorio.Acessar Tela Faixa Horária de Refeitório

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Faixa Horária de Refeitório - Cadastro
  resource_frmfaixarefeitorio.Acessar Tela Faixa Horária de Refeitório - Cadastro
