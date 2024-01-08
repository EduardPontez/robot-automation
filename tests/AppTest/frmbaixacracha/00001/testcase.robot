*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_consbaixacracha.robot
Resource        ../../../../resource/app/resource_frmbaixacracha.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Baixa de Crachá Titular/Provisório (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  Ao visualizar a tela: Consulta para Realização das Baixas de Crachá Titular/Provisório
  E clicar no número de crachá desejado na coluna "Crachá"
  Então devo visualizar a tela: Baixa de Crachá Titular/Provisório (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Histórico | Baixa de Crachá
  resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

Ao visualizar a tela: Consulta para Realização das Baixas de Crachá Titular/Provisório
  resource_consbaixacracha.Acessar Tela Consulta para Realização das Baixas de Crachá Titular/Provisório

E clicar no número de crachá desejado na coluna "Crachá"
  resource_consbaixacracha.Selecionar Crachá

Então devo visualizar a tela: Baixa de Crachá Titular/Provisório (Inclusão)
  resource_frmbaixacracha.Acessar Tela Baixa de Crachá Titular/Provisório (Inclusão)
