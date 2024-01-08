from unidecode import unidecode
import os
import check_header, opencv_crop
import re

def remover_caracteres_especiais(imagem):
    #Substituindo " - "
    nome_imagem = imagem
    if '-' in imagem:
        nome_imagem = imagem.replace('-', ' ')
    elif ' - ' in imagem:
        nome_imagem = imagem.replace(' - ', ' ')

    #Substituindo Espaços
    check_espaço = re.search("\s", nome_imagem)
    if check_espaço:
        nome_imagem = re.sub("\s", "_", nome_imagem)

    #Substituindo Parenteses
    check_parenteses1 = re.search("[(]", nome_imagem)
    check_parenteses2 = re.search("[)]", nome_imagem)
    if check_parenteses1 and check_parenteses2:
        nome_imagem = re.sub("[(]", "", nome_imagem)
        nome_imagem = re.sub("[)]", "", nome_imagem)

    return unidecode(nome_imagem)


def obter_nome_da_aplicacao(nome_imagem):
    crop_path = nome_imagem.split('\\')
    imagem = crop_path[-1]

    crop = imagem.split('__')
    nome_aplicacao = crop[1]

    return nome_aplicacao

def obter_nome_da_tela(nome_imagem):
    crop_path = nome_imagem.split('\\')
    imagem = crop_path[-1]

    crop = imagem.split('__')
    nome_tela = crop[2]

    return nome_tela

def obter_versao(nome_imagem):
    crop_path = nome_imagem.split('\\')
    imagem = crop_path[-1]

    crop = imagem.split('__')
    versao = crop[3]

    crop2 = versao.split('.')
    versao = crop2[0]

    return versao

def tratar_imagem(path, language):
    # Conferir cabeçalho
    check_header.check_header(path)

    # Cortar print dimensionado
    opencv_crop.recortar_imagem(path, language)
