*** Settings ***
Library  SeleniumLibrary
Library  ../../superutil/recorder/audio_player.py
Library  ../../superutil/Custom.py

*** Variables ***
${MNU_OBJ}     Mnu
${MNU_TIMER}   0.0s


*** Keywords ***

Clicar No Menu Estrutura | Empresa | Organograma

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Organograma

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 
  

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element     ${MENU_3}
  Click Element  ${MENU_3}  #action_chain=True


Clicar No Menu Estrutura | Empresa | Cadastro de Empresa

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Cadastro de Empresa

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Empresa | Cargo

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Cargo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Escala
  ${NOME_4}  Set Variable  Cadastro de Escala

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element     ${MENU_1}
  Click Element  ${MENU_1}
  

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Escala
  ${NOME_4}  Set Variable  Horário de Escala

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}



Clicar No Menu Estrutura | Empresa | Centro de Custo

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Centro de Custo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}



Clicar No Menu Estrutura | Empresa | Filial

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Filial

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Empresa | Formulário de Cadastro de Tipo de Usuário

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Formulário de Cadastro de Tipo de Usuário

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Empresa | Area de Risco | Cadastro

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Area de Risco
  ${NOME_4}  Set Variable  Cadastro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(),'${NOME_4}')])[5]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | Area de Risco | Consulta

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Area de Risco
  ${NOME_4}  Set Variable  Consulta

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | Area de Risco | Codin

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Area de Risco
  ${NOME_4}  Set Variable  Codin

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | Area de Risco | Colaborador

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Area de Risco
  ${NOME_4}  Set Variable  Colaborador

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | Area de Risco | Controle

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Area de Risco
  ${NOME_4}  Set Variable  Controle

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Tipos de EPI

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Cadastro de Tipos de EPI

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Cadastro de EPI

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Local

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Cadastro de EPI por Local

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo e Cargo

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Cadastro de EPI por Centro de Custo e Cargo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Centro de Custo

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Cadastro de EPI por Centro de Custo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de EPI por Cargo

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Cadastro de EPI por Cargo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Cadastro de Termo de Compromisso para Entrega de EPI

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Cadastro de Termo de Compromisso para Entrega de EPI

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Grupo de Email - EPI

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Grupo de Email - EPI

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Histórico de EPI por Colaborador

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Colaborador

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Relatórios
  ${NOME_5}  Set Variable  Histórico de EPI por Colaborador

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  ${MENU_5}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_5} 

  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}


Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Relatórios | Histórico de EPI por Visitante

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  EPI - Equipamento de proteção individual
  ${NOME_4}  Set Variable  Relatórios
  ${NOME_5}  Set Variable  Histórico de EPI por Visitante

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]
  ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_5} 

  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}


