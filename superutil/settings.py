from selenium.webdriver import ChromeOptions
from selenium.webdriver import IeOptions
from selenium.webdriver import FirefoxOptions
from selenium.webdriver.edge.options import Options as EdgeOptions
from os import environ
from os import path
from os import remove
from pathlib import Path
from glob import glob


def configurar_ambiente(output_dir):

  remover_arquivos(output_dir)


def configurar_navegador(browser, mode):

  HEADLESS_WIDTH_SIZE = '1300'
  HEADLESS_HEIGHT_SIZE = '3000'
  options = None

  if browser.upper() == 'CHROME' or browser.upper() == 'EDGE':
    
    if browser.upper() == 'CHROME':
      options = ChromeOptions()
    else:
      options = EdgeOptions()

    options.add_argument('--ignore-certificate-errors')
    options.add_experimental_option('excludeSwitches', ['enable-logging'])
    
    if mode.upper() == 'DOC':
      
      options.add_argument('--headless')
      options.add_argument('--window-size={0}x{1}'.format(HEADLESS_WIDTH_SIZE, HEADLESS_HEIGHT_SIZE))
    
    elif mode.upper() == 'VID':
      options.add_experimental_option('useAutomationExtension', False)
      options.add_experimental_option("excludeSwitches",["enable-automation", "enable-logging"])
      options.add_argument('--start-fullscreen')
  
  elif browser.upper() == 'FIREFOX':

    options = FirefoxOptions()

    if mode.upper() == 'DOC':
      environ['MOZ_HEADLESS_WIDTH'] = HEADLESS_WIDTH_SIZE
      environ['MOZ_HEADLESS_HEIGHT'] = HEADLESS_HEIGHT_SIZE
      options.add_argument('--headless')
    
  elif browser.upper() == 'IE':
      options = IeOptions()
      options.require_window_focus = True
      options.persistent_hover = True
      options.native_events = True
  
  return options


def remover_arquivos(output_dir):
  
  cur_path = Path().resolve()

  medias = glob(f'{cur_path}\\superutil\\recorder\\*.mp4')

  files = [
           f'{output_dir}\\report.html',
           f'{output_dir}\\log.html',
           f'{cur_path}\\report.html',
           f'{cur_path}\\log.html',
           f'{cur_path}\\payload.json', 
           f'{cur_path}\\supertutil\\recorder\\assets\\ssml\\chosen.txt']

  for file in files:
    if path.isfile(file):
      remove(file)

  for media in medias:
    if path.isfile(media):
      remove(media)
