# somescript
一些快捷通常使用的的脚本
import csv
import random
import pandas as pd
# dataframe = pd.DataFrame({'id':a,'b':b})
def creat_csv(file_name,lines,columns):
    with open(file_name,'w')as csvfile:
        writer = csv.writer(csvfile)
        yield_list = ["id"]
        for i in range(columns-1):
            yield_list.append("col"+str(i))
        print(yield_list)
        writer.writerow(yield_list)


        for i in range(10**8//lines,10**8+1,10**8//lines):
            row_list = [i]
            row_list.extend([random.randint(1,10**4) for i in range(columns - 1)])
            writer.writerow(row_list)
            if (i//(10**8//lines))%(10**4)== 0:
                print("had create line {}".format(str(i//(10**8//lines))))
# creat_csv(str(10**3)+'a.csv',10**3,10)
if __name__ == '__main__':
    creat_csv(str(10**6)+'a.csv',10**6,10)
    creat_csv(str(10**7)+'a.csv',10**7,10)
    creat_csv(str(10**8)+'a.csv',10**8,10)




# print(10**10)
# def read_csv(file_name):
#     with open(file_name,'r')as csv_file:
#         reader = csv.reader(csv_file)
#         for line in reader:
#             print(line)
# read_csv("a.csv")
