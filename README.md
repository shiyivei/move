1. 运行python程序需要先安装Python环境，请至官网直接按流程安装即可

```
https://www.python.org/
```

2. 使用相关的库也需要先安装包管理工具pip

3. 使用pip安装库，如:

```
pip install pandas
pip install NumPy
...
```

4. 将相关的库引入python文件即可使用，如：

```
// as pd 是重命名，更容易使用
import pandas as pd
```

5. 本repo有两个代码文件，一个是ipynb结尾，另一个是py结尾，前者在数据处理方面更容易直观的体现

```
MacBook-Pro-10:python_data_analyze shiyivei$ ls
README.md 
main.ipynb 
main.py
water_data_EEBD6FE99C8B_tmp.csv //数据文件，可以替换为任意想要处理的数据
```

如果要将处理流程工程化，可以将其转换为py结尾的文件，py和ipynb 文件互转

```
jupyter nbconvert --to script 'main.ipynb'
```

```
ipynb-py-convert main.py main.ipynb
```



