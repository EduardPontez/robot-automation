*** Settings ***
Library         ../../../../api/data/client/person.py

Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../../resource/app/resource_ctrgravahistorico.robot
Resource        ../../../../resource/app/resource_frmcolaboradorcomplementar.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Este caso de teste tem a finalidade de cadastrar um novo parceiro e incluir sua ficha complementar


*** Test Cases ***

Testcase: Cadastrar Um Novo Parceiro
  [Tags]  PRINT  POPULATED  
  [Documentation]   ${OBJETIVO}

  Dado que eu acesse o menu: Identificação | Colaborador | Parceiro
  Quando eu visualizar a tela: Cadastro de Parceiro
  Então eu devo clicar no botão: Abrir um novo registro
  Quando eu visualizar a tela: Cadastro de Parceiro - Inclusão
  Então eu devo gerar uma nova pessoa
  E eu preencher o campo Matrícula "API"
  E eu preencher o campo Nome "API"
  E eu preencher o campo Apelido "API"
  E eu preencher o campo Data de Admissão "API"
  E eu preencher o campo Data de Nascimento "API"
  E eu selecionar valor na lista Sexo "API"
  E eu preencher o campo Número do CPF "API"
  Quando eu clicar no botão: Incluir o Registro
  E eu visualizar a tela: Parceiro
  E eu fechar a tela: Parceiro
  Então eu devo visualizar novamente a tela: Cadastro de Parceiro
  Quando eu clicar no botão: Ficha Complementar
  Então eu devo visualizar a tela: Ficha Complementar
  E preencher o campo: CEP "API"
  E preencher o campo: Endereço "API"
  E preencher o campo: Número "API"
  #E preencher o campo: Complemento "API"
  E preencher o campo: Bairro "API"
  E preencher o campo: Cidade "API"
  E selecionar valor na lista: Estado "API"
  E preencher o campo Celular "API"
  E preencher o campo Email Particular "API"
  E preencher o campo Email Comercial "API"
  E preencher o campo Número da Carteira e Identidade "API"
  E preencher o campo Número da Carteira de Habilitação "API"
  E preencher o campo: Nome do Pai "API"
  E preencher o campo: Nome da Mãe "API"
  Quando eu clicar novamente no botão: Incluir o Registro
  Então eu devo visualizar a tela Cadastro de Parceiro

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Parceiro
  resource_mnu.Clicar No Menu Identificação | Colaborador | Parceiro
Quando eu visualizar a tela: Cadastro de Parceiro
  resource_frmcolaborador.Acessar Tela Cadastro de Parceiro
Então eu devo clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro
Quando eu visualizar a tela: Cadastro de Parceiro - Inclusão
  resource_frmcolaborador.Acessar Tela Cadastro de Parceiro - Inclusão
Então eu devo gerar uma nova pessoa
  Gerar Nova Pessoa    Parceiro
E eu preencher o campo Matrícula "${MATRÍCULA}"
  resource_frmcolaborador.Setar Campo Matrícula ${MATRÍCULA}
E eu preencher o campo Nome "${NOME}"
  resource_frmcolaborador.Setar Campo Nome ${NOME}
E eu preencher o campo Apelido "${APELIDO}"
  resource_frmcolaborador.Setar Campo Apelido ${APELIDO}
E eu preencher o campo Data de Admissão "${DATA}"
  resource_frmcolaborador.Setar Campo Data de Admissão ${DATA}
E eu preencher o campo Data de Nascimento "${DATA}"
  resource_frmcolaborador.Setar Campo Data de Nascimento ${DATA}
E eu preencher o campo Número do CPF "${CPF}"
  resource_frmcolaborador.Setar Campo Número do CPF ${CPF}
E eu selecionar valor na lista Sexo "${SEXO}"
  resource_frmcolaborador.Setar Lista Sexo ${SEXO}
Quando eu clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro
E eu visualizar a tela: Parceiro
  resource_ctrgravahistorico.Acessar Tela Parceiro
E eu fechar a tela: Parceiro
  resource_ctrgravahistorico.Acessar Tela Parceiro  FECHA
Então eu devo visualizar novamente a tela: Cadastro de Parceiro
  resource_frmcolaborador.Acessar Tela Cadastro de Parceiro
Quando eu clicar no botão: Ficha Complementar
  resource_btn.Clicar No Botão Ficha Complementar
Então eu devo visualizar a tela: Ficha Complementar
  resource_frmcolaboradorcomplementar.Acessar Tela Cadastro de Parceiro - Ficha Complementar
E preencher o campo: CEP "${CEP}"
  resource_frmcolaboradorcomplementar.Setar Campo CEP ${CEP}
E preencher o campo: Endereço "${ENDEREÇO}"
  resource_frmcolaboradorcomplementar.Setar Campo Endereço ${ENDEREÇO}
E preencher o campo: Número "${NÚMERO}"
  resource_frmcolaboradorcomplementar.Setar Campo Número do Endereço ${NÚMERO}
E preencher o campo: Complemento "${COMPLEMENTO}"
  resource_frmcolaboradorcomplementar.Setar Campo Complemento ${COMPLEMENTO}
E preencher o campo: Bairro "${BAIRRO}"
  resource_frmcolaboradorcomplementar.Setar Campo Bairro ${BAIRRO}
E preencher o campo: Cidade "${CIDADE}"
  resource_frmcolaboradorcomplementar.Setar Campo Cidade ${CIDADE}
E selecionar valor na lista: Estado "${ESTADO}"
  resource_frmcolaboradorcomplementar.Setar Lista Estado ${ESTADO}
E preencher o campo Celular "${CELULAR}"
  resource_frmcolaboradorcomplementar.Setar Campo Celular ${CELULAR}
E preencher o campo Email Particular "${EMAIL}"
  resource_frmcolaboradorcomplementar.Setar Campo Email Particular ${EMAIL}
E preencher o campo Email Comercial "${EMAIL}"
  resource_frmcolaboradorcomplementar.Setar Campo Email Comercial ${EMAIL}
E preencher o campo Número da Carteira e Identidade "${RG}"
  resource_frmcolaboradorcomplementar.Setar Campo Número de Identidade ${RG}
E preencher o campo Número da Carteira de Habilitação "${CNH}"
  resource_frmcolaboradorcomplementar.Setar Campo Número da Carteira de Habilitação ${CNH}
E preencher o campo: Nome do Pai "${NOME}"
  resource_frmcolaboradorcomplementar.Setar Campo Nome do Pai ${NOME}
E preencher o campo: Nome da Mãe "${NOME}"
  resource_frmcolaboradorcomplementar.Setar Campo Nome da Mãe ${NOME}
Quando eu clicar novamente no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro
Então eu devo visualizar a tela Cadastro de Parceiro
  resource_frmcolaboradorcomplementar.Acessar Tela Cadastro de Parceiro - Ficha Complementar
