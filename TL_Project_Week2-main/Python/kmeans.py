import numpy as np
import math as math


'''
test1 = np.ones((1,3))
test2 = np.zeros((1,3))
print(calclenght(test1,test2))
'''
#lasketaan pisteiden etäisyys
def calclenght(centerpoint,datapoint):
    x = centerpoint[0] - datapoint[0]
    y = centerpoint[0] - datapoint[0]
    z = centerpoint[0] - datapoint[0]

    lenght = math.sqrt((x**2) + (y**2) + (z**2))

    #print ("length:",lenght)
    return lenght

def newcp(cumul, lkm):
    newcp = np.zeros((1,3))
    for i in range(3):
        newcp[0,i] = cumul[0,i] / lkm
    return newcp

#selvitetään millä pisteellä on lyhin etäisyys
def lenghtcheck(cp0,datapoint):
    result0 = calclenght(cp0[0], datapoint)
    result1 = calclenght(cp0[1], datapoint)
    result2 = calclenght(cp0[2], datapoint)
    result3 = calclenght(cp0[3], datapoint)
    result4 = calclenght(cp0[4], datapoint)
    result5 = calclenght(cp0[5], datapoint)
    result_value = 5000
    cpwin = 0
    #selvitetään lyhin pituus näistä tuloksista
    if result_value >= result0:
        result_value = result0
        cpwin = 0
    if result_value >= result1:
        result_value = result1
        cpwin = 1
    if result_value >= result2:
        result_value = result2
        cpwin = 2
    if result_value >= result3:
        result_value = result3
        cpwin = 3
    if result_value >= result4:
        result_value = result4
        cpwin = 4
    if result_value >= result5:
        result_value = result5   
        cpwin = 5 
    
           
    return cpwin



testidata = np.ones ((300,3))
for i in range(300):
    for x in range(3):
        testidata[i,x] = np.random.randint(1200,1800)
    
#print(testidata)



# määritellään arvottu keskipiste muuttuja, kumulatiivinen muuttuja ja lukumäärä 
# centerpoint
cp0 = np.zeros((6,3))

cumul_cp0 = np.zeros((1,3))
cumul_cp1 = np.zeros((1,3))
cumul_cp2 = np.zeros((1,3))
cumul_cp3 = np.zeros((1,3))
cumul_cp4 = np.zeros((1,3))
cumul_cp5 = np.zeros((1,3))

#lukumäärää seuraavat arvot
lkm = np.zeros((1,6))


min_value = 3000
max_value = 0
# selvitetään minimi ja maksimi arvot datasta
for i in range(300):
    for x in range(3):
        data_value = testidata[i,x]
        if data_value <= min_value:
            min_value = data_value
        if data_value >= max_value:
            max_value = data_value
            
# arvotaan satunnainen luku minimi ja maksimi arvojen väliltä
for y in range(0,6,1):
    for x in range(0,3,1):
        cp0[y,x] = np.random.randint(min_value, max_value)


#looppi koko datan läpi käymiseen
for i in range(10):
    for x in range(len(testidata)):

# voittaja arvoon lisätään datapisteen arvo
        cpwin = lenghtcheck(cp0, testidata[x])
        #print(cpwin)
        if cpwin == 0:
            cumul_cp0[0,0] += testidata[x,0]
            cumul_cp0[0,1] += testidata[x,1]
            cumul_cp0[0,2] += testidata[x,2]
            lkm[0,0] += 1
        if cpwin == 1:
            cumul_cp1[0,0] += testidata[x,0]
            cumul_cp1[0,1] += testidata[x,1]
            cumul_cp1[0,2] += testidata[x,2]
            lkm[0,1] += 1
        if cpwin == 2:
            cumul_cp2[0,0] += testidata[x,0]
            cumul_cp2[0,1] += testidata[x,1]
            cumul_cp2[0,2] += testidata[x,2]
            lkm[0,2] += 1
        if cpwin == 3:
            cumul_cp3[0,0] += testidata[x,0]
            cumul_cp3[0,1] += testidata[x,1]
            cumul_cp3[0,2] += testidata[x,2]
            lkm[0,3] += 1
        if cpwin == 4:
            cumul_cp4[0,0] += testidata[x,0]
            cumul_cp4[0,1] += testidata[x,1]
            cumul_cp4[0,2] += testidata[x,2]
            lkm[0,4] += 1
        if cpwin == 5:
            cumul_cp5[0,0] += testidata[x,0]
            cumul_cp5[0,1] += testidata[x,1]
            cumul_cp5[0,2] += testidata[x,2]
            lkm[0,5] += 1
    
    print("old: ",cp0[0])
    #uusi keskipiste
    cp0[0] = newcp(cumul_cp0, lkm[0,0])
    cp0[1] = newcp(cumul_cp1, lkm[0,1])
    cp0[2] = newcp(cumul_cp2, lkm[0,2])
    cp0[3] = newcp(cumul_cp3, lkm[0,3])
    cp0[4] = newcp(cumul_cp4, lkm[0,4])
    cp0[5] = newcp(cumul_cp5, lkm[0,5])
    print("new: ",cp0[0])
    #jos joku piste ei saanut yhtään datapisteitä, arvotaan sille uusi keskipiste
    for n in range(6):
        if lkm[0,n] == 0:
            for x in range(0,3,1):
                cp0[n,x] = np.random.randint(min_value, max_value)


# lopullinen tallennus .h tiedostoon
result_str = np.array_str(cp0)
with open('keskipisteet.h','w') as f:
    f.write(result_str)


