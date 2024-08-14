import csv
import pandas as pd

spl="[@!#$%^&*()<>?/\|}{~: ]"
spl1=list(spl)
with open("data.csv","r") as f:
    csvreader = csv.reader(f, delimiter=",")
    for row in csvreader:
        t=row[2]
        p=list(t)
        k=""
        for i in p:
            if i not in spl1:
                k=k+i
r = csv.reader(open("data.csv"))
lines = list(r)
lines[1][2] = k
print(lines[1][2])
writer = csv.writer(open("data.csv", 'w'))
writer.writerows(lines)
writer.close()

'''df = pd.read_csv("data.csv")
df.set_value(1, "v_number", k)
df.to_csv("data.csv", index=False)'''