Clicar No Menu Estrutura | Empresa | Ambiente

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Ambiente

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Empresa | Refeitório

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Refeitório

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Empresa | Estacionamento | Cadastro de Estacionamentos

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Estacionamento
  ${NOME_4}  Set Variable  Cadastro de Estacionamentos

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Estrutura | Empresa | Cadastro de Tipo de Contrato

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa
  ${NOME_3}  Set Variable  Cadastro de Tipo de Contrato

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa Terceira
  ${NOME_3}  Set Variable  Cadastro de Empresa Terceira

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Empresa Terceira | Contratos

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Empresa Terceira
  ${NOME_3}  Set Variable  Contratos

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Situação Trabalhista

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Situação Trabalhista

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Estrutura | Feriado

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Feriado

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Estrutura | Planta

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Planta

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Estrutura | Portaria e Recepção

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Portaria e Recepção

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Estrutura | Integração TOTVS

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Integração TOTVS

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Torres

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Configuração Elevadores
  ${NOME_3}  Set Variable  Cadastro de Torres

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Andares

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Configuração Elevadores
  ${NOME_3}  Set Variable  Cadastro de Andares

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Estrutura | Configuração Elevadores | Cadastro de Elevadores

  ${NOME_1}  Set Variable  Estrutura
  ${NOME_2}  Set Variable  Configuração Elevadores
  ${NOME_3}  Set Variable  Cadastro de Elevadores

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Gateway

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Gateway

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Dispositivo | Codin | Cadastro de Codin

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Cadastro de Codin

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Codin | Grupo de Codin

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Grupo de Codin

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Codin | Função

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Função

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Grupo de REP

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Grupo de REP
  ${NOME_4}  Set Variable  Cadastro de Grupo de REP

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Dispositivo | Codin | Grupo de REP | Cadastro de Locais de Prestação de Serviços

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Grupo de REP
  ${NOME_4}  Set Variable  Cadastro de Locais de Prestação de Serviços

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Dispositivo | Codin | Grupo de REP | Atualizar Grupo de REP Coletivo

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Grupo de REP
  ${NOME_4}  Set Variable  Atualizar Grupo de REP Coletivo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Dispositivo | Codin | Grupo de REP | AFD

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Grupo de REP
  ${NOME_4}  Set Variable  AFD

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Dispositivo | Codin | Histórico de Codin por Filial

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Histórico de Codin por Filial

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Codin | Comandos para Equipamentos

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Codin
  ${NOME_3}  Set Variable  Comandos para Equipamentos

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Grupo de Acessos

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Grupo de Acessos

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Dispositivo | Tipo de Acesso

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Tipo de Acesso

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Dispositivo | Alarme | Sinal de Alarme

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Alarme
  ${NOME_3}  Set Variable  Sinal de Alarme

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Alarme | Procedimento de Alarme

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Alarme
  ${NOME_3}  Set Variable  Procedimento de Alarme

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Alarme | Lote de Comando

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Alarme
  ${NOME_3}  Set Variable  Lote de Comando

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Alarme | Reação de Alarme

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Alarme
  ${NOME_3}  Set Variable  Reação de Alarme

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Alarme | Reação de Acesso

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Alarme
  ${NOME_3}  Set Variable  Reação de Acesso

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Alarme | Notificações

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Alarme
  ${NOME_3}  Set Variable  Notificações

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | CFTV

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  CFTV

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Dispositivo | Grupo de Cameras | Cadastros de Grupos

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Grupo de Cameras
  ${NOME_3}  Set Variable  Cadastros de Grupos

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Cameras por Grupo

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Grupo de Cameras
  ${NOME_3}  Set Variable  Cadastro de Cameras por Grupo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Dispositivo | Grupo de Cameras | Cadastro de Tipos de Alarmes de Trânsito

  ${NOME_1}  Set Variable  Dispositivo
  ${NOME_2}  Set Variable  Grupo de Cameras
  ${NOME_3}  Set Variable  Cadastro de Tipos de Alarmes de Trânsito

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Colaborador | Empregado

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Empregado

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Colaborador | Terceiro | Cadastro de Terceiro

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Terceiro
  ${NOME_4}  Set Variable  Cadastro de Terceiro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Terceiro | Tipo de Terceiro

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Terceiro
  ${NOME_4}  Set Variable  Tipo de Terceiro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Parceiro

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Parceiro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Colaborador | Histórico | Crachá

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Crachá

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Histórico | Afastamento

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Afastamento

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Histórico | Escala

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Escala

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Histórico | Baixa de Crachá

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Baixa de Crachá

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Histórico | Cargo

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Cargo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Histórico | Local

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Local

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Histórico | Filial

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Filial

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Histórico | Centro de Custo

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Centro de Custo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Histórico | Contrato

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Histórico
  ${NOME_4}  Set Variable  Contrato

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Programação | Troca de Escala

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Programação
  ${NOME_4}  Set Variable  Troca de Escala

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Programação | Troca de Grupo de Acesso

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Programação
  ${NOME_4}  Set Variable  Troca de Grupo de Acesso

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Programação | Troca de Horário

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Programação
  ${NOME_4}  Set Variable  Troca de Horário

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Programação | Troca de Ponte

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Programação
  ${NOME_4}  Set Variable  Troca de Ponte

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Identificação | Colaborador | Grupo de Acesso Coletivo

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Grupo de Acesso Coletivo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Colaborador | Lote de Crachá

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Lote de Crachá

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Colaborador | Senha

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Senha

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Colaborador | Matriz de Acesso

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Matriz de Acesso

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Colaborador | Cadastro de Senha de Acesso Temporária

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Colaborador
  ${NOME_3}  Set Variable  Cadastro de Senha de Acesso Temporária

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Visitante | Cadastro de Visitante

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Cadastro de Visitante

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Identificação')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Visitante')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Cadastro de Visitante')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Visitante | Tipo de Visita

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Tipo de Visita

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Visitante | Agendamento Visitante

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Agendamento Visitante

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Visitante | Grupo de Visitante

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Grupo de Visitante

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Visitante | Agendamento de Grupo

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Agendamento de Grupo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Visitante | Solicitar Aprovação de Visita

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Solicitar Aprovação de Visita

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Visitante | Aprovar Solicitação de Visita

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Aprovar Solicitação de Visita

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Candidato | Cadastro de Candidato

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Candidato
  ${NOME_3}  Set Variable  Cadastro de Candidato

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Candidato | Agendamento

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Candidato
  ${NOME_3}  Set Variable  Agendamento

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Candidato | Autorização Acesso

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Candidato
  ${NOME_3}  Set Variable  Autorização Acesso

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Pessoa Não Grata | Cadastro de Pessoa Não Grata

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Pessoa Não Grata
  ${NOME_3}  Set Variable  Cadastro de Pessoa Não Grata

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Identificação | Pessoa Não Grata | Motivo

  ${NOME_1}  Set Variable  Identificação
  ${NOME_2}  Set Variable  Pessoa Não Grata
  ${NOME_3}  Set Variable  Motivo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Perfil de Acesso

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Perfil de Acesso

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Registro | Ocorrência | Cadastro

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Ocorrência
  ${NOME_3}  Set Variable  Cadastro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[29]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Ocorrência | Tipos de Ocorrência

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Ocorrência
  ${NOME_3}  Set Variable  Tipos de Ocorrência

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachá

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crachá
  ${NOME_3}  Set Variable  Pré-Cadastro de Crachá

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Crachá | Pré-Cadastro de Crachás Por Faixa

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crachá
  ${NOME_3}  Set Variable  Pré-Cadastro de Crachás Por Faixa

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Crachá | Ler Smart Card

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crachá
  ${NOME_3}  Set Variable  Ler Smart Card

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Crachá | Mestre e Acesso Geral

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crachá
  ${NOME_3}  Set Variable  Mestre e Acesso Geral

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Crachá | Troca de Crachá

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crachá
  ${NOME_3}  Set Variable  Troca de Crachá

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Crachá | Gravação Por faixa

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crachá
  ${NOME_3}  Set Variable  Gravação Por faixa

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[4]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Bloqueio e Desbloqueio | Motivo de Bloqueio

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
  ${NOME_3}  Set Variable  Motivo de Bloqueio

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Bloqueio

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
  ${NOME_3}  Set Variable  Colaborador
  ${NOME_4}  Set Variable  Bloqueio

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Registro | Bloqueio e Desbloqueio | Colaborador | Desbloqueio

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
  ${NOME_3}  Set Variable  Colaborador
  ${NOME_4}  Set Variable  Desbloqueio

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Bloqueio

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
  ${NOME_3}  Set Variable  Crachá
  ${NOME_4}  Set Variable  Bloqueio

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[8]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Registro | Bloqueio e Desbloqueio | Crachá | Desbloqueio

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Bloqueio e Desbloqueio
  ${NOME_3}  Set Variable  Crachá
  ${NOME_4}  Set Variable  Desbloqueio

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[8]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Registro | Liberação Faixa Horária | Individual

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Liberação Faixa Horária
  ${NOME_3}  Set Variable  Individual

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Liberação Faixa Horária | Coletiva

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Liberação Faixa Horária
  ${NOME_3}  Set Variable  Coletiva

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Envio de Mensagem | Individual

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Envio de Mensagem
  ${NOME_3}  Set Variable  Individual

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Envio de Mensagem | Coletiva

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Envio de Mensagem
  ${NOME_3}  Set Variable  Coletiva

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Envio de Mensagem | Mensagens Pré-definidas

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Envio de Mensagem
  ${NOME_3}  Set Variable  Mensagens Pré-definidas

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Crédito de Acesso | Individual | Empregado/Terceiro/Parceiro

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crédito de Acesso
  ${NOME_3}  Set Variable  Individual
  ${NOME_4}  Set Variable  Empregado/Terceiro/Parceiro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${MNU_OBJ}  Empregado_Terceiro_Parceiro

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Registro | Crédito de Acesso | Individual | Visitante

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crédito de Acesso
  ${NOME_3}  Set Variable  Individual
  ${NOME_4}  Set Variable  Visitante

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]
  ${MENU_4}  Set Variable  xpath=//div[34]/div[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Registro | Crédito de Acesso | Coletivo

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Crédito de Acesso
  ${NOME_3}  Set Variable  Coletivo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Benefício | Cadastro de Benefício

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Benefício
  ${NOME_3}  Set Variable  Cadastro de Benefício

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Benefício | Atribuição

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Benefício
  ${NOME_3}  Set Variable  Atribuição

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Benefício | Consumo

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Benefício
  ${NOME_3}  Set Variable  Consumo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Benefício | Histórico

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Benefício
  ${NOME_3}  Set Variable  Histórico

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[6]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Benefício | Autorização de Devedores

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Benefício
  ${NOME_3}  Set Variable  Autorização de Devedores

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Área Restrita | Autorizar Acesso

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Área Restrita
  ${NOME_3}  Set Variable  Autorizar Acesso

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Área Restrita | Consultar Acesso

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Área Restrita
  ${NOME_3}  Set Variable  Consultar Acesso

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Chave | Cadastro de Chave

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Chave
  ${NOME_3}  Set Variable  Cadastro de Chave

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Chave | Movimentação de Chave

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Chave
  ${NOME_3}  Set Variable  Movimentação de Chave

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Chave | Relatório de Cadastro de Chave

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Chave
  ${NOME_3}  Set Variable  Relatório de Cadastro de Chave

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Chave | Relatório de Movimentação de Chave

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Chave
  ${NOME_3}  Set Variable  Relatório de Movimentação de Chave

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Guarda-Volumes | Cadastro de Guarda-Volumes

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Guarda-Volumes
  ${NOME_3}  Set Variable  Cadastro de Guarda-Volumes

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Guarda-Volumes | Movimentação de Guarda-Volumes

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Guarda-Volumes
  ${NOME_3}  Set Variable  Movimentação de Guarda-Volumes

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Guarda-Volumes | Relatório Guarda-Volumes

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Guarda-Volumes
  ${NOME_3}  Set Variable  Relatório Guarda-Volumes

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Registro | Guarda-Volumes | Relatório de Movimentação de Guarda-Volumes

  ${NOME_1}  Set Variable  Registro
  ${NOME_2}  Set Variable  Guarda-Volumes
  ${NOME_3}  Set Variable  Relatório de Movimentação de Guarda-Volumes

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}



