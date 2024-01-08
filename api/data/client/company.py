import requests
import json
import re
import api_tools

company = None

class Company():

  def __init__(self):

    self.id = None
    self.typer = None
    self.country = None
    self.name = None
    self.foundation = None
    self.size = None
    self.workers = None
    self.cei = None
    self.inscription = None
    self.responsible = None
    self.responsible_cpf = None
    self.email = None
    self.website = None
    self.cellphone = None
    self.telephone = None
    self.cep = None
    self.state = None
    self.city = None
    self.neighborhood = None
    self.address = None
    self.number = None
    self.complement = None  

  def set_id(self, data):
    self.id = data['ID']
  
  def set_typer(self, data):
    self.typer = data['TYPER']

  def set_name(self, data):
    self.name = data['NAME']
  
  def set_foundation(self, data):
    self.foundation = data['FOUNDATION']
  
  def set_size(self, data):
    self.size = data['SIZE']
  
  def set_workers(self, data):
    self.workers = data['WORKERS']
  
  def set_cei(self, data):
    self.cei = data['CEI']
  
  def set_inscription(self, data):
    self.inscription = data['INSCRIPTION']

  def set_responsible(self, data):
    self.responsible = data['RESPONSIBLE']

  def set_responsible_cpf(self, data):
    self.responsible_cpf = data['RESPONSIBLE_CPF']

  def set_email(self, data):
    self.email = data['EMAIL']

  def set_website(self, data):
    self.website = data['WEBSITE']

  def set_cellphone(self, data):
    self.cellphone = data['CELLPHONE']
  
  def set_telephone(self, data):
    self.telephone = data['TELEPHONE']

  def set_cep(self, data):
    self.cep = data['CEP']

  def set_state(self, data):
    self.state = data['STATE']

  def set_city(self, data):
    self.city = data['CITY']

  def set_neighborhood(self, data):
    self.neighborhood = data['NEIGHBORHOOD']

  def set_address(self, data):
    self.address = data['ADDRESS']

  def set_number(self, data):
    self.number = data['NUMBER']

  def set_complement(self, data):
    self.complement = data['COMPLEMENT']


def gerar_nova_empresa(typer = None):
  global company

  config = api_tools.load_settings()

  payload = config["DATA"]["ENDPOINT"]
  hostname =  config['DATA']['HOSTNAME']
  endpoint = payload.replace('hostname', hostname)

  if typer:
    endpoint = f'{endpoint}?type={typer}'

  url = requests.get(endpoint)
  data = json.loads(url.text)

  company = Company()
  company.set_id(data)


def matrícula():
  return company.id

def tipo_empresa():
  return company.type

def país():
  return company.country

def nome(unidecode = None, uppercase = False):

  name = None

  if unidecode:
    name = unidecode(company.name)
  else:
    name = company.name

  return name

def fundação():
  return company.foundation

def porte():
  return company.size

def quantidade_trabalhadores():
  return company.workers

def cei():
  return company.cei

def inscrição_estadual():
  return company.inscription

def responsável():
  return company.responsible

def cpf_do_responsável(mask = False):
  
  cpf = company.CPF

  if mask:
    cpf = re.sub('[^0-9]+', '', cpf)

  return company.responsible_cpf

def email():
  return company.email

def website():
  return company.website

def celular(mask=False):
  
  cellphone = company.cellphone

  if mask:
    cellphone = re.sub('[^0-9]+', '', cellphone)

  return cellphone

def telefone(mask=False):
  
  telephone = company.telephone

  if mask:
    cpf = re.sub('[^0-9]+', '', telephone)

  return telephone

def cep():
  return company.cep

def estado():
  return company.state

def cidade():
  return company.city

def bairro():
  return company.neighborhood

def endereço():
  return company.address

def número():
  return company.number

def complemento():
  return company.complement
