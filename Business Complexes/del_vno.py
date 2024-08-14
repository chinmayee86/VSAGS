import mysql.connector

mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      passwd="password",
      database="wwcd"
    )
v="24566"
mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM alloc")
Space_no1=[]
V_no1=[]
l=mycursor.fetchall()
for row in l:
    Space_no1.append(row[0])
    V_no1.append(row[1])
dict1=dict(zip(Space_no1,V_no1))

for i,j in dict1.items():
    if(j==v):
        s=i
        break
mycursor.execute("UPDATE alloc SET V_no='%s' WHERE Space_no='%s';" % ("",s))
    
mydb.commit()