Clicar No Menu Entrada | Visitante | Entrada de Visitante

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Entrada de Visitante

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[7]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Visitante | Saída de Visitante

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Saída de Visitante

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[7]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Visitante | Entrada de Grupo

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Entrada de Grupo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[7]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Visitante | Entrada de Visitantes com Captura de Fotos

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Entrada de Visitantes com Captura de Fotos

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[7]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Visitante | Consultar Ticket WSG

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Visitante
  ${NOME_3}  Set Variable  Consultar Ticket WSG

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[7]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Candidato | Entrada

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Candidato
  ${NOME_3}  Set Variable  Entrada

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Candidato | Saída

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Candidato
  ${NOME_3}  Set Variable  Saída

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Provisório | Colaborador

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Provisório
  ${NOME_3}  Set Variable  Colaborador

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[7]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Provisório | Baixa Provisório

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Provisório
  ${NOME_3}  Set Variable  Baixa Provisório

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Autorização | Agendamento

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Autorização
  ${NOME_3}  Set Variable  Agendamento

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[4]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Autorização | Entrada

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Autorização
  ${NOME_3}  Set Variable  Entrada

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[6]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Autorização | Baixa de Autorização

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Autorização
  ${NOME_3}  Set Variable  Baixa de Autorização

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Veículo | Cadastro

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Veículo
  ${NOME_3}  Set Variable  Cadastro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[37]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Veículo | Entrada

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Veículo
  ${NOME_3}  Set Variable  Entrada

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[7]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Veículo | Saída

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Veículo
  ${NOME_3}  Set Variable  Saída

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Material | Cadastro

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Material
  ${NOME_3}  Set Variable  Cadastro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[38]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Material | Material por Pessoa

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Material
  ${NOME_3}  Set Variable  Material por Pessoa

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Material | Solicitação de Saída

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Material
  ${NOME_3}  Set Variable  Solicitação de Saída

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Material | Autorização

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Material
  ${NOME_3}  Set Variable  Autorização

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Material | Movimentação

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Material
  ${NOME_3}  Set Variable  Movimentação

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Entrada | Veículo de Colaborador - Cadastro

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Veículo de Colaborador - Cadastro

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Entrada | Marcação de Acesso Manual

  ${NOME_1}  Set Variable  Entrada
  ${NOME_2}  Set Variable  Marcação de Acesso Manual

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}



