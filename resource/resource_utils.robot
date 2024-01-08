*** Settings ***
Library  SeleniumLibrary
Library  ../superutil/recorder/video_maker.py
Library  ../superutil/recorder/audio_player.py
Library  ../superutil/opencv/tools.py
Library  ../superutil/Custom.py
Library  ../api/audit/client/send_data.py

*** Keywords ***

Mudar para Janela de Nível 1

  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[1]
  Maximize Browser Window

Fechar Janela Atual
    Close Window
    ${HANDLES}     Get Window Handles
    Switch Window  ${HANDLES}[0]

Capturar Screenshot Da Aplicação Como "${ARQUIVO}"
  
  IF  '${REQ}' == 'FALSE'
    ${NOVO_ARQUIVO}  Run Keyword  Remover Caracteres Especiais  ${ARQUIVO}
    ${APLICACAO}     Run Keyword  Obter Nome da aplicacao  ${NOVO_ARQUIVO}

    ${PATH_IMG}  Set Variable  ./results/media/${APLICACAO}/${LANGUAGE}/DOC/${BROWSER}
    ${PATH_FINAL}    Set Variable   ${PATH_IMG}/${NOVO_ARQUIVO}
    
    Set Screenshot Directory    ${PATH_IMG}
    Capture Page Screenshot  ${NOVO_ARQUIVO}

    Run Keyword  Tratar Imagem   ${PATH_FINAL}  ${LANGUAGE}
  END

Mudar Frame Aplicação "${FRAME}"

  IF  '${FRAME}' == 'mnu_iframe'
      Unselect Frame
  END

  ${STATUS}  Run Keyword And Return Status  Element Should Be Visible  ${FRAME}
  #${STATUS}  Run Keyword And Return Status  Wait Until Element Is Visible  ${FRAME}

  IF  '${STATUS}' == 'True'
    Wait Until Element Is Visible    ${FRAME}
    Select Frame  ${FRAME}
  END

Iniciar Captura De Gravação de vídeo
  #Press Keys  None  F11
  Sleep  2s
  Iniciar Gravação de Vídeo   ${REQ}
  Pronunciar Audio  ${LANGUAGE}  greetings

Encerrar Captura De Gravação de vídeo
  Pronunciar Audio  ${LANGUAGE}  farewell
  Encerrar Gravação de Vídeo  ${REQ}
Enviar Resultado
  [Arguments]     ${SOURCE1}   ${SOURCE2}   ${SOURCE3}

  Run Keyword  Publicar Resultado   ${SOURCE1}  ${SOURCE2}  ${SOURCE3}  ${OUTPUT DIR}  ${USERNAME}  ${SERVER}  ${BROWSER}  ${LANGUAGE}  ${MODE}
