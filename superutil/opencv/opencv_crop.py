import cv2
import numpy as np
from datetime import datetime
from PIL import Image, ImageFont, ImageDraw

def recortar_imagem(img_base, language):

    imagem = cv2.imread(img_base)

    gray = cv2.cvtColor(imagem, cv2.COLOR_BGR2GRAY)
    gray = 222*(gray < 221)
    
    coords = cv2.findNonZero(gray)
    x, y, w, h = cv2.boundingRect(coords)
    crop = imagem[y:y+h, x:x+w]
    
    with_footer = np.full((30, crop.shape[1], 3), [255, 255, 255], dtype = np.uint8)
    result = np.vstack((crop, with_footer))
    image_pil = Image.fromarray(result)
    draw = ImageDraw.Draw(image_pil)
    
    monospace = ImageFont.truetype("superutil\\opencv\\ayar.ttf", 10)

    phrase = None
    date = None

    if language.upper() == 'PT-BR':
        date = datetime.today().strftime('%d/%m/%Y')
        phrase = 'Verificado em:'

    elif language.upper() == 'EN-US':
        date = datetime.today().strftime('%m/%d/%Y')
        phrase = 'Checked at:'
    
    elif language.upper() == 'ES-ES':
        date = datetime.today().strftime('%d/%m/%Y')
        phrase = 'Comprobado en:'
    
    draw.text((10, result.shape[0] - 22), f'{phrase} {date}', (0,0,0), font=monospace)
    final = np.array(image_pil)

    image_name = img_base.replace('base','opencv')
    cv2.imwrite(image_name, final)
