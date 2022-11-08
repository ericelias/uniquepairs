import itertools 
import pandas as pd
import numpy as np

data = pd.read_csv("/Users/EricElias/Desktop/book1 (2).csv")

target = data['Target'].tolist()
targetloc = data['TargetLocation'].tolist()

pair_order_targetlist = itertools.combinations(target,2)
targetlist = list(pair_order_targetlist)
pair_order_targetloclist = itertools.combinations(targetloc,2)
targetloclist = list(pair_order_targetloclist)

a,c = zip(*targetlist)
a,c = map(list,zip(*targetlist))
b,d = zip(*targetloclist)
b,d = map(list,zip(*targetloclist))

df = pd.DataFrame(np.column_stack([a,b,c,d]))
df.to_csv('/Users/EricElias/Desktop/MRpairs.csv')
