import smtplib 
  
# list of email_id to send the mail 
li = ["wwcdspardha@gmail.com"] 
import csv
t=""
with open("data.csv", "r") as f:
    csvreader = csv.reader(f, delimiter=",")
    for row in csvreader:
        t+=" "+row[2]
for i in range(len(li)): 
    s = smtplib.SMTP('smtp.gmail.com', 587) 
    s.starttls() 
    s.login("wwcdspardha@gmail.com", "Wwcd@spardha123")
    message = """\
Subject: ALERT!!UNAUTHORIZED VEHICLE
There is an unidentified vehicle at your parking.PLEASE VERIFY!!!. """ + t

    s.sendmail("sender_email_id", li[i], message) 
    s.quit()
