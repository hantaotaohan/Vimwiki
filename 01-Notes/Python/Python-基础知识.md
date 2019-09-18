# 数据

## 变量

- Python中的变量不需要声明.每一个变量在使用前都必须赋**,变量赋值后该变量才会被创建.
- Python中的变量就是变量,它没有类型,这里所说的"类型"是变量所指的内存中对象的类型.
- 等号 <kbd>=</kbd> 用来给变量赋值.
- 等号 <kbd>=</kbd> 运算符左边是变量名,等号 <kbd>=</kbd> 运算符的右边是储存在变量中的值.

```python
namestr = 'Azoht' #字符串变量
counter = 1000000 #整型变量
miles   = 1000.00 #浮点型变量
​```             #输出字符串为 Runoob
- 多个变-量赋值     #输出字符串为 Runoo

    Python允许同时为多个变量赋值.

​```python
a = b = c = 1                  # 变量 a , b ,** c 的值都为整形变量 1
a , b , c = 1 , 2 , 'text'     #这里是分别创建a为整形变量1,b为整形变量2,c为字符串test
```

## 注释

- Python中单行注释以井号 <kbd>#</kbd> 开头.
- Python中多行注释以三个**单引号** <kbd>\`\`\`</kbd> 或者**三个双引号** <kbd>&quot;&quot;&quot;</kbd> 将注释包括起来

## 数据类型

{% note danger %}
注意: 字符串 , 数字 , 元组是不可更改的对象.
{% endnote %}

### 字符串

- Python中的字符串用单引号 <kbd>`</kbd> 或 双引号 <kbd>&quot;</kbd> 括起来
- 字符串的截取的语法格式如下:
    **变量 [头下标 : 尾下标]**

    示例:
    ```python
    str = 'Runoob'
    print (str)             #输出字符串为 Runoob
    print (str[0:-1])       #输出字符串为 Runoo
    print (str[0])          #输出字符串为 R
    print (str[2:5])        #输出字符串为 noo
    print (str[2:])         #输出字符串为 noob
    print (str * 2)         #输出字符串为 RunoobRunoob
    print (str + 'TEST')    #输出字符串为 RunoobTEST
    ```
- 索引值以 0 为开始值, -1 为末尾的开始位置 (从左往右以 0 开始 , 从右往左以 -1 开始)
- 加号 <kbd>+</kbd> 是字符串的**连接符**
- 星号 <kbd>*</kbd> 是表示复制当前字符串 , 紧跟的数字为复制的次数
- Python 使用反斜杠 <kbd>\</kbd> 转义特殊字符 , 如果你不想让反斜杠发生转义 , 可以在字符串前面添加一个 <kbd>r</kbd> , 表示原始字符串

    示例:
    ```python
    print ('Ru\noob')       #输出
                            #Ru
                            #oob
    print (r'Ru\noob')      #输出
                            #Ru\noob
    ```

- 格式化字符串 (%s)

    示例:
    ```python
    str = '我叫 %s , 我的网站是 %s' %('Azoth' , 'https://www.azoth.top')
    print (str)

    # 得到的输出结果为
    # 我叫 Azoth , 我的网站是 https://www.azoth.top
    ```

### 数字型

- 包括: int , float , bool , complex(复数)
- 内置的 type() 函数可以用来查询变量所指的对象类型

    ```bash
    >>> a , b , c , d = 20 , 5.5 , True , 4+3j
    >>> print ( type(a) , type(b) , type(c) , type(d) )
    <class 'int'> <class 'float'> <class 'bool'> <class 'complex'>
    ```

- 数值运算

    ```python
    >>> 5 + 4   #加法
    9
    >>> 4.3 - 2 #减法
    2.3
    >>> 3 * 7   #乘法
    21
    >>> 2 / 4   #除法 , 得到一个浮点数
    0.5
    >>> 2 //4   #除法 , 得到一个整数
    0
    >>> 17 % 3  #取余数
    2
    >>> 2 ** 5  #乘方
    32
    ```

### 列表 (List)

- List (列表) 是 Python 中使用最频繁的数据类型.
- 列表可以完成大多数集合类的数据结构实现. 列表中元素的类型可以不相同,它支持数字,字符串甚至可以包含列表(所谓嵌套).
- 列表是写在方括号 <kbd>\[ \]</kbd>之间 , 用逗号 <kbd>,</kbd> 分隔开的元素列表.
- 和字符串一样, 列表同样可以被索引和截取, 列表被截取后返回一个包含所需元素的新列表.索引值以 0 为开始值 , -1 为从末尾的开始位置.
- 加号 <kbd>+</kbd> 是列表链接运算符 , 星号 <kbd>*</kbd> 是重复操作

    示例:
    ```python
    list = [ 'abcd' , 786 , 2.23 , 'runoob' , 70.2 ]
    lists = [ 123 , 'runoob' ]
    print (list)            #输出完整列表
    print (list[0])         #输出列表的第一个元素
    print (list[1:3])       #输出列表的第二个至第三个元素
    print (list[2:])        #输出列表的第三个元素至之后的所有元素
    print (lists * 2)       #输出两次列表
    print (list + lists)    #链接两个列表
    ```
    以上的输出结果为:
    ```python
    >>> ['abcd', 786, 2.23, 'runoob', 70.2]
    >>> abcd
    >>> [786, 2.23]
    >>> [2.23, 'runoob', 70.2]
    >>> [123, 'runoob', 123, 'runoob']
    >>> ['abcd', 786, 2.23, 'runoob', 70.2, 123, 'runoob']
    ```

