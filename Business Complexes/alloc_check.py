import re
import mysql.connector
import os
import csv
'''from mail.py import confirm()'''

mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      passwd="password",
      database="wwcd"
    )
with open('data.csv','r') as f:
    readCSV = csv.reader(f, delimiter=',')
    for row in readCSV:
        v=row[2]
print(v)
'''mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM customer_reg WHERE v_number='%s';"%(v))
cus=len(mycursor.fetchall())
mycursor.execute("SELECT * FROM alloc WHERE v_no='%s';"%(v))
mycursor.execute("SELECT * FROM alloc WHERE v_no='' or v_no IS NULL")
Space_no1=[]
V_no1=[]
l=mycursor.fetchall()
for row in l:
    Space_no1.append(row[0])
    V_no1.append(row[1])
    dict1=dict(zip(Space_no1,V_no1))
s=""
if(cus==0):
    for i,j in dict1.items():
        if(re.match("^r\d",i)):
            s=i
            break
    os.system('python mail.py')
    if confirm() == 0:
        os.system(exit(0))
else:
    for i,j in dict1.items():
        if(re.match("^s\d",i)):
            s=i
            break
mycursor.execute("UPDATE alloc SET V_no='%s' WHERE Space_no='%s';" % (v,s))
    
mydb.commit()'''

