import subprocess
import os
from pipeline.ftp import send

def run(command, settings):

  testcases = list()

  allowed_servers = settings['SERVERS']
  allowed_browsers = settings['BROWSERS']
  user_per_language = settings['USERS']
  
  if command[-1].endswith('.robot'):
    testcases.append(command[-1])
  else:
    for root, directories, files in os.walk(command[-1], topdown = False):
      for name in files:
        testcases.append(os.path.join(root, name))

  for testcase in testcases:
    for server in allowed_servers:
      for browser in allowed_browsers:
        for language, credentials in user_per_language.items():
          for username, password in credentials.items():
            if 'MODE:DOC' in command and browser != 'IE':
              command = f'robot -v MODE:DOC -i PRINT -v SERVER:{server} -v BROWSER:{browser} -v LANGUAGE:{language} -v USERNAME:{username} -v PASSWORD:{password} {testcase}'
            else:
              command = f'robot -v SERVER:{server} -v BROWSER:{browser} -v LANGUAGE:{language} -v USERNAME:{username} -v PASSWORD:{password} {testcase}'
            print(command)
            subprocess.run(command.split(' '))
            send.upload()
