import csv
import os
import pandas as pd
import time
import glob
from time_validation import check

if check() == 0:
    os.system(exit(0))

extension='csv'
all_filenames=[i for i in glob.glob('*.{}'.format(extension))]
#['data1.csv','data.csv']

#combine all files in the list
combined_csv = pd.concat([pd.read_csv(f) for f in all_filenames ],sort=False)
#export to csv
combined_csv.to_csv( "data1.csv", index=False)
with open("data.csv", "r") as f:
    csvreader = csv.reader(f, delimiter=",")
    for row in csvreader:
        t=row[2]
print(t)

os.system('python sqlSave.py')

'''
with open('data.csv','r') as f:
    csvreader1=csv.reader(f,delimiter=",")
    for row in csvreader1:
        with open('data1.csv','r') as z:
            csvreader = csv.reader(z, delimiter=",")
            l=[]
            for row1 in csvreader:
                t=row1[2]
                l.append(t)
            print(l)
            if row[2] not in l:
                print("stranger vehicle spoted")
                os.system('python mail3.py')
            else:
                print("not a stanger vehicle")
'''
