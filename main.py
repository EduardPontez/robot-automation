from sys import argv
from pipeline import pipeline

if __name__ == '__main__':
  #args = ['python', 'main.py', 'robot', '-v', 'MODE:TST', '-v', 'PIL:True', '-v', 'LANGUAGE:PT-BR', '-v', 'BROWSER:FIREFOX', '.\\tests\\AppTest\\cons_ColabAcessLinh\\00001_testcase.robot']
  #args = ['main.py', 'robot', '-v', 'PIL:True', '.\\tests\\AppTest\\cons_ColabAcessLinh\\00001_testcase.robot']
  pipeline.run(argv)
