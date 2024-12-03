import numpy as np
import math as math
import pandas as pd

#headers for csv data
HEADERS = ["ID", "Timestamp", "groupid",
            "Column 4", "Column 5", "sensor_x",
              "sensor_y", "sensor_z", "Column 9",
                "Column 10", "sensor_dir"]
mydata = pd.read_csv("data.csv", sep=";", header=1, names=HEADERS)
#mytable numpy taulukko csv tiedoston datalle
mytable = np.ones((len(mydata), 3))

'''
sensor index locations to use with pandas
x = 5
y = 6
z = 7
dir = 10
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
    print("newcp val/lkm: ",cumul, " ", lkm)
    #print("lkm: ",np.dtype(lkm))
    
    for i in range(3):
        newcp[0,i] = cumul[0,i] / lkm
    print(newcp[0])
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

#haetaan csv taulukosta omaan numpy taulukkoon dataa
for i in range(len(mytable)):
    mytable[i,0] = mydata.iloc[i,5]
    mytable[i,1] = mydata.iloc[i,6]
    mytable[i,2] = mydata.iloc[i,7]
#    mytable[i,3] = mydata.iloc[i,10] #this line contains sensor_dir value
mytable.astype(np.int64)
print("len :",len(mytable))
'''
testidata = np.ones ((300,3))
for i in range(300):
    for x in range(3):
        testidata[i,x] = np.random.randint(1200,1800)
    
#print(testidata)
'''

#print("dtype: ", np.dtype(mytable[0,0]))
# määritellään arvottu keskipiste muuttuja, kumulatiivinen muuttuja ja lukumäärä 
# centerpoint
cp0 = np.ones((6,3))

cumul_cp0 = np.zeros((1,3))
cumul_cp1 = np.zeros((1,3))
cumul_cp2 = np.zeros((1,3))
cumul_cp3 = np.zeros((1,3))
cumul_cp4 = np.zeros((1,3))
cumul_cp5 = np.zeros((1,3))


#lukumäärää seuraavat arvot
lkm = np.zeros((1,6))


min_value = 10000
max_value = 0
# selvitetään minimi ja maksimi arvot datasta
for i in range(len(mytable)):
    for x in range(3):
        data_value = mytable[i,x]
        if data_value <= min_value:
            min_value = data_value
        if data_value >= max_value:
            max_value = data_value

# arvotaan satunnainen luku minimi ja maksimi arvojen väliltä
for y in range(0,6,1):
    for x in range(0,3,1):
        cp0[y,x] = np.random.randint(min_value, max_value)


#looppi koko datan läpi käymiseen
for i in range(1):
    for x in range(len(mytable)):

# voittaja arvoon lisätään datapisteen arvo
        cpwin = lenghtcheck(cp0, mytable[x])
        #print(cpwin)
        if cpwin == 0:
            cumul_cp0[0,0] += mytable[x,0] 
            cumul_cp0[0,1] += mytable[x,1] 
            cumul_cp0[0,2] += mytable[x,2] 
            lkm[0,0] += 1
            print("cumul0: ",cumul_cp0)
        elif cpwin == 1:
            cumul_cp1[0,0] += mytable[x,0]
            cumul_cp1[0,1] += mytable[x,1]
            cumul_cp1[0,2] += mytable[x,2]
            lkm[0,1] += 1
            print("cumul1: ",cumul_cp1)
        elif cpwin == 2:
            cumul_cp2[0,0] += mytable[x,0]
            cumul_cp2[0,1] += mytable[x,1]
            cumul_cp2[0,2] += mytable[x,2]
            lkm[0,2] += 1
            print("cumul2: ",cumul_cp2)
        elif cpwin == 3:
            cumul_cp3[0,0] += mytable[x,0]
            cumul_cp3[0,1] += mytable[x,1]
            cumul_cp3[0,2] += mytable[x,2]
            lkm[0,3] += 1
            print("cumul3: ",cumul_cp3)
        elif cpwin == 4:
            cumul_cp4[0,0] += mytable[x,0]
            cumul_cp4[0,1] += mytable[x,1]
            cumul_cp4[0,2] += mytable[x,2]
            lkm[0,4] += 1
            print("cumul4: ",cumul_cp4)
        elif cpwin == 5:
            cumul_cp5[0,0] += mytable[x,0]
            cumul_cp5[0,1] += mytable[x,1]
            cumul_cp5[0,2] += mytable[x,2]
            lkm[0,5] += 1
            print("cumul5: ", cumul_cp5)
    
    #uusi keskipiste
    cp0[0] = newcp(cumul_cp0, lkm[0,0])
    cp0[1] = newcp(cumul_cp1, lkm[0,1])
    cp0[2] = newcp(cumul_cp2, lkm[0,2])
    cp0[3] = newcp(cumul_cp3, lkm[0,3])
    cp0[4] = newcp(cumul_cp4, lkm[0,4])
    cp0[5] = newcp(cumul_cp5, lkm[0,5])

    cumul_cp0 = np.ones((1,3))
    #print("new: ",cp0[0])
    #jos joku piste ei saanut yhtään datapisteitä, arvotaan sille uusi keskipiste
    for n in range(6):
        if lkm[0,n] == 0:
            for x in range(0,3,1):
                cp0[n,x] = np.random.randint(min_value, max_value)


# lopullinen tallennus .h tiedostoon
result_str = np.array_str(cp0)
with open('keskipisteet.h','w') as f:
    f.write(result_str)


