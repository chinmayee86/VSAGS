import smtplib
import mysql.connector

from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from sqlSave import vehicle_no
  
# list of email_id to send the mail
mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      passwd="Chinnu",
      database="wwcd"
    )
v_no=vehicle_no()
print(v_no)
query="select mail_id from customer_reg where v_number='%s';" %v_no
mycursor = mydb.cursor()
mycursor.execute(query)
l=mycursor.fetchall()[0][0]
print(l)
li = ["wwcdspardha@gmail.com",l]

'''import csv
t=""
with open("data.csv", "r") as f:
    csvreader = csv.reader(f, delimiter=",")'''
    
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
            <a href="http://localhost:8080/chinmayee/confirm.jsp">Link to confirm</a>
        </body>
    </html>
    """
    part=MIMEText(html,'html')
    message.attach(part)
    s.sendmail("sender_email_id", li[i], message.as_string()) 
    s.quit()
