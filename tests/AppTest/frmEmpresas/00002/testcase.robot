*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEmpresas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
 Caso de Teste: Acessar a Tela Empresas (Inclusão)
   [Tags]  PRINT  POPULATED
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
   Ao visualizar a tela: Empresas (Atualização)
   E clicar no botão: Abrir um novo registro
   Então devo visualizar a tela: Empresas (Inclusão)


*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Ao visualizar a tela: Empresas (Atualização)
  resource_frmEmpresas.Acessar Tela Empresas (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Empresas (Inclusão)
  resource_frmEmpresas.Acessar Tela Empresas (Inclusão)
