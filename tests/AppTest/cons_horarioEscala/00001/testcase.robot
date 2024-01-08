*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abaescala.robot
Resource        ../../../../resource/app/resource_frmescalahorarios.robot
Resource        ../../../../resource/app/resource_frmescala.robot
Resource        ../../../../resource/app/resource_cons_horarioEscala.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.

*** Test Cases ***
Caso de Teste: Acessar Tela Consulta Horário Escala (Busca Externa) através da tela Relacionamento Horários X Escala (Inclusão)
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Estrutura | Empresa | Escala | Cadastro de Escala
  Quando eu visualizar a tela: Cadastro de Escala (Atualização)
  E clicar na aba Horários
  E eu visualizar a tela: Relacionamento Horários X Escala (Atualização)
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Relacionamento Horários X Escala (Inclusão)
  Ao clicar no botão: Buscar Dados Externos para Horário
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Horário Escala (Busca Externa)


*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Escala | Cadastro de Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

Quando eu visualizar a tela: Cadastro de Escala (Atualização)
  resource_frmescala.Acessar Tela Cadastro de Escala (Atualização)

E clicar na aba Horários
  resource_abaescala.Clicar Na Aba Horários

E eu visualizar a tela: Relacionamento Horários X Escala (Atualização)
  resource_frmescalahorarios.Acessar Tela Relacionamento Horários X Escala (Atualização)

E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Relacionamento Horários X Escala (Inclusão)
  resource_frmescalahorarios.Acessar Tela Relacionamento Horários X Escala (Inclusão)

Ao clicar no botão: Buscar Dados Externos para Horário
  resource_frmescalahorarios.Clicar No Botão Buscar Dados Externos Para Horário

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Horário Escala (Busca Externa)
  resource_cons_horarioEscala.Acessar Tela Consulta Horário Escala (Busca Externa)
