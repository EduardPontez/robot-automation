*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizacaoSaida.robot
Resource        ../../../../resource/app/resource_frmAutorizacaoSaida.robot
Resource        ../../../../resource/app/resource_frmMateriaisAutorizados.robot
Resource        ../../../../resource/app/resource_abamateriais.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Autorização de Materiais (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Autorização
  Ao visualizar a tela: Consulta de Autorizações de Saída
  E clicar no botão: Editar o Registro
  Então devo visualizar a tela: Autorização de Saída (Atualização)
  E clicar na aba "Materias"
  Então devo visualizar a tela: Autorização de Materiais (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Autorização
  resource_mnu.Clicar No Menu Entrada | Material | Autorização

Ao visualizar a tela: Consulta de Autorizações de Saída
  resource_cnsAutorizacaoSaida.Acessar Tela Consulta de Autorizações de Saída

E clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Autorização de Saída (Atualização)
  resource_frmAutorizacaoSaida.Acessar Tela Autorização de Saída (Atualização)

E clicar na aba "Materias"
  resource_abamateriais.Clicar Na Aba Materiais

Então devo visualizar a tela: Autorização de Materiais (Atualização)
  resource_frmMateriaisAutorizados.Acessar Tela Autorização de Materiais (Atualização)
