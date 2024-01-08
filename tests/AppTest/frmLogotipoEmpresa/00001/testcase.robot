*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEmpresas.robot
Resource        ../../../../resource/app/resource_frmLogotipoEmpresa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
 Caso de Teste: Acessar a Tela Foto (Inclusão)
   [Tags]  PRINT  POPULATED
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
   Ao visualizar a tela: Empresas (Atualização)
   Então devo clicar no texto "Logo Não Disponível."
   Então o navegador deve exibir uma nova janela e eu visualizar a tela Foto (Inclusão)

*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Ao visualizar a tela: Empresas (Atualização)
  resource_frmEmpresas.Acessar Tela Empresas (Atualização)

Então devo clicar no texto "Logo Não Disponível."
  resource_frmEmpresas.Clicar no texto "Logo Não Disponível."

Então o navegador deve exibir uma nova janela e eu visualizar a tela Foto (Inclusão)
  resource_frmLogotipoEmpresa.Acessar Tela Foto (Inclusão)
