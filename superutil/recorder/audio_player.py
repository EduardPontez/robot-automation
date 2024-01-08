import pygame
from random import choice
from os import listdir
from os.path import isfile
from pathlib import Path
import numpy as np
#from pydub import AudioSegment
#from pydub.playback import play

# GLOBAL

CUR_PATH = f'{Path().resolve()}\\superutil\\recorder\\assets\\SSML'
speaker = None
language = None
allowed_types = ['MNU', 'SCN', 'BTN', 'TAB']
allowed_conversation = ['GREETINGS', 'FAREWELL']
top_menus = ['ESTRUTURA', 'DISPOSITIVO', 'IDENTIFICAÇÃO', 'REGISTRO', 'ENTRADA', 'CONTROLE', 'PROCESSO', 'CONFIGURAÇÕES', 'RELATÓRIOS', 'VEÍCULOS', 'SAIR']    

class Audio():

    def __init__(self):

        self.greetings = None
        self.directory = CUR_PATH
        self.speaker = speaker
        self.language = language
        self.object = None
        self.connector = None
        self.event = None
        self.word = None
        self.mouse = None
        self.farewell = None

    def set_language(self, lang):
        global language
        language = lang.upper()
        self.language = language


    def set_speaker(self):
        global speaker

        allowed_speakers = []

        if not speaker:
            if self.language == 'PT-BR':
                allowed_speakers = ['ANTONIO', 'FRANCISCA']
            
            speaker = choice(allowed_speakers)
            file = f'{CUR_PATH}\\chosen.txt'
            
            if not isfile(file):
                with open(file, 'w+') as f:
                    f.write(speaker)
                f.close()
            
            self.speaker = speaker
    

    def set_object(self, object_type):
        self.object = object_type.upper()


    def set_connector(self):

        chosen = '.xml'
        audios_path = ''
        before = ''

        if self.object.upper() != 'MNU':

            if np.random.choice([True, False], size = 1, p = [0.40, 0.60]):
                
                audios_path = f'{self.directory}\\{self.language}\\{self.speaker}\\CHAT\\CONNECTOR\\'
                audios = listdir(audios_path)

                while chosen.endswith('.xml') or chosen == before:
                    chosen = choice(audios)
                
                before = chosen

                self.connector = f'{audios_path}\\{chosen}'

            else:
                self.connector = None


    def set_event(self, word):
        
        global allowed_types
        global allowed_conversation
        global top_menus
        audios_path =  f'{self.directory}\\{self.language}\\{self.speaker}'
        chosen = '.xml'
        if not word:
            word = 'UNKNOWING'
        
        
        if self.object in allowed_types:
            audios_path = f'{audios_path}\\OBJ\\{self.object}\\EVENT\\'
        
        elif self.object in allowed_conversation:
            audios_path = f'{audios_path}\\CHAT\\{self.object}\\'
        
        audios = listdir(audios_path)

        while chosen.endswith('.xml'):
            chosen = choice(audios)
        
        if (self.object.upper() == 'MNU') and (word.upper() not in top_menus):
            self.event = None
        else:
            self.event = f'{audios_path}\\{chosen}'


    def set_word(self, word):
        if word:
            self.word = f'{self.directory}\\{self.language}\\{self.speaker}\\OBJ\\{self.object}\\WORD\\{word.upper()}.wav'


    def set_mouse(self):

        allowed_clicks = ['MNU', 'BTN', 'TAB']

        if self.object in allowed_clicks:
            self.mouse = f'{self.directory}\\_GENERAL\\click_effect.mp3'


def pronunciar_audio(lang, object_type, word=None):
   
    global allowed_types
    global allowed_conversation
    global speaker

    audio = Audio()
    audio.set_language(lang)
    audio.set_speaker()
    audio.set_object(object_type)
    audio.set_word(word)
    audio.set_event(word)
    audio.set_connector()       
    audio.set_mouse()
    
    if object_type.upper() in allowed_types:

        play_sound(audio.connector)
        play_sound(audio.event)
        play_sound(audio.word)
        play_sound(audio.mouse) 
    
    elif object_type.upper() in allowed_conversation:
        play_sound(audio.event)

            
def play_sound(file):

    if file:
        pygame.mixer.init() 
        pygame.mixer.music.load(str(file))
        pygame.mixer.music.play() 
        while pygame.mixer.music.get_busy(): 
            pygame.time.Clock().tick()

