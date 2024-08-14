import pandas as pd
def check():
    A = pd.read_csv('data.csv')
    B = pd.read_csv('data1.csv')

    d_v_number= str(A['v_number'].tolist()[0])
    d_date= str(A['date'].tolist()[0])

    d1_v_number= B['v_number'].tolist()[:20]
    d1_date= B['date'].tolist()[:20]

    data1_dict = dict(zip(d1_date,d1_v_number))

    if(d_v_number in d1_v_number):
        for i,j in data1_dict.items():
            #print(j)
            if(j==d_v_number):
                if((i.split(" ")[0]==d_date.split(" ")[0]) and (i.split(" ")[1]==d_date.split(" ")[1]) and (i.split(" ")[2]==d_date.split(" ")[2]) and (i.split(" ")[3].split(":")[0]==d_date.split(" ")[3].split(":")[0]) and (i.split(" ")[4]==d_date.split(" ")[4])):
                    if((int(i.split(" ")[3].split(":")[1])-int(d_date.split(" ")[3].split(":")[1]))<2):
                        return 0
                        break
    return 1

