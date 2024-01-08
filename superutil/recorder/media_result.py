from os import path
from os import replace
from os import makedirs
from os import path
from json import load
from glob import glob


def load_payload():

  payload = None
  
  if path.exists('.\\payload.json'):
    with open('payload.json') as f:
      payload = load(f)
    f.close()

  return payload


def get_path():

  payload = load_payload()

  if payload:
    app = payload['APP']
    language = payload['LANGUAGE']
    suite = payload['SUITE']

    folder = f'results\\media\\{app}\\{language}\\VID\\{suite}'

    if not path.exists(folder):
      makedirs(folder)
    
    get_video(folder, app, suite)


def get_video(destination, app, suite):

  source = glob('superutil\\recorder\\*.mp4')

  if len(source) > 0:
    mp4 = source[0].split('\\')[-1]
    speaker = mp4.split('_')[0]
    filename = f'{speaker}__{app}__{suite}.mp4'


    if path.isfile(source[0]):
      replace(source[0], f'{destination}\\{filename}')


def move():
  get_path()
