*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrselecaocolbaixahistbeneficios.robot
Resource        ../../../../resource/app/resource_frmbaixacoletivahistbeneficios.robot
Resource        ../../../../resource/app/resource_cnshistoricobeneficio.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Histórico Benefício (Consulta)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Benefício | Histórico
  Ao visualizar a tela: Baixa Coletiva de Históricos
  Então devo selecionar um item no campo: Empresa
  E selecionar um item no campo: Benefício
  E inserir um data no campo: Data Exclusão
  E clicar no botão: OK
  Então devo visualizar a tela: Retirada Coletiva de Benefícios
  Ao clicar no botão: Pesquisar
  Então devo visualizar a tela: Histórico Benefício (Consulta)

*** Keywords ***
Dado que eu acesse o menu: Registro | Benefício | Histórico
  resource_mnu.Clicar No Menu Registro | Benefício | Histórico

Ao visualizar a tela: Baixa Coletiva de Históricos
  resource_ctrselecaocolbaixahistbeneficios.Acessar Tela Baixa Coletiva de Históricos

Então devo selecionar um item no campo: Empresa
  resource_ctrselecaocolbaixahistbeneficios.Inserir Empresa

E selecionar um item no campo: Benefício
  resource_ctrselecaocolbaixahistbeneficios.Inserir Benefício

E inserir um data no campo: Data Exclusão
  resource_ctrselecaocolbaixahistbeneficios.Inserir Data Exclusão

E clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então devo visualizar a tela: Retirada Coletiva de Benefícios
  resource_frmbaixacoletivahistbeneficios.Acessar Tela Retirada Coletiva de Benefícios

Ao clicar no botão: Pesquisar
  resource_btn.Clicar No Botão Pesquisar

Então devo visualizar a tela: Histórico Benefício (Consulta)
  resource_cnshistoricobeneficio.Acessar Tela Histórico Benefício (Consulta)
