# -*- coding: utf-8 -*-
"""
Created on Wed Oct 14 23:56:36 2020

"""
import smbus2 as smbus

from time import sleep


class SensorPresion(object):
    
    #COMMANDS/Registros
    _SP_RESET = 0x1E
    _SP_READ = 0x00
    _SPCONVERT_D1 = 0x40 #Esta es el muestreoOSR puede ser 0x40-->256, 0x42-->512..
    _SPCONVERT_D2 = 0x50
    _SP_PROM_READ = 0xA0
    #1110110x (write: x=0, read: x=1).
    _SP_ADDR = 0x76
    
    def __init__(self):
        #detecto si el bus 1 esta habilitado
        self.bus = smbus.SMBus()
        
        self.DensityWater = 997
        self.pressure = 0
        self.D1 = 0
        self.D2 = 0
        
    def init(self):
        self.bus.write_byte(self._SP_ADDR, self._SP_RESET)
        
        sleep(0.02) #Para el reinicio
        
        self.C = []
        
        #calibracion y CRC
        for i in range(7):
            c = self._bus.read_word_data(self._PS_ADDR, self._PS_PROM_READ + 2*i)
            c =  ((c & 0xFF) << 8) | (c >> 8) # SMBus para transferencia de palabras aca se intercambia MSB y LSB
            self.C.append(c)

        crc = (self.C[0] & 0xF000) >> 12
        if crc != self.Crc4(self.C):
            print("Falla de lectura de PROM, Error CRC!")
            return False

        return True
    
    def read(self, oversampling=5):
        if self._bus is None:
            print("Bus invalido")
            return False
        #Donde 0 es 256 y 5 8192
        if oversampling < 0 or oversampling > 5:
            print("Seleccion invalida de oversampling")
            return False

        # Respuesta de  D1 (creo que este es de temperatura)
        self._bus.write_byte(self._PS_ADDR, self._PSCONVERT_D1 + 2*oversampling)

        # El tiempo máximo aumenta linealmente con el oversampling, siguiendo la siguiente formula
        #Aca se tiene en cuenta la seleccion del oversampling mientras mayor sea mas tiempo tarda, esto tambien aumenta la resolucion
        sleep(2.5e-6 * 2**(8+oversampling))

        d = self._bus.read_i2c_block_data(self._PS_ADDR, self._PS_ADC_READ, 3)
        self._D1 = d[0] << 16 | d[1] << 8 | d[2]

        # Respuesta de D2 conversion (presion)
        self._bus.write_byte(self._PS_ADDR, self._PSCONVERT_D2 + 2*oversampling)

        
        sleep(2.5e-6 * 2**(8+oversampling))

        d = self._bus.read_i2c_block_data(self._PS_ADDR, self._PS_ADC_READ, 3)
        self.D2 = d[0] << 16 | d[1] << 8 | d[2]

        #Calculo la presión compensadas
        # usando valores de ADC sin procesar y calibración interna
        self.Calculate()

        return True
