*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cons_TiposEPi.robot
Resource        ../../../../resource/app/resource_frmTiposEPI.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Cadastro Tipos Equipamento de Proteção Individual
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI
  Ao visualizar a tela: Consulta Cadastro Tipos Equipamento de Proteção Individual
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro Tipos Equipamento de Proteção Individual

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

Ao visualizar a tela: Consulta Cadastro Tipos Equipamento de Proteção Individual
  resource_cons_TiposEPi.Acessar Tela Consulta Cadastro Tipos Equipamento de Proteção Individual

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro Tipos Equipamento de Proteção Individual
  resource_frmTiposEPI.Acessar Tela Cadastro Tipos Equipamento de Proteção Individual