Clicar No Menu Controle | Comando | Acesso

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Comando
  ${NOME_3}  Set Variable  Acesso

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[15]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Comando | Emergência

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Comando
  ${NOME_3}  Set Variable  Emergência

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Comando | Lote

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Comando
  ${NOME_3}  Set Variable  Lote

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Comando | Envio Individual de Comandos Player

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Comando
  ${NOME_3}  Set Variable  Envio Individual de Comandos Player

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Comando | Reprocessamento de Marcação

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Comando
  ${NOME_3}  Set Variable  Reprocessamento de Marcação

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Comando | Reprocessamento de Marcações Orfãs REP

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Comando
  ${NOME_3}  Set Variable  Reprocessamento de Marcações Orfãs REP

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Gráfico

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Gráfico

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Controle')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Monitoramento')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Gráfico')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Acesso - Grid

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Acesso - Grid

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Alarme - Grid

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Alarme - Grid

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Monitoramento LOG Gerenciador

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Monitoramento LOG Gerenciador

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Dispositivos Grid

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Dispositivos Grid

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Monitoramento Gráfico de Equipamentos

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Monitoramento de Acesso Câmeras

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Monitoramento de Acesso Câmeras

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | LOG SecurOS

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  LOG SecurOS

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Entrada de Agencias

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Entrada de Agencias

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Monitoramento de Câmeras de Trânsito

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Monitoramento de Câmeras de Trânsito

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Monitoramento | Monitoramento de Status de Cameras

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Monitoramento
  ${NOME_3}  Set Variable  Monitoramento de Status de Cameras

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Controle | Ativar Emergência

  ${NOME_1}  Set Variable  Controle
  ${NOME_2}  Set Variable  Ativar Emergência

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Controle')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Ativar Emergência')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Geração de Lista

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Geração de Lista

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Layout de Arquivo

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Layout de Arquivo

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Layout de Relatório

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Layout de Relatório

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Importação

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Importação

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Exportação

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Exportação

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Relatório

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Relatório

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[8]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Email

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Email

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Online

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Online

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Processo | Foto | Visitante

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Foto
  ${NOME_3}  Set Variable  Visitante

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[11]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Processo | Foto | Colaborador

  ${NOME_1}  Set Variable  Processo
  ${NOME_2}  Set Variable  Foto
  ${NOME_3}  Set Variable  Colaborador

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[8]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Usuários | Usuário Aprovador de Solitação de Visita

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Usuários
  ${NOME_3}  Set Variable  Usuário Aprovador de Solitação de Visita

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Usuários | Grupo de Usuário

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Usuários
  ${NOME_3}  Set Variable  Grupo de Usuário

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[1]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Usuários | Usuário

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Usuários
  ${NOME_3}  Set Variable  Usuário

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Usuários | Histórico de Perfil

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Usuários
  ${NOME_3}  Set Variable  Histórico de Perfil

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Usuários | Diretiva de Segurança

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Usuários
  ${NOME_3}  Set Variable  Diretiva de Segurança

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Usuários | Ativação de Usuário

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Usuários
  ${NOME_3}  Set Variable  Ativação de Usuário

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Usuários | Usuário x Portaria

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Usuários
  ${NOME_3}  Set Variable  Usuário x Portaria

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), 'Configurações')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Usuários')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), 'Usuário x Portaria')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Usuários | Alterar senha

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Usuários
  ${NOME_3}  Set Variable  Alterar senha

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Crachá

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Crachá

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[9]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Filtro de Abrangência

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Filtro de Abrangência

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Email

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Email

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Faixa de Acesso de Refeitório

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Faixa de Acesso de Refeitório

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Pessoa Não Grata

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Pessoa Não Grata

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Câmera

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Câmera

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[3]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Log de Aplicação | Cadastro

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Log de Aplicação
  ${NOME_3}  Set Variable  Cadastro

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[41]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Log de Aplicação | Log Eventos Suriplayer

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Log de Aplicação
  ${NOME_3}  Set Variable  Log Eventos Suriplayer

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Log de Aplicação | Consulta

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Log de Aplicação
  ${NOME_3}  Set Variable  Consulta

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[4]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Idioma

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Idioma

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Hora Extra

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Hora Extra

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Configurações Gerais | Entrada de Visitantes

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Configurações Gerais
  ${NOME_3}  Set Variable  Entrada de Visitantes

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Configurações Gerais | Matrícula Automática

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Configurações Gerais
  ${NOME_3}  Set Variable  Matrícula Automática

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Configurações Gerais | Configuração de LDAP

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Configurações Gerais
  ${NOME_3}  Set Variable  Configuração de LDAP

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Configurações Gerais | Configurações Crachá

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Configurações Gerais
  ${NOME_3}  Set Variable  Configurações Crachá

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Configurações Gerais | Configurações Gerais Do Sistema

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Configurações Gerais
  ${NOME_3}  Set Variable  Configurações Gerais Do Sistema

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Configurações Gerais | Tipo de Biometria por Grupo de Usuário

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Configurações Gerais
  ${NOME_3}  Set Variable  Tipo de Biometria por Grupo de Usuário

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Configurações Gerais | Integração TOTVS

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Configurações Gerais
  ${NOME_3}  Set Variable  Integração TOTVS

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Configurações Gerais | Configurações de EPI

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Configurações Gerais
  ${NOME_3}  Set Variable  Configurações de EPI

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Configurações | Cadastro de Tipo de Refeição

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Cadastro de Tipo de Refeição

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Upload de Firmware

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Upload de Firmware

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Cadastro de Grupos de Abrangência

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Cadastro de Grupos de Abrangência

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | Campos Customizáveis

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  Campos Customizáveis

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | LGPD - Configurações de Dados Sensíveis

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  LGPD - Configurações de Dados Sensíveis

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Configurações | LGPD

  ${NOME_1}  Set Variable  Configurações
  ${NOME_2}  Set Variable  LGPD

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Relatórios | Importar

  ${NOME_1}  Set Variable  Relatórios
  ${NOME_2}  Set Variable  Importar

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Relatórios | Ativar

  ${NOME_1}  Set Variable  Relatórios
  ${NOME_2}  Set Variable  Ativar

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

