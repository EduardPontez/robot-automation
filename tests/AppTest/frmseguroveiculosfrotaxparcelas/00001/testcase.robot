*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmseguroveiculo.robot
Resource        ../../../../resource/app/resource_frmseguroveiculosfrotaxparcelas.robot
Resource        ../../../../resource/app/resource_abasegurocadastro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Seguros de Veículos - Parcelas
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Seguros | Cadastro
  Quando eu visualizar a tela: Seguros de Veículos - Atualização
  E clicar na aba: Parcelas
  Então devo visualizar a tela: Seguros de Veículos - Parcelas

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Seguros | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Seguros | Cadastro

Quando eu visualizar a tela: Seguros de Veículos - Atualização
  resource_frmseguroveiculo.Acessar Tela Seguros de Veículos - Atualização

E clicar na aba: Parcelas
  resource_abasegurocadastro.Clicar Na Aba Parcelas

Então devo visualizar a tela: Seguros de Veículos - Parcelas
  resource_frmseguroveiculosfrotaxparcelas.Acessar Tela Seguros de Veículos - Parcelas
