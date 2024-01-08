from pipeline.ftp import send
from superutil.recorder import media_result
import pipeline.pil as pil
import subprocess
import sys
import json

settings = None
args = None


def run(command):
  
  global args
  args = command

  load_settings()
  checker = is_valid_command()
  
  if checker['is_valid'] and checker['has_pil']:
    pil.run(args, settings)

  elif checker['is_valid'] and checker['has_pil'] == False:
    subprocess.run(args)
    send.upload()

  else:
    sys.exit('CANNOT RUN TEST!')

def analyse_mode():

  def has_pil():
    valid = list()
    for index, arg in enumerate(args):
      if args[index] == '-v' and args[index + 1] == 'PIL:True':
        valid.append(True)
        break
      else:
        valid.append(False)
    
    return True if True in valid else False

  def has_vid():
    valid = list()
    for index, arg in enumerate(args):
      if args[index] == '-v' and args[index + 1] == 'MODE:VID':
        valid.append(True)
        break
      else:
        valid.append(False)

    return True if True in valid else False

  def has_doc():
    valid = list()
    for index, arg in enumerate(args):

      if args[index] == '-v' and args[index + 1] == 'MODE:DOC':
        valid.append(True)
        break
      else:
        valid.append(False)
    
    return True if True in valid else False

  modes = { 
          'PIL': has_pil(),
          'VID': has_vid(),
          'DOC': has_doc()
        }

  return modes

def analyse_enviroment():

  def has_browser():
    
    browsers = settings['BROWSERS']
    default = list()
    chosen = None

    for arg in args:
      if 'BROWSER' in arg:
        for browser in browsers:
          if browser == arg.split(':')[-1]:
            chosen = browser
        default.append(False)
      else:
        default.append(True)

    if (not False in default) and (not chosen):
      chosen = 'DEFAULT'

    if not chosen:
      sys.exit("YOU HAVE INFORMED A NOT ALLOWED BROWSER TO RUN SURICATO TESTS! TRY THESE OUT: \n CHROME \n FIREFOX \n IE")
    else:
      return chosen

  def has_language():
    
    languages = settings['LANGUAGES']
    default = list()
    chosen = None

    for arg in args:
      if 'LANGUAGE' in arg:
        for language in languages:
          if language == arg.split(':')[-1]:
            chosen = language
        default.append(False)
      else:
        default.append(True)

    if (not False in default) and (not chosen):
      chosen = 'DEFAULT'

    if not chosen:
      sys.exit("YOU HAVE INFORMED AN UNKNOWN LANGUAGE USED AT SURICATO SYSTEM. TRY THESE OUT: \n PT-BR \n EN-US \n ES-ES")
    else:
      return chosen

  enviroments = {
                'BROWSER':  has_browser(),
                'LANGUAGE': has_language()
              }

  return enviroments

def is_valid_command():

  modes = analyse_mode()
  enviroments = analyse_enviroment()

  if modes['PIL'] and modes['VID']:
    sys.exit("YOU CANNOT USE PIPELINE RUNS WITHIN VID MODE!")

  if modes['DOC'] and enviroments['BROWSER'] == 'IE':
    sys.exit('YOU CANNOT USE DOC MODE WITHIN INTERNET EXPLORER!') 

  if modes['VID'] and enviroments['BROWSER'] != 'FIREFOX':
    sys.exit('YOU CAN ONLY RECORD VIDEOS WITHIN MOZILLA FIREFOX!')

  else:
    return {'is_valid': True,
            'has_pil': modes['PIL']}

def load_settings():
  
  global settings
  args.pop(0)
  #args.pop(0)

  with open('pipeline\\settings.json') as j:
    settings = json.load(j)

