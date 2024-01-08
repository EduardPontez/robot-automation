*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmHistoricoEPIColaborador.robot
Resource        ../../../../resource/app/resource_cnsHistoricoEPIColaborador.robot
Resource        ../../../../resource/app/resource_pdfHistoricoEPIColaborador.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${OBJETIVO}   Informe a finalidade para qual o testcase foi construído.


*** Test Cases ***

Testcase: Acessar Tela Comprovante de Entrega de EPI
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador
  Quando eu visualizar a tela: Histórico de EPI por Colaborador - Filtro
  E clicar no botão: Pesquisar registros
  E então clicar no botão: Editar o Registro
  Então devo visualizar a tela: Cadastro Histórico de EPI por Colaborador
  Ao clicar no botão: Comprovante
  Então devo visualizar a tela: Comprovante de Entrega de EPI

*** Keywords ***
Dado que eu acesse o menu: Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador
  resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

Quando eu visualizar a tela: Histórico de EPI por Colaborador - Filtro
  resource_cnsHistoricoEPIColaborador.Acessar Tela Histórico de EPI por Colaborador - Filtro

E clicar no botão: Pesquisar registros
  resource_btn.Clicar No Botão Pesquisar Registros(Inferior)

E então clicar no botão: Editar o Registro
  resource_btn.Clicar No Botão Editar o Registro

Então devo visualizar a tela: Cadastro Histórico de EPI por Colaborador
  resource_frmHistoricoEPIColaborador.Acessar Tela Cadastro Histórico de EPI por Colaborador

Ao clicar no botão: Comprovante
  resource_btn.Clicar No Botão Comprovante

Então devo visualizar a tela: Comprovante de Entrega de EPI
  resource_pdfHistoricoEPIColaborador.Acessar Tela Comprovante de Entrega de EPI
