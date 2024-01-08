*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmContratos.robot
Resource        ../../../../resource/app/resource_cnsContratos.robot
Resource        ../../../../resource/app/resource_cnsLocaisPesquisa.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Consulta de Locais (Busca Externa) através da tela Contratos (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  Quando eu visualizar a tela: Consulta de Contratos
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Contratos (Inclusão)
  Ao selecionar uma opção no campo "Tabela Organograma"
  E clicar no botão: Buscar Dados Externos para Local
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Locais (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa Terceira | Contratos
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

Quando eu visualizar a tela: Consulta de Contratos
  resource_cnsContratos.Acessar Tela Consulta de Contratos

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Contratos (Inclusão)
  resource_frmContratos.Acessar Tela Contratos (Inclusão)

Ao selecionar uma opção no campo "Tabela Organograma"
  resource_cnsLocaisPesquisa.Selecionar label

E clicar no botão: Buscar Dados Externos para Local
  resource_frmContratos.Clicar No Botão Buscar Dados Externos Para Local

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Locais (Busca Externa)
  resource_cnsLocaisPesquisa.Acessar Tela Consulta de Locais (Busca Externa)
