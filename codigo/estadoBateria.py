#import board
#import digitalio
import time

#sp10nOff = digitalio.DigitalInOut(board.D1)


def estadoBateria():
    cargando = False
    print("Empieza la carga")
    mensaje = sp10nOff.read
    if mensaje == '1' :
        cargando = True
        print("La carga comenzo correctamente")

    elif mensaje == '0' :
        cargando = False
        print("Carga completa o Falta de carga")

    else :
        print("Carga completa o Falta de carga")
        
    return cargando

