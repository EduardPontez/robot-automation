*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEmpresas.robot
Resource        ../../../../resource/app/resource_cnsEmpresascad.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
 Caso de Teste: Acessar a Tela Consulta de Empresas
   [Tags]  PRINT  POPULATED
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
   Ao visualizar a tela: Empresas (Atualização)
   E clicar no botão: Pesquisar
   Então devo visualizar a tela: Consulta de Empresas


*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Ao visualizar a tela: Empresas (Atualização)
  resource_frmEmpresas.Acessar Tela Empresas (Atualização)

E clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Consulta de Empresas
  resource_cnsEmpresascad.Acessar Tela Consulta de Empresas
