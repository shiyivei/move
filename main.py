#!/usr/bin/env python
# coding: utf-8

# 1. 关于pandas库的使用：主要用来从文件读取数据、将数据转换为易操作的dataFrame

# In[6]:


import pandas as pd

# 读取本地文件并将其转换为可操作的dataFrame
filename = 'water_data_EEBD6FE99C8B_tmp'
df_csv = pd.read_csv(filename + '.csv')

print(df_csv)


# 2. dataFrame(这里具体就是df_csv变量)可操作性非常强，可以任意对其进行行或者列数据整理，如下是对 acc_x  acc_z  acc_y 三列进行求和并保存为了新的列 add_xyz

# In[7]:


df_csv["add_xyz"] = df_csv["acc_x"] + df_csv["acc_z"] + df_csv["acc_y"]

print(df_csv)


# 3. 关于其它库的使用，如NumPy和SciPy，烦请参考 https://zhuanlan.zhihu.com/p/234935501