- 更新列表

    语法为:
    <span id = 'green' > list [ 下标 ] = 更改的值 </span>

    ```python
    list = ['google', 'runoob', 1997 , 2000]
    print ('列表第三个元素为: ' , list[2])
    >>> 列表第三个元素为:  1997
    list [2] = 2019
    print ('列表第三个元素更新后的结果为: ' , list[2])
    >>> 列表第三个元素更新后的结果为:  2019
    ```

- 删除列表元素

    语法为:
    <span id = 'green' > del list [ 头下标 : 尾下标 ] </span>

    ```python
    list = ['google', 'runoob', 1997 , 2000]
    print ('原始列表: ' , list)
    >>> 原始列表:  ['google', 'runoob', 1997, 2000]
    del list[2]
    print ('删除列表第三个元素后的结果为: ' , list)
    >>> 删除列表第三个元素后的结果为:  ['google', 'runoob', 2000]
    ```

- 增加列表元素
    在列表末尾添加元素的语法为:
    <span id = 'green' > list.append ( 'Amazon' ) </span>

    ```python
    list = ['google', 'runoob', 1997 , 2000]
    list.append ('hahaha')
    print ('增加元素后的列表为: ' , list)
    >>> 增加元素后的列表为:  ['google', 'runoob', 1997, 2000, 'hahaha']
    ```

### 元组 (Tuple)

- 元组 (Tuple) 与列表类似 , 不同之处在于元组的元素不能够被修改. 元组写在小括号 <kbd>( )</kbd>里, 元素之间用逗号隔开
- 元组与字符串类似, 可以被索引且下标索引从 0 开始, -1 为从末尾开始的位置. 也可以进行截取

### 集合 (Set)

- 集合 (Set) 是由一个或数个形态各异的大小整体组成的, 构成集合的事务或对象称作元素或是成员
- 基本功能是进行成员的关系测试和**删除重复元素**
- 可以使用花括号 <kbd>{ }</kbd> 或者 **set()** 函数创建集合
    {% note danger %}
    注意: 创建一个空集合必须使用 set() 而不是 { } , 因为 { } 是用来创建一个空字典
    {% endnote %}
- 创建格式
    语法为:
    <span id = 'green' > 变量名 = {值1,值2} 或者 set(值1,值2)</span>

    示例:

    ```python
    student = {'Tom', 'Jim' , 'Mary' , 'Tom' , 'Jack' , 'Rose'}
    print (student) #输出集合 ,, 重复的元素被自动删除掉

    >>> {'Jim', 'Tom', 'Mary', 'Jack', 'Rose'}

    #=================================================================
    #-----------------------------成员测试-----------------------------
    #=================================================================
    if 'Rose' in student :
        print ('Rose 在集合student中 . )
    else:
        print ('Rose 不再集合student中 . )

    >>> Rose 在集合student中 .

    #=================================================================
    # -----------------------set 可以进行集合运算-----------------------
    #=================================================================
    a = set ('abracadabra')
    b = set ('aalacazam')
    print (a)

    >>> {'r', 'c', 'a', 'b', 'd'}

    print (a - b) # a 和 b 的差集

    >>> {'r', 'd', 'b'}

    print (a | b) # a 和 b 的并集

    >>> {'r', 'c', 'z', 'm', 'l', 'a', 'b', 'd'}

    print (a & b) # a 和 b 的交集

    >>> {'c', 'a'}

    print (a ^ b) # a 和 b 中不同时存在的元素

    >>> {'r', 'z', 'm', 'b', 'l', 'd'}
    ```

- 增加元素

    语法格式如下:
    <span id = 'green' > 集合名称 . add (需要添加的元素) </span>
    <span id = 'green' > 集合名称 . update (元素1 , 元素2 , 元素3) </span> 元素可以有多个 , 用逗号 <kbd>,</kbd> 分开 .

    示例: 将元素添加到集合 thisset 中 , 如果元素已经存在 , 则不进行任何操作 .

    ```python
    thisset = set (('google' , 'runoob', 'taobao'))
    thisset.add ('facebook')
    print (thisset)

    >>> {'facebook', 'google', 'taobao', 'runoob'}

    thisset = set (('google' , 'runoob', 'taobao'))
    thisset.update ({1 , 3})
    print (thisset)

    >>> {1, 3, 'google', 'taobao', 'runoob'}

    thisset.update ([1,4],[5,6])
    print (thisset)

    >>> {1, 3, 4, 'google', 'taobao', 5, 6, 'runoob'}
    ```

- 删除元素

     语法格式:
     <span id = 'green' > 集合名称 . discard(要删除的元素) </span>
     <span id = 'green' > 集合名称 . remove(要删除的元素) </span> 将元素从集合中移除 , 如果元素不存在 , 则会发生错误
     <span id = 'green' > 集合名称 . pop( ) </span> 在交互模式中 , pop是删除集合的第一个元素 (排序后的集合的第一个元素)

- 查找元素

    语法格式如下:
    <span id = 'green' > 元素 in 集合名称 </span>

    示例:

    ```python
    >>> thisset = set (('google' , 'runoob', 'taobao'))
    >>> 'runoob' in thisset
    True
    >>> 'fackbook' in thisset
    False
    ```

- 修改元素

    **先删除 , 再添加**

- 计算元素个数

    语法格式如下:
    <span id = 'green' > len(集合名称) </span>  **也适用于字典, 列表,元素

    示例:

    ```python
    >>> thisset = set (('google' , 'runoob', 'taobao'))
    >>> len(thisset)
    3
    ```

### 字典 (Dictionary)

