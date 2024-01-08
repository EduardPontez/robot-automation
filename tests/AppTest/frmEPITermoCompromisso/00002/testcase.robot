*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEPITermoCompromisso.robot
Resource        ../../../../resource/app/resource_cnsEPITermoCompromisso.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Cadastro de Termo de Compromisso para Entrega de EPI (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI
  Quando eu visualizar a tela: Cadastro de Termo de Compromisso para Entrega de EPI
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Cadastro de Termo de Compromisso para Entrega de EPI (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI

Quando eu visualizar a tela: Cadastro de Termo de Compromisso para Entrega de EPI
  resource_cnsEPITermoCompromisso.Acessar Tela Cadastro de Termo de Compromisso para Entrega de EPI

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Cadastro de Termo de Compromisso para Entrega de EPI (Atualização)
  resource_frmEPITermoCompromisso.Acessar Tela Cadastro de Termo de Compromisso para Entrega de EPI (Atualização)
