*** Settings ***
Library  SeleniumLibrary
Library  ../../superutil/recorder/audio_player.py
Library  ../../superutil/Custom.py

*** Variables ***
${BTN_OBJ}  Btn

*** Keywords ***

Clicar No Botão Abrir Um Novo Registro

  ${NOME}  Set Variable  Abrir Um Novo Registro
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_b_new_top']|//*[@id='sc_b_new_t']|//*[@id='sc_btnNovo_top']|//*[@id='sc_btnNew_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Agenda

  ${NOME}  Set Variable  Agenda
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnagenda_bot']


  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Cadastro

  ${NOME}  Set Variable  Cadastro
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btn_inserecolaborar_top']


  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Agendamento

  ${NOME}  Set Variable  Agendamento
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnagendamento_bot']|//*[@id='sc_btn_Agendamento_top']|//*[@id='sc_btnNovoAgendado_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Editar o Registro

  ${NOME}  Set Variable  Editar o Registro
  ${ELEMENT}   Set Variable  xpath=(//*[@id='bedit'])[1]|//*[@id="apl_cnsimprensaautorizada#?#1"]/tbody/tr[2]/td[1]/font/span/img | //*[@id="bedit"]

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar no Botão Incluir o Registro

  ${NOME}  Set Variable  Incluir o Registro
  ${ELEMENT}   Set Variable  id=sc_b_ins_t

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Alterar o Registro

  ${NOME}  Set Variable  Alterar o Registro
  ${ELEMENT}   Set Variable  id=sc_b_upd_t

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Alterar o Registro (Inferior)

  ${NOME}  Set Variable  Alterar o Registro
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnSubmit_bot']|//*[@id='sc_btnsubmit_bot']|//*[@id='sc_btnSave_bot']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Apagar

  ${NOME}  Set Variable  Apagar
  ${ELEMENT}   Set Variable  id=sc_b_del_t

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Apagar (Inferior)

  ${NOME}  Set Variable  Apagar
  ${ELEMENT}   Set Variable  id=sc_b_del_b

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Pesquisar Registros

  ${NOME}  Set Variable  Pesquisar Registros
  ${ELEMENT}   Set Variable  xpath=//*[@id='pesq_top'] | //*[@id='Rpesq_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Nova Entrada

  ${NOME}  Set Variable  Nova Entrada
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnnovaentrada_bot']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Pesquisar Registros (Inferior)

  ${NOME}  Set Variable  Pesquisar Registros
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_b_pesq_bot']|//*[@id='sc_btnpesquisar_bot']|/html/body/form[3]/table/tbody/tr[4]/td/div/input[3]

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Pesquisar

  ${NOME}  Set Variable  Pesquisar
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnPesquisar_top']|//*[@id='sc_consulta_top']|//*[@id='sc_btnpesquisa_top']|//*[@id='sc_btnBrowser_top']|//*[@id='sc_btnpesquisar_top']|//*[@id='sc_btn_Consulta_top']|//*[@id='sc_btnPesquisa_top']|//*[@id='sc_btn_consulta_top']|//*[@id='sc_btn_pesquisa_top']|//*[@id='sc_btnpesquesquisar_top']|//*[@id='sc_btnconsulta_top']|//*[@id='sc_btn_consulta_bot']|//*[@id='sc_btnConsulta_top']|//img[@title='Pesquisa']


  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Voltar

  ${NOME}  Set Variable  Voltar
  ${ELEMENT}   Set Variable  id=sc_btnvoltar_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Voltar (Inferior)

  ${NOME}  Set Variable  Voltar
  ${ELEMENT}   Set Variable  id=sc_b_cancel_bot

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Retornar Ao Início

  ${NOME}  Set Variable  Retornar Ao Início
  ${ELEMENT}   Set Variable  id=first_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Retornar Um Registro

  ${NOME}  Set Variable  Retornar Um Registro
  ${ELEMENT}   Set Variable  id=back_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Avançar Para o Próximo Registro

  ${NOME}  Set Variable  Avançar Para o Próximo Registro
  ${ELEMENT}   Set Variable  id=forward_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Avançar Para o Final

  ${NOME}  Set Variable  Avançar Para o Final
  ${ELEMENT}   Set Variable  id=last_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Ajuda

  ${NOME}  Set Variable  Ajuda
  ${ELEMENT}   Set Variable  id=sc_btn_ajuda_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Ajuda (Inferior)

  ${NOME}  Set Variable  Ajuda
  ${ELEMENT}   Set Variable  id=sc_btn_ajuda_bot

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão OK

  ${NOME}  Set Variable  OK
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnok_bot']|//*[@id='sc_btnmostrar_bot']|//*[@id='sub_form_t']|//*[@id='sub_form_b']|//*[@id='sc_btnseguir_bot']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar no botão Local

  ${NOME}  Set Variable  Local
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnTreeView_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Ficha Complementar

  ${NOME}  Set Variable  Ficha Complementar
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btncomp_top']|//*[@id='sc_btn_complementar_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Últimas Visitas

  ${NOME}  Set Variable  Últimas Visitas
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnultimas_bot']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Perfil de Acesso

  ${NOME}  Set Variable  Perfil de Acesso
  ${ELEMENT}   Set Variable  id=sc_btnacesso_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Veículos

  ${NOME}  Set Variable  Veículos
  ${ELEMENT}   Set Variable  id=sc_btnveiculo_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Imprimir

  ${NOME}  Set Variable  Imprimir
  ${ELEMENT}   Set Variable  id=sc_btnimprime_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Histórico Colaborador

  ${NOME}  Set Variable  Histórico Colaborador
  ${ELEMENT}   Set Variable  id=sc_btn_historico_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Faixa de Acesso

  ${NOME}  Set Variable  Faixa de Acesso
  ${ELEMENT}   Set Variable  id=sc_btn_faixahoraria_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Foto

  ${NOME}  Set Variable  Foto
  ${ELEMENT}   Set Variable  id=sc_btnfoto_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Ler Smart Card

  ${NOME}  Set Variable  Ler Smart Card
  ${ELEMENT}   Set Variable  id=sc_btnLerCracha_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Limpar Dados

  ${NOME}  Set Variable  Limpar Dados
  ${ELEMENT}   Set Variable  id=limpa_frm_bot

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Processar

  ${NOME}  Set Variable  Processar
  ${ELEMENT}   Set Variable  id=sc_btnProcessar_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Retornar a Página Anterior

  ${NOME}  Set Variable  Retornar a Página Anterior
  ${ELEMENT}   Set Variable  id=sc_b_cancel_bot

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Gerar PDF
  ${NOME}  Set Variable  Gerar PDF
  ${ELEMENT}   Set Variable  id=pdf_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Gerar XLS

  ${NOME}  Set Variable  Gerar XLS
  ${ELEMENT}   Set Variable  id=xls_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Gerar XML

  ${NOME}  Set Variable  Gerar XML
  ${ELEMENT}   Set Variable  id=xml_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Gerar CSV

  ${NOME}  Set Variable  Gerar CSV
  ${ELEMENT}   Set Variable  id=csv_top

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Novo Item

  ${NOME}  Set Variable  Novo Item
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnNovoItem_bot']|//*[@id='sc_btn_novo_bot']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Totais

  ${NOME}  Set Variable  Totais
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btntotais_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Seção
  #Botão localizado por indice sem um xpath definitivo.

  ${NOME}  Set Variable  Seção
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_cnsLayoutImportacao#?#1"]/tbody/tr[2]/td[4]/font/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Detalhe Titular
  #Botão localizado por indice sem um xpath definitivo. App: consrestrito
  ${NOME}  Set Variable  Detalhe Titular
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consrestrito#?#1"]/tbody/tr[2]/td[6]/font/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Detalhe Acesso
  #Botão localizado por indice sem um xpath definitivo. App: consrestrito
  ${NOME}  Set Variable  Detalhe Acesso
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consrestrito#?#1"]/tbody/tr[2]/td[7]/font/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Seleção

  ${NOME}  Set Variable  Seleção
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnselecao_bot']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Detalhe
  #Botão localizado por indice sem um xpath definitivo. App: consrelclockinclockout
  ${NOME}  Set Variable  Detalhe
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consrelclockinclockout#?#1"]/tbody/tr[1]/td/font/a/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Opções
  #Botão localizado por indice sem um xpath definitivo. App: consentradagrupo
  ${NOME}  Set Variable  Opções
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consentradagrupo#?#1"]/tbody/tr[2]/td[2]/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Filtro
  ${NOME}  Set Variable  Filtro
  ${ELEMENT}   Set Variable  name=btnFiltro

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Detalhe Atribuição
  #Botão localizado por indice sem um xpath definitivo. App: frmretiradacoletivabeneficios
  ${NOME}  Set Variable  Detalhe Atribuição
  ${ELEMENT}   Set Variable  xpath=//*[@id="id_imghtml_imgdetalhe"]/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Mostrar
  #
  ${NOME}  Set Variable  Mostrar b_mostrar
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnmostrar_bot']|//*[@name='b_mostrar']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Entradas - Faixas Horárias
  ${NOME}  Set Variable  Entradas - Faixas Horárias
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnEntrColetores_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Saídas
  ${NOME}  Set Variable  Saídas
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnSaidaColetor_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Favoritos
  ${NOME}  Set Variable  Favoritos
  ${ELEMENT}   Set Variable  xpath=//*[@id="tblFavoritos"]/tbody/tr[3]/td/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Cadastro de Datas
  ${NOME}  Set Variable  Cadastro de Datas
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btndata_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Rec
  #Botão localizado por indice sem um xpath definitivo. App: consmonitoraralarme
  ${NOME}  Set Variable  Rec
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consmonitoraralarme#?#1"]/tbody/tr[2]/td[10]/font/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Tra
  #Botão localizado por indice sem um xpath definitivo. App: consmonitoraralarme
  ${NOME}  Set Variable  Tra
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_consmonitoraralarme#?#1"]/tbody/tr[2]/td[11]/font/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Sair
  #Botão localizado por indice sem um xpath definitivo. App: conssaidavisitantes
  ${NOME}  Set Variable  Sair
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_conssaidavisitantes#?#1"]/tbody/tr[2]/td[2]/font/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Comprovante
  ${NOME}  Set Variable  Comprovante
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnComprovanteEPI_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Item
  #Botão localizado por indice sem um xpath definitivo. App: cnsSecaoLayout
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_cnsSecaoLayout#?#1"]/tbody/tr[3]/td[5]/font/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Editar Esta Linha
  #Botão localizado por indice sem um xpath definitivo. App: frmComandosEquipamentos
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_open_line_1']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Engrenagem
  #Botão localizado por indice sem um xpath definitivo. App: frmDevolveChave | ctravisocreditos
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_cnsMovimentacaoChaves#?#1"]/tbody/tr[2]/td[1]/font/a/font/img | //*[@id="apl_cnsMovimentacaoGVolumes#?#1"]/tbody/tr[2]/td[1]/font/a/font/img | //*[@id='sc_btnprocessa_bot']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar No Botão Colunas

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnColumns_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}

Clicar no Botão Testar Email

  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id='sc_btnTestarEmail_top']

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}


Clicar No Botão Detalhe do Evento
  #Botão localizado por indice sem um xpath definitivo. App: cnsLogSuriDetalhe
  ${NOME}  Set Variable  Item
  ${ELEMENT}   Set Variable  xpath=//*[@id="apl_cnsLogSuri#?#1"]/tbody/tr[2]/td[11]/font/a/font/img

  Run Keyword If  '${MODE}' == 'VID'  Pronunciar Audio  ${LANGUAGE}  ${BTN_OBJ}  ${NOME}

  Wait Until Element is Visible  ${ELEMENT}
  Highlight Element  ${ELEMENT}
  Click Element  ${ELEMENT}