Clicar No Menu Relatórios | Grupo de Relatório

  ${NOME_1}  Set Variable  Relatórios
  ${NOME_2}  Set Variable  Grupo de Relatório

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Relatórios | Consulta Impressa

  ${NOME_1}  Set Variable  Relatórios
  ${NOME_2}  Set Variable  Consulta Impressa

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Relatórios | Meu Acesso

  ${NOME_1}  Set Variable  Relatórios
  ${NOME_2}  Set Variable  Meu Acesso

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  0.0s

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Veículos | Prontuário de Veículos

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Prontuário de Veículos

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}


Clicar No Menu Veículos | Cadastro | Veículo

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Cadastro
  ${NOME_3}  Set Variable  Veículo

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[42]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Veículos | Cadastro | Marcas

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Cadastro
  ${NOME_3}  Set Variable  Marcas

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[42]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Veículos | Cadastro | Modelos

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Cadastro
  ${NOME_3}  Set Variable  Modelos

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[42]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Veículos | Cadastro | Acessórios

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Cadastro
  ${NOME_3}  Set Variable  Acessórios

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[42]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Veículos | Cadastro | Situações

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Cadastro
  ${NOME_3}  Set Variable  Situações

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[42]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Veículos | Cadastro | Motivo de Uso

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Cadastro
  ${NOME_3}  Set Variable  Motivo de Uso

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[42]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}


Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Utilização Veículos
  ${NOME_4}  Set Variable  Agendamentos de Veículo - Frota

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Utilização Veículos | Aprovação de Agendamentos - Frota

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Utilização Veículos
  ${NOME_4}  Set Variable  Aprovação de Agendamentos - Frota

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Utilização Veículos | Entrega

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Utilização Veículos
  ${NOME_4}  Set Variable  Entrega

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Utilização Veículos | Devolução

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Utilização Veículos
  ${NOME_4}  Set Variable  Devolução

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Empresa | Condutores

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Empresa
  ${NOME_4}  Set Variable  Condutores

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Empresa | Veículos

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Empresa
  ${NOME_4}  Set Variable  Veículos

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[4]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Empresa | Históricos | Crachá Veículo

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Empresa
  ${NOME_4}  Set Variable  Históricos
  ${NOME_5}  Set Variable  Crachá Veículo

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_5} 

  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}


