*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcrachaprovisoriocolaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Provisório de Colaboradores (Atualização)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  E preencher o campo Código do Colaborador
  E preencher o campo Crachá
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Provisório de Colaboradores (Atualização)

*** Keywords ***
Dado que eu acesse o menu: Entrada | Provisório | Colaborador
  resource_mnu.Clicar No Menu Entrada | Provisório | Colaborador

Ao visualizar a tela: Provisório de Colaboradores (Inclusão)
  resource_frmcrachaprovisoriocolaborador.Acessar Tela Provisório de Colaboradores (Inclusão)

E preencher o campo Código do Colaborador
  resource_frmcrachaprovisoriocolaborador.Preencher campo Código do Colaborador

E preencher o campo Crachá
  resource_frmcrachaprovisoriocolaborador.Preencher campo Crachá

E clicar no botão: Incluir o Registro
  resource_btn.Clicar no Botão Incluir o Registro

Então devo visualizar a tela: Provisório de Colaboradores (Atualização)
  resource_frmcrachaprovisoriocolaborador.Acessar Tela Provisório de Colaboradores (Atualização)
