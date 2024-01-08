*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoExternalKeyFilial.robot
Resource        ../../../../resource/app/resource_consHistoricoExternalKeyFilial.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
 Caso de Teste: Acessar Tela Consulta de Histórico de Codin por Filial
   [Tags]  PRINT  POPULATED
   [Documentation]   ${OBJETIVO}
   
   Dado que eu acesse o menu Dispositivo | Codin | Histórico de Codin por Filial
   Quando eu visualizar a tela: Consulta de Histórico de Codin por Filial
   E clicar no botão: Abrir um novo registro
   Então devo visualizar a tela: Formulário de Histórico de Codin por Filial

*** Keywords ***
Dado que eu acesse o menu Dispositivo | Codin | Histórico de Codin por Filial
  resource_mnu.Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

Quando eu visualizar a tela: Consulta de Histórico de Codin por Filial
  resource_consHistoricoExternalKeyFilial.Acessar Tela Consulta de Histórico de Codin por Filial

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Formulário de Histórico de Codin por Filial
  resource_frmHistoricoExternalKeyFilial.Acessar Tela Formulário de Histórico de Codin por Filial
