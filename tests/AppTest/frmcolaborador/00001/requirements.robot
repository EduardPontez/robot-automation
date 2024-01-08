*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/resource_requirements.robot
Resource        ../../../../resource/common/resource_mnu.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/app/resource_ctrConfiguracoesSuri.robot


*** Variables ***

${OBJETIVO}   Pré-requisito para iniciar teste sem nenhuma configuração do sistema ativada para a tela

*** Keywords ***

Executar Requisito
    
    IF  '${REQ}' == 'TRUE'
      ${status}  Run Keyword And Return Status  Requirements
      Verificar requisito    ${status}
    END

Requirements
    
    Desabilitar suricato CLient
    #Run Keyword  Desabilitar Outra coisa


Desabilitar suricato CLient
  resource_login.Acessar Suricato
  resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema
  resource_ctrConfiguracoesSuri.Acessar Tela Configurações Gerais Do Sistema
  resource_ctrConfiguracoesSuri.Preencher campo TCP "0"
  resource_btn.Clicar No Botão Alterar o Registro (Inferior)
  resource_login.Fechar navegador

Desabilitar Outra coisa
  resource_login.Acessar Suricato
  resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira
  resource_login.Fechar navegador
