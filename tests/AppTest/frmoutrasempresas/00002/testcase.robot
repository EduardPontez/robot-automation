*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmoutrasempresas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Cadastro de Empresas Terceiras (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  Então devo ver a tela: Cadastro de Empresas Terceiras (Atualização)
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Empresas Terceiras (Inclusão)


*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

Então devo ver a tela: Cadastro de Empresas Terceiras (Atualização)
  resource_frmoutrasempresas.Acessar Tela Cadastro de Empresas Terceiras (Atualização)

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Empresas Terceiras (Inclusão)
  resource_frmoutrasempresas.Acessar Tela Cadastro de Empresas Terceiras (Inclusão)
