# -*- coding: utf-8 -*-
import time
from senialSalida import SenialParaDriver

delay_prim=0.4 #Este seria el delay de 5s
delay_critic= 0.6 #Este seria el delay de 25s
prof_critic=80 #Profundidad critica suponer que son 80cm




if __name__ == "__main__":
    SPr=1
    CountCritic=0
    while isinstance(int(SPr), int):
        SPr=input()
        if int(SPr) < prof_critic:
            CountCritic=0
            time.sleep(delay_prim) 
        else:
            CountCritic+= 1
            time.sleep(delay_critic)
        print(CountCritic)
        
        if CountCritic > 5 :
            SenialParaDriver("AYUDAAAAAAAAA!!!!!")
        
