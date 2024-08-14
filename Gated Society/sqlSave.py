import mysql.connector
import csv

mydb = mysql.connector.connect(
      host="localhost",
      user="root",
      passwd="password",
      database="wwcd"
    )
mycursor = mydb.cursor()
mycursor.execute("SELECT * FROM u_vehicle")
sno=len(mycursor.fetchall())+1
mycursor.execute("SELECT * FROM visitor")
sno1=len(mycursor.fetchall())+1
with open('data.csv') as csvfile:
    row_count=sum(1 for row in csvfile)
    #while row_count != 0:
    with open('data.csv','r') as f:
        readCSV = csv.reader(f, delimiter=',')
        count=0
        for row in readCSV:
            mycursor.execute("SELECT * FROM udata WHERE car_no='%s';" % ( row[2]))
            l=len(mycursor.fetchall())
            if count == 1:
                if(l==1):
                    mycursor.execute("SELECT * FROM u_vehicle WHERE v_number='%s';" %( row[2] ))
                    if(len(mycursor.fetchall())%2==0):
                        mycursor.execute("INSERT INTO u_vehicle( s_no,in_time,v_number,out_time ) VALUES ('%s','%s','%s','%s');" % ( sno, row[1], row[2],'NULL'))
                    else:
                        mycursor.execute("UPDATE u_vehicle SET out_time='%s' WHERE v_number='%s' AND out_time='NULL';"%( row[1], row[2]))
                else:
                    mycursor.execute("SELECT * FROM visitor WHERE v_number='%s';"%( row[2] ))
                    if(len(mycursor.fetchall())%2==0):
                        mycursor.execute("INSERT INTO visitor( sno,in_time,v_number,phone_num,apt_no,out_time) VALUES ('%s','%s','%s','%s','%s','%s');" % ( sno1,row[1], row[2],'NULL','NULL','NULL'))
                    else:
                        mycursor.execute("UPDATE visitor SET out_time='%s' WHERE v_number='%s' AND out_time='NULL';"%( row[1], row[2]))
            count+=1
mydb.commit()
