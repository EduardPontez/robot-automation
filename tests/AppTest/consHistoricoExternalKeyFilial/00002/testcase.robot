*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consHistoricoExternalKeyFilial.robot
Resource    ../../../../resource/app/resource_cnsEstruturaCargos.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Consulta de Histórico de Codin por Filial - Filtro
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Dispositivo | Codin | Histórico de Codin por Filial
  Ao visualizar a tela: Consulta de Histórico de Codin por Filial
  E clicar no botão: Pesquisar Registro
  Então devo visualizar a tela: Consulta de Histórico de Codin por Filial - Filtro


*** Keywords ***
Dado que eu acesse o menu Dispositivo | Codin | Histórico de Codin por Filial
  resource_mnu.Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

Ao visualizar a tela: Consulta de Histórico de Codin por Filial
  resource_consHistoricoExternalKeyFilial.Acessar Tela Consulta de Histórico de Codin por Filial

E clicar no botão: Pesquisar Registro
    resource_btn.Clicar No Botão Pesquisar Registros

Então devo visualizar a tela: Consulta de Histórico de Codin por Filial - Filtro
    resource_consHistoricoExternalKeyFilial.Acessar Tela Consulta de Histórico de Codin por Filial - Filtro