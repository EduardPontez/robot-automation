*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEmpresas.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
 Caso de Teste: Acessar a Tela Empresas (Atualização)
   [Tags]  PRINT  POPULATED
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
   Então devo visualizar a tela: Empresas (Atualização)


*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Então devo visualizar a tela: Empresas (Atualização)
  resource_frmEmpresas.Acessar Tela Empresas (Atualização)