Clicar No Menu Veículos | Frota | Empresa | Históricos | Local Veículo

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Empresa
  ${NOME_4}  Set Variable  Históricos
  ${NOME_5}  Set Variable  Local Veículo

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_5} 

  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}


Clicar No Menu Veículos | Frota | Empresa | Históricos | Situação Veículo

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Empresa
  ${NOME_4}  Set Variable  Históricos
  ${NOME_5}  Set Variable  Situação Veículo

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')])[5]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_5} 

  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}


Clicar No Menu Veículos | Frota | Seguros | Cobertura

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Seguros
  ${NOME_4}  Set Variable  Cobertura

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Seguros | Corretores

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Seguros
  ${NOME_4}  Set Variable  Corretores

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Seguros | Cadastro

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Seguros
  ${NOME_4}  Set Variable  Cadastro

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[43]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Ocorrências | Sinistros

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Ocorrências
  ${NOME_4}  Set Variable  Sinistros

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Ocorrências | Reclamações

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Ocorrências
  ${NOME_4}  Set Variable  Reclamações

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Cadastro

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Ocorrências
  ${NOME_4}  Set Variable  Infrações
  ${NOME_5}  Set Variable  Cadastro

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  ${MENU_5}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')])[44]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_5} 

  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}


Clicar No Menu Veículos | Frota | Ocorrências | Infrações | Multas

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Ocorrências
  ${NOME_4}  Set Variable  Infrações
  ${NOME_5}  Set Variable  Multas

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')]
  ${MENU_5}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_5}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_5} 

  Wait Until Element is Visible  ${MENU_5}
  Highlight Element      ${MENU_5}
  Click Element  ${MENU_5}


