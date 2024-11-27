import numpy as np
import math as math


'''
test1 = np.ones((1,3))
test2 = np.zeros((1,3))
print(calclenght(test1,test2))
'''
#lasketaan pisteiden etäisyys
def calclenght(centerpoint,datapoint):
    x = centerpoint[0,0] - datapoint[0,0]
    y = centerpoint[0,1] - datapoint[0,1]
    z = centerpoint[0,2] - datapoint[0,2]

    lenght = math.sqrt(x**2 + y**2 + z**2)

    print ("length:",lenght)
    return lenght

#selvitetään millä pisteellä on lyhin etäisyys
def lenghtcheck(cp0,cp1,cp2,cp3,cp4,cp5,datapoint):
    result0 = calclenght(cp0, datapoint)
    result1 = calclenght(cp1, datapoint)
    result2 = calclenght(cp2, datapoint)
    result3 = calclenght(cp3, datapoint)
    result4 = calclenght(cp4, datapoint)
    result5 = calclenght(cp5, datapoint)
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
    
print(testidata)



# määritellään arvottu keskipiste muuttuja
# centerpoint
cp0 = np.zeros((1,3))
cp1 = np.zeros((1,3))
cp2 = np.zeros((1,3))
cp3 = np.zeros((1,3))
cp4 = np.zeros((1,3))
cp5 = np.zeros((1,3))

cumul_cp0 = np.zeros((1,3))
cumul_cp1 = np.zeros((1,3))
cumul_cp2 = np.zeros((1,3))
cumul_cp3 = np.zeros((1,3))
cumul_cp4 = np.zeros((1,3))
cumul_cp5 = np.zeros((1,3))

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
for x in range(0,3,1):
    cp0[0,x] = np.random.randint(min_value, max_value)
    cp1[0,x] = np.random.randint(min_value, max_value)
    cp2[0,x] = np.random.randint(min_value, max_value)
    cp3[0,x] = np.random.randint(min_value, max_value)
    cp4[0,x] = np.random.randint(min_value, max_value)
    cp5[0,x] = np.random.randint(min_value, max_value)


# voittaja arvoon lisätään datapisteen arvo
cpwin = lenghtcheck(cp0,cp1,cp2,cp3,cp4,cp5, testidata)

if cpwin == 0:
    cumul_cp0 = cumul_cp0 + testidata[i,x]





    
