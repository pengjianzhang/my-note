#!/usr/bin/python3

import pandas as pd
import numpy as np

df1 = pd.read_csv("1.csv")


print(df1['Latency'].describe([.01, .05, .1, .25, .50, .75, .95, .99]))
