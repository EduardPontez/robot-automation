*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_ctrMovimentacao.robot
Resource        ../../../../resource/app/resource_cnsMovimentacao.robot
Resource        ../../../../resource/app/resource_frmMovimentacao.robot
Resource        ../../../../resource/app/resource_cnsMateriais_cap.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Consulta de Materiais (Busca Externa) através da tela Cadastro de Movimentações
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Entrada | Material | Movimentação
  Ao visualizar a tela: Cadastro de Movimentações
  E selecionar a opção "C - Colaborador" no campo "Tipo de Pessoa"
  E então inserir o código do colaborador desejado no campo "Código do Colaborador"
  E então clicar no botão: OK
  Então eu devo visualizar a tela: Consulta de Movimentações
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Cadastro de Movimentações
  Ao clicar no botão: Buscar Dados Externos para Material
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Materiais (Busca Externa)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Material | Movimentação
  resource_mnu.Clicar No Menu Entrada | Material | Movimentação

Ao visualizar a tela: Cadastro de Movimentações
  resource_ctrMovimentacao.Acessar Tela Cadastro de Movimentações

E selecionar a opção "C - Colaborador" no campo "Tipo de Pessoa"
  resource_ctrMovimentacao.Inserir Tipo de Pessoa

E então inserir o código do colaborador desejado no campo "Código do Colaborador"
  resource_ctrMovimentacao.Inserir Código do Colaborador

E então clicar no botão: OK
  resource_btn.Clicar No Botão OK

Então eu devo visualizar a tela: Consulta de Movimentações
  resource_cnsMovimentacao.Acessar Tela Consulta de Movimentações

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Cadastro de Movimentações
  resource_frmMovimentacao.Acessar Tela Cadastro de Movimentações

Ao clicar no botão: Buscar Dados Externos para Material
  resource_frmMovimentacao.Clicar No Botão Buscar Dados Externos Para Material

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta de Materiais (Busca Externa)
  resource_cnsMateriais_cap.Acessar Tela Consulta de Materiais
