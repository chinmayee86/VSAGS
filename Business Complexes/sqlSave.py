import re
import mysql.connector
import os
import csv
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      passwd="password",
      database="business_complexes"
    )
with open('data.csv','r') as f:
    readCSV = csv.reader(f, delimiter=',')
    for row in readCSV:
        v=row[2]
s=""
mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM customer_reg WHERE v_number='%s';"%(v))
cus=len(mycursor.fetchall())
if(cus==1):
    '''mycursor.execute("SELECT * FROM alloc WHERE v_no='%s';"%(v))
    #length=len(mycursor.fetchall())
    #if(length==0):
    #mycursor.execute("INSERT INTO customer( v_no,sno ) VALUES ('%s','%s');" % ( v,'NULL'))'''
    mycursor.execute("SELECT mail_id FROM customer_reg WHERE v_number='%s';"%(v))
    l=mycursor.fetchall()[0][0]
    print(l)
    li = ["wwcdspardha@gmail.com",l]
    
    for i in range(len(li)): 
        s = smtplib.SMTP('smtp.gmail.com', 587) 
        s.starttls() 
        s.login("wwcdspardha@gmail.com", "Wwcd@spardha123")
        message = MIMEMultipart('alternative')
        message['Subject'] = "confirmation"
        html="""\
        <html>
           <head>
           </head>
           <body>
              <a href="http://localhost:7001/Bussiness_Complexes/confirm.jsp">Link to confirm</a>
           </body>
        </html>
        """
        part=MIMEText(html,'html')
        message.attach(part)
        s.sendmail("sender_email_id", li[i], message.as_string()) 
        s.quit()
    '''else:
        #mycursor.execute("UPDATE alloc SET V_no='%s' WHERE V_no='%s';" % ("",v))'''
else:
    mycursor.execute("insert into customer (v_no) values ('%s');" % (v))
    '''Space_no1=[]
    l=mycursor.fetchall()
    for row in l:
        Space_no1.append(row[0])
    s=Space_no1[0]
    mycursor.execute("UPDATE alloc SET V_no='%s' WHERE Space_no='%s';" % ("",s))'''
    
mydb.commit()
