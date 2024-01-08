*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_cnsAutorizarAcessoColaboradores.robot
Resource        ../../../../resource/app/resource_frmAutorizarAcessoColaboradores.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Áreas Restritas de Colaboradores (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  Quando eu visualizar a tela: Consulta Autorizar Acesso de Colaboradores
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Áreas Restritas de Colaboradores (Inclusão)

*** Keywords ***
Dado que eu acesse o menu: Registro | Área Restrita | Autorizar Acesso
  resource_mnu.Clicar No Menu Registro | Área Restrita | Autorizar Acesso

Quando eu visualizar a tela: Consulta Autorizar Acesso de Colaboradores
  resource_cnsAutorizarAcessoColaboradores.Acessar Tela Consulta Autorizar Acesso de Colaboradores

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Áreas Restritas de Colaboradores (Inclusão)
    resource_frmAutorizarAcessoColaboradores.Acessar Tela Áreas Restritas de Colaboradores (Inclusão)
