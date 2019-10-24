import random
import csv
from tqdm import tqdm
import time, threading


def Data(fileName,ratio1,ratiol2,ratiol3,ratiol4):
  file =open(fileName,'r')
  lines=file.readlines()
  row=[]
  column=[]
  for line in lines:
      row.append(line.split(','))
  for col in row:
      column.append(col[0])
  column = list(map(int, column))
  ids = list(set(column))
  count=len(ids)  #95319
  alist=random.sample(ids,int(count*ratio1))
  blist=random.sample(list(set(ids)-set(alist)),int(count*ratiol2))
  clist=random.sample(list(set(ids)-set(alist)-set(blist)),int(count*ratiol3))
  dlist=random.sample(list(set(ids)-set(alist)-set(blist)-set(clist)),int(count*ratiol4))

  data1 = []
  data2 = []
  data3 = []
  data4 = []

  csv_file=open(fileName)
  csv_reader_lines = csv.reader(csv_file)
  data=[]    #
  for one_line in tqdm(csv_reader_lines):
      data.append(one_line)
  for i in tqdm(range(len(row))):
      if int(data[i][0]) in alist :
            data1.append(data[i])
      elif int(data[i][0]) in blist:
            data2.append(data[i])
      elif int(data[i][0]) in clist:
            data3.append(data[i])
      elif int(data[i][0]) in dlist:
            data4.append(data[i])
			
  s_n=0
  s_p=0
  n_r=0
  n_p=0
  p_r=0
  n_d=0
  r_n=0
  r_p=0
  
  for i in  tqdm(range(len(data1))):
     if (int(data1[i][1]) in blist and int(data1[i][2])==1):
         s_n=s_n+1
     if (int(data1[i][1]) in clist and int(data1[i][2])==-1):
         s_p=s_p+1
  s_edge=s_n+s_p

  for i in  tqdm(range(len(data2))):
     if (int(data2[i][1]) in dlist and int(data2[i][2])==-1):
         n_r=n_r+1
     if (int(data2[i][1]) in clist and int(data2[i][2])==-1):
         n_p=n_p+1
  n_edge=n_r+n_p

  for i in  tqdm(range(len(data3))):
     if (int(data3[i][1]) in dlist and int(data3[i][2])==1):
          p_r= p_r+1
     if (int(data3[i][1]) in blist and int(data3[i][2])==1):
          n_d= n_d+1
  p_edge=p_r+n_d


  for i in  tqdm(range(len(data4))):
     if (int(data4[i][1]) in blist and int(data4[i][2])==1):
         r_n=r_n+1
     if (int(data4[i][1]) in clist and int(data4[i][2])==-1):
         r_p=r_p+1
  r_edge=r_n+r_p

 

if __name__ == "__main__":
    Data("soc-sign-epinions.csv",x1,x2,x3,x4)




