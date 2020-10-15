#import board
#import digitalio
import time

#sp10nOff = digitalio.DigitalInOut(board.D3)
#sn10nOff = digitalio.DigitalInOut(board.D4)

def cadenaABinario(str):
    a_byte_array = bytearray(str, "utf8")
    byte_list = []
    for byte in a_byte_array:
        binary_representation = bin(byte)
        mensaje = binary_representation[2:]
        for indice in range(0, len(mensaje)):
            byte_list.append(mensaje[indice])
    return byte_list

def senialParaDriver(informacion):
    tau = 1/44000
    print("empiezo a mandar el mensaje")
    for mensaje in cadenaABinario(informacion):
        time.sleep(tau/2)
        if mensaje == '1' :
           # sp10nOff.value = True
           # sn10nOff.value = False
            print("70v+")
        elif mensaje == '0' :
            print("70v-")
           # sp10nOff.value = False
           # sn10nOff.value = True
        else :
           print("nada que transmitir")
           # sp10nOff.value = False
           # sn10nOff.value = False
    print("termine el mensaje")
    # sp10nOff.value = False
    # sn10nOff.value = False

#senialParaDriver("Test1")
#senialParaDriver("Prueba2")
#senialParaDriver("Gustavo")
#senialParaDriver("Nicolas")
#senialParaDriver("Ezequiel")
