*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frminfracoesfrota.robot
Resource        ../../../../resource/app/resource_frmocorrenciasinfracoes.robot
Resource        ../../../../resource/app/resource_abaInfracoesCadastro.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***

Testcase: Acessar Tela Multas (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Cadastro
  Quando eu visualizar a tela: Infrações (Atualização)
  E clicar na aba: Multas
  Então devo visualizar a tela: Multas (Atualização)
  Ao clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Multas (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Veículos | Frota | Ocorrências | Infrações | Cadastro
  resource_mnu.Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

Quando eu visualizar a tela: Infrações (Atualização)
  resource_frminfracoesfrota.Acessar Tela Infrações (Atualização)

E clicar na aba: Multas
  resource_abaInfracoesCadastro.Clicar Na Aba Multas

Então devo visualizar a tela: Multas (Atualização)
  resource_frmocorrenciasinfracoes.Acessar Tela Multas (Atualização)

Ao clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Multas (Inclusão)
  resource_frmocorrenciasinfracoes.Acessar Tela Multas (Inclusão)