Clicar No Menu Veículos | Frota | Consultas | Agendamento

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Consultas
  ${NOME_4}  Set Variable  Agendamento

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[7]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Frota | Consultas | Utilização

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Frota
  ${NOME_3}  Set Variable  Consultas
  ${NOME_4}  Set Variable  Utilização

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[1]
  ${MENU_3}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_3}')]
  ${MENU_4}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_4}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_3} 

  Wait Until Element is Visible  ${MENU_3}
  Highlight Element      ${MENU_3}
  Click Element  ${MENU_3}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_4} 

  Wait Until Element is Visible  ${MENU_4}
  Highlight Element      ${MENU_4}
  Click Element  ${MENU_4}


Clicar No Menu Veículos | Definições

  ${NOME_1}  Set Variable  Veículos
  ${NOME_2}  Set Variable  Definições

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

Clicar No Menu Ajuda | Conteúdo da Ajuda

  ${NOME_1}  Set Variable  Ajuda
  ${NOME_2}  Set Variable  Conteúdo da Ajuda

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

Clicar No Menu Ajuda | Sobre

  ${NOME_1}  Set Variable  Ajuda
  ${NOME_2}  Set Variable  Sobre

  ${MENU_1}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')]
  ${MENU_2}  Set Variable  xpath=//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}

Clicar No Menu Sair | Sair

  ${NOME_1}  Set Variable  Sair
  ${NOME_2}  Set Variable  Sair

  ${MENU_1}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_1}')])[1]
  ${MENU_2}  Set Variable  xpath=(//*[contains(@id, 'menu')][contains(text(), '${NOME_2}')])[2]

  
  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_1} 

  Wait Until Element is Visible  ${MENU_1}
  Highlight Element      ${MENU_1}
  Click Element  ${MENU_1}

  Sleep  ${MNU_TIMER}

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${MNU_OBJ}  ${NOME_2} 

  Wait Until Element is Visible  ${MENU_2}
  Highlight Element      ${MENU_2}
  Click Element  ${MENU_2}
