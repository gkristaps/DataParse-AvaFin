import json 
import pandas as pd
import pymssql

dfs = []
with open("/Users/macbookair/Desktop/data_1.txt") as f:
    for line in f:
        
        data = json.loads(line)
        df = pd.json_normalize(data,
                               record_path='history',\
                               record_prefix='history.',\
                               meta=['id','salary','status',['bank','issued'],['bank','status'],['non_bank','issued'],['non_bank','status']]\
                               )
        dfs.append(df)

column_order = ['id','salary','status','bank.issued','bank.status','non_bank.issued','non_bank.status','history.status','history.value']
df = pd.concat(dfs).reset_index().reindex(columns=column_order)

insertDf = list(df.itertuples(index=False, name=None))
insertStr = "INSERT INTO dbo.parsed_data([id],[salary],[status],[bank.issued],[bank.status],[non_bank.issued],[non_bank.status],[history.status],[history.value])\
                    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)"

server = 'localhost'
database = 'avafin_task'  
user = 'sa' 
password = 'yourStrong(!)Password'

conn = pymssql.connect(server, user, password, database)
cursor = conn.cursor()

cursor.executemany(insertStr,insertDf)
conn.commit()

conn.close())
