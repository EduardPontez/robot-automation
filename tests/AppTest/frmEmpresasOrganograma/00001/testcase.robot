*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmEmpresas.robot
Resource        ../../../../resource/app/resource_frmEmpresasOrganograma.robot
Resource        ../../../../resource/app/resource_abaempresa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Organogramas (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
  Quando eu visualizar a tela: Empresas (Atualização)
  E clicar na aba Organograma
  Então devo visualizar a tela: Organogramas (Atualização)


*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Cadastro de Empresas
  resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

Quando eu visualizar a tela: Empresas (Atualização)
  resource_frmEmpresas.Acessar Tela Empresas (Atualização)

E clicar na aba Organograma
  resource_abaempresa.Clicar Na Aba Organograma

Então devo visualizar a tela: Organogramas (Atualização)
  resource_frmEmpresasOrganograma.Acessar Tela Organogramas (Atualização)
