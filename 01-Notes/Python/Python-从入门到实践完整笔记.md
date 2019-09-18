# 第一章 起步

在这一章中,你将运行自己的第一个程序 --hello_world.py.为此你需要检查自己计算机是否安装了Python,如果没有安装,你需要安装他.你还需要安装一个文本编辑器,用于编写Python程序.

## 搭建编程环境

本文所有示例及教学都是以Python3为主,所以以下介绍Python3的安装步骤

### Python3

如果您的电脑内安装的是Python2,那么请尽快升级Python3版本为好,因为这样你就能使用最新的Python3版本了.

### 运行Python代码片段

Python安装后自带了一个在终端窗口中运行的解释器,让你无需保存并运行python程序以及代码片段

### Hello World程序

编程界刚接触一门新的语言时,如果首先使用它来编写一个在屏幕上面显示消息为 "Hello World"的程序,将给你带来好运.

要使用Python来编写这种Hello World程序只需要一行代码.

```python
print('Hello world')
```

## 在不同的操作系统中搭建Python编程环境

Python是一种跨平台编程语言,这也就意味着它能够运行在所有市面上常见的操作系统中.在所有安装了Python的电脑上,都能够运行你编写的任何Python程序

### 在Linux系统中搭建Python编程环境

- 检查Python版本
    在系统中运行Terminal , 打开终端窗口,为了确定以下是否安装了Python3 , 执行命令 python3 得到输出并获得当前python的版本
- 安装文本编辑器
    可以选择安装Sublime text 或者 Vscode编辑器来写代码
- 运行Hello World程序
    新建文件并保存为hello.py文件,并在内添加如下代码
    ```python
    print('hello python world!')
    ```
    在终端直接执行 python3 hello.py
- 在终端会话中运行Python代码
    打开终端并执行命令
    ```python
    >>> print("hello python interpreter!")
    hello python interpreter!
    >>>
    ```
    消息将直接打印到当前终端窗口中

### 在Windows系统中搭建Python编程环境

- 安装Python
    首先,检查系统是否安装了Python . 在终端窗口输入 python 如果出现了Python提示符(>>>), 就说明你的系统安装了Python.如果没有出现那么请安装 Windows Python安装程序 , 下载安装程序后,并运行它.
    {% note danger %}
    请务必选中复选框Add Python to PATH
    {% endnote %}
- 启动Python终端会话
    通过配置系统,让其能够在终端会话中运行Python,打开终端出昂口运行python,如果出现了Python提示符(>>>),就说明Windows找到了你刚刚安装的Python版本
- 在终端会话中运行Python
    在Python会话中执行下面的命令,并确认看到了输出"hello python world!" .
    ```python
    >>> print("hello python world!")
    hello python world!
    >>>
    ```

# 第二章 变量和简单的数据类型

在这一章中, 你将学习可在Python程序中使用各种数据, 还将学习如何将数据储存到变量中, 以及如何在程序中使用这些变量.

## 运行hello_world.py时发生的情况

运行hello_world.py时, Python都做了些什么呢? 下面来研究一下. 实际上, 即便是运行简单的程序, Python所做的工作也相当多

hello_world.py
```python
print("hello python world!")
hello python world!
```
运行hello_world.py时,末尾的.py指出这是一个Python程序,因此编辑器使用Python **解释器** 来运行他.Python解释器读取整个程序,确定其中每个单词的含义.例,看到单词print的时候,解释器就会将括号中的内容打印到屏幕,而不会管括号中的内容是什么.

## 变量

下面来尝试在hello_world.py中使用一个变量. 在这个文件开头添加一行代码, 并对第二行的代码进行修改,例如:

```python
message = "hello python world!"
print(message)
```
运行这个程序.你会发现,输出与以前一样 , 我们添加了一个名为 *message* 的 **变量** .每个变量都储存了一个 **值** —— 与变量相关联的信息. 在这里,储存的值为文本"hello python world!" .

线面来扩展这个程序:修改hello_world.py,使其在打印一条消息. 为此,在hello_world.py中添加一个空行,再添加下面两行代码:

```python
message = "hello python world!"
print (message)

message = "hello python crash course world!"
print (message)
```

如果现在运行这个程序,将看到两行输出:
```python
hello python world!
hello python crash course world!
```

{% note danger %}
在程序中可以随时修改变量的 **值** ,而Python将始终记录变量的 **最新值**
{% endnote %}

### 变量的命名和使用

在Python中使用变量的时候,需要遵守一些规则和指南.违反这些规则将引发错误.请务必牢记以下有关变量的规则.

- 变量名只能包含字母,数字和下划线.变量名可以以字母或下划线打头,但不能以数字打头
    例如:可以将变量命名为message_1 ,但不能将其命名为1_message .
- 变量名不能包含空格, 但可以用下划线来分隔其中的单词.
    例如:变量名greeting_message可行,但变量名greeting message就会引发错误
- 不要将Python的关键字和函数名作为变量名,不要使用Python保留用于特殊用途的单词
    例如:print . 等
- 变量名应该简短又具有描述性.
    例如: name比n好 , student_name比s_n好, name_length比length_of_persons_name好.
- 慎用消息字母l和大写字母O,因为它们可能被人错看成数字的1和0 .

{% note danger %}
就目前而言,应使用小写的Python变量名. 在变量名中使用大写字母虽然不会导致错误, 但避免使用大写字母是个不错的主意.
{% endnote %}

### 使用变量时避免命名错误

我将有意的编写一些引发错误的代码.请输入下面的代码

```python
message = "hello python crash course reader!"
print (mesage)
```

运行上面代码后Python解释器会traceback:
```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'mesage' is not defined
```
解释器指出, 文件的第一行存在错误, 并且mesage这个变量是未定义的:Python无法识别你提供的变量名, 通常名称错误意味着两种情况: **要么是使用变量前忘记给它赋值, 要么是输入的变量名称拼写不正确.**

这个示例中,第二行的变量名message中遗漏了字母s . Python解释器不会对代码做拼写检查, 但要求变量名的拼写一致. 例如, 如果在代码的另一个底方也将message错误地拼写成了mesage, 结果将如何呢?

```python
mesage = "hello python crash course reader!"
print (mesage)
```
那么在这种情况下, 程序将成功的运行:
```
hello python crash course reader!
```

{% note danger %}
python不会关心拼写是否正确,因此创建变量名和编写代码的时候,你无需考虑英语中的拼写和语法规则
{% endnote %}

#### <span id = 'blue' > 练习测验 </span>
1. 简单消息:将一条消息储存到变量中, 再将其打印出来.
2. 多条简单萧萧: 将一条消息储存到变量中,将其打印出来;再将变量的值修改为一条新消息, 并将其打印出来.

#### <span id = 'green' > 练习答案 </span>
1. simple_message.py
    ```python
    message = "this is first message"
    print(message)
    ```
    ```python
    this is first message
    ```
2. simples_messages.py
    ```python
    message = "this is first message"
    print (message)
    message = "this is second message"
    print (message)
    ```
    ```python
    this is first message
    this is second message
    ```

## 字符串

**字符串** 就是一系列字符. 在Python中, 用引号括起来的都是字符串, 其中的引号可以实单引号, 也可以是双引号, 如下所示

```
"this is a string . "
'this is also a string . "
```

这种灵活性让你能够在字符串中包含引号和撇号:
```
`i like "python" is book'
"i like 'python' is language"
```

### 使用方法修改字符串的大小写

对于字符串可以执行最简单的操作之一就是修改其中单词的大小写.

name.py
```python
>>> name = "ada lovelace"
>>> print (name.title())
Ada Lovelace
```

{% note danger %}
<kbd>.title()</kbd>方法 . 以首字母大写的方式显示每个单词
<kbd>.upper()</kbd>方法 . 所有字母以大写的方式显示
<kbd>.lower()</kbd>方法 . 所有的字母以小写的方式显示
{% endnote %}

### 合并(拼接)字符串

在很多情况下都需要拼合字符串. 例如,你可能想将姓和名储存在不同的变量中, 等要显示姓名的时候再将它们合二为一:

```python
first_name = 'ada'
last_name = 'lovelace'
full_name = first_name + " " + last_name
print (full_name)
```
```
ada lovelace
```
{% note danger %}
Python使用加号(+)来合并字符串.
{% endnote %}

下面是一个完整的例子:

```python
first_name = "ada"
last_name = "lovelace"
full_name = first_name + " " + last_name
print("hello, " + full_name.title() + "!")
```
```
hello, Ada Lovelace!
```

### 使用制表符或者换行符来添加空白

在编程中, **空白** 泛指任何非打印字符, 如空格, 制表符和换行符.

{% note danger %}
<kbd>\t</kbd> 用以添加制表符
{% endnote %}

```python
>>> print("python")
python
>>> print("\tpython")
    python
```

{% note danger %}
<kbd>\n</kbd> 用以添加换行符
{% endnote %}

```python
>>> print ("Languages:\nPython\nC\nJavaScript")
Languages
C
JavaScript
```

还可以在同一个字符串中同时包含制表符和换行符.

```python
>>> print("Languages:\n\tPython\n\tC\n\tJavaScript")
Languages:
        Python
        C
        JavaScript
```

### 删除空白

在程序中, 额外的空白对于程序来说, 确实两个不同的字符串

{% note danger %}
<kbd>.rstrip()</kbd> 方法,删除末尾的空白
<kbd>.lstrip()</kbd> 方法,删除开始的空白
<kbd>.strip()</kbd> 方法,删除两端的空白
{% endnote %}

```python
>>> favorite_language = ' python '
>>> favorite_language.rstrip()
' python'
>>> favorite_language.lstrip()
'python '
>>> favorite_language.strip()
'python'
```

### 使用字符串时避免语法错误

**语法错误** 是一种时不时会遇到的错误.在单引号阔起的字符串中,如果包含撇号,就将导致错误.下面演示了如何正确地使用单引号和双引号.

apostrophe.py
```python
message = "one of python's strengths is its diverse community."
print(message)
```
```
one of python's strengths is its diverse community.
```
撇号位于两个双引号之间,因此Python解释器能够正确理解这个字符串,但是如果你是用单引号,Python将无法正确确定字符串的结束位置.

#### <span id = 'blue' > 练习测试 </span>
1. 个性化消息: 将用户的姓名存到一个变量中，并向该用户显示一条消息.显示的消息 非常简单，如"Hello Eric, would you like to learn some Python today?"

2. 调整名字的大小写:将一个任命储存到一个变量中,在意小写,大写和首字母大写的方式显示这个人名

3. 名言:找一句名言,将这个名人的姓名和他的名言打印出来.输出应类似于下面这样(包括引号):Albert Einstein once said, “A person who never made a mistake never tried anything new.”

4. 名言2: 重复练习3, 但将名人的姓名储存在变量famous_person中, 在创建要显示的消息,并将其储存在变量message中,然后打印这条消息.

5. 剔除人名中的空白: 储存一个人名,并在其开头和末尾都包含一些空白字符.务必至少使用字符组合"\t" 和 "\n" 各一次.
    打印这个人名,以显示其开头和末尾的空白.然后,分别使用剔除函数lstrip(),rstrip()和strip()对人名进行处理,并将结果打印出来.

#### <span id = 'green' > 练习结果 </span>

1. name.py
    ```python
    name = 'azoth'
    print ("hello " + name + " , would you like to learn some Python today?")
    ```
    ```
    hello azoth , would you like to learn some Python today?
    ```

2. name_title_upper_lower.py
    ```python
    name = 'azoth'
    print ("hello " + name.title() + " , would you like to learn some Python today?")
    print ("hello " + name.upper() + " , would you like to learn some Python today?")
    print ("hello " + name.lower() + " , would you like to learn some Python today?")
    ```
    ```
    hello Azoth , would you like to learn some Python today?
    hello AZOTH , would you like to learn some Python today?
    hello azoth , would you like to learn some Python today?
    ```

3. quotes.py
    ```python
    name = 'Azoth'
    quoteses = "A person who never made a mistake never tried anything new."
    name_quotes = name + " once said " + quoteses
    print (name_quotes)
    ```
    ```
    Azoth once said A person who never made a mistake never tried anything new.
    ```

4. quotes.py
    ```python
    famous_person = 'Azoth'
    message = "A person who never made a mistake never tried anything new."
    name_quotes = famous_person + " once said " + message
    print (name_quotes)
    ```
    ```
    Azoth once said A person who never made a mistake never tried anything new.
    ```

5. strip_name.py
    ```python
    name = '\n\tazoth\t'
    print (name)
    ```
    ```

            azoth
    ```
    ```python
    print (name.lstrip())
    print (name.rstrip())
    print (name.strip())
    ```
    ```
    azoth

            azoth
    azoth
    ```

## 数字

Python 根据数字的用法以不同的方式处理它们.监狱整数使用起来最简单,下面就先来看看Python是如何管理它们的.

### 整数

在Python中,可对整数执行加(+)减(-)乘(*)除(/)运算.

```python
>>> 2+3
5
>>> 3-2
1
>>> 2*3
6
>>> 3/2
1.5
```

在终端会话中,Python直接返回运算结果.Python使用**两个乘号**表示乘方运算:
```python
>>> 3**2
9
>>> 3**3
27
```

Python支持运算的次序
```python
>>> 2+ 3*4
14
>>> (2+3) * 4
20
```

**空格不会影响Python计算表达式的方式**

### 浮点数

Python将带小数点的数字都称为**浮点数**

### 使用函数str()避免类型错误

如果经常在消息中使用变量的值.例如,你要祝人生日快乐,可能会编写类似于下面的代码

birthday.py
```python
age = 23
message = "happy " + age + "re birthday!"
print (message)
```
```python
File "birthday.py", line 2, in <module>
    message = "happy " + age + "re birthday!"
TypeError: must be str, not int
```

你可能认为,上述代码会显示简单的生日祝福,但如果你运行了这个代码将发现他会引发错误,这是一个类型错误,Python发现你使用了一个值为整数的(int)变量,但他不知道该如何解读这个值,所以可以调用函数 <kbd>str()</kbd> , 它让Python将非字符串值表示为字符串:

```python
age = 23
message = "happy " + str(age) + "re birthday!"
print (message)
```
```
happy 23re birthday!
```

{% note danger %}
<kbd>str()</kbd> 函数,将非字符串值表示为字符串
{% endnote %}

#### <span id = 'blue' > 练习测试 </span>

1. 数字8: 编写4个表达式,他们分别使用加法,减法,乘法,除法运算,但结果都是数字8.为使用print语句来显示结果,务必将这些表达式用括号括起来,也就是说,你应该编写4行类似于下面的代码:print(5+3)

2. 最喜欢的数字: 将你最喜欢的数字储存在一个变量中,在使用这个变量创建一条消息,指出你最喜欢的数字,然后将这条消息打印出来.

#### <span id = 'green' > 练习结果 </span>

1. number8.py
    ```python
    print(4+4)
    print(12-4)
    print(2*4)
    print(64/8)
    print(64//8)
    ```
    ```
    8
    8
    8
    8.0
    8
    ```

2. likenumber.py
    ```python
    number = 8
    message = "i like number is "
    print (message + str(number))
    ```
    ```
    i like number is 8
    ```

## 注释

大多数编程语言中,注释都是一项很有用的功能,**注释**能够使用自然语言在程序中添加说明

### 如何编写注释

在Python中,注释使用井号(#)标识.警号后面的内容都会被Python解释器忽略.

comment.py
```python
# 打印向大家问好
print("hello python people!")
```
python解释器将忽略第一行,只执行第二行.
```
hello python people!
```

# 第三章 列表简介

本章和下一章中,将学习列表是什么以及如何使用列表元素.列表让你能够在一个地方储存成组的信息,其中可以只包含几个元素,也可以包含数百万个元素.

## 列表是什么

**列表**由一系列按特定顺序排列的元素组成

在Python中,用方括号([])来表示列表,并用逗号来分隔其中的元素.

bicycles.py
```python
bicycles = ['trek','cannondale','redline','specialized']
print (bicycles)
```
如果你让Python将列表打印出来,Python将打印列表的内部表示,**包括方括号**:
```python
['trek', 'cannondale', 'redline', 'specialized']
```
如果这不是你要让用户看到的输出,下面来学习如何访问列表元素.

### 访问列表元素

列表是有序集合,因此要访问列表的任何元素,只需将该元素的**位置**或**索引**告诉Python即可,要访问列表元素,可指出**列表的名称**,在指出**元素的索引**,并将其**放在方括号内**

```python
bicycles = ['trek','cannondale','redline','specialized']
print(bicycles[0])
```
```
trek
```
这正是你要让用户看到的结果结果——整洁,干净的输出.

还可以对任何列表元素调用之前介绍的字符串方法例如,可使用方法 <kbd>.title()</kbd>
```python
bicycles = ['trek','cannondale','redline','specialized']
print(bicycles[0].title())
```
```
Trek
```

### 索引从0开始而不是从1开始

在Python中,第一个列表元素的索引为0, 而不是1, 在大多数编程语言中都是如此.

下面的代码访问列表元素1和3处的自行车:
```python
bicycles = ['trek','cannondale','redline','specialized']
print(bicycles[1])
print(bicycles[3])
```
```
cannondale
specialized
```

Python为访问最后一个列表元素提供了一种特殊语法.通过将索引指定为-1,可让Python返回最后一个列表元素:
```python
bicycles = ['trek','cannondale','redline','specialized']
print(bicycles[-1])
```
```
specialized
```

### 使用列表中的各个值

可以像使用其他变量一样使用列表中的各个值.

```python
bicycles = ['trek','cannondale','redline','specialized']
message = "my first bicycle was a " + bicycles[0] + "."
print (message)
```
```
my first bicycle was a trek.
```

#### <span id = 'blue' > 练习测试 </span>

1. 姓名: 将一些朋友的姓名储存在一个列表中,并将其命名为names.依次访问该列表中的每一个元素,从而将每个朋友的姓名都打印出来.

2. 问候语: 继续使用练习1中的列表,但不打印每个朋友的姓名,而为每个人打印一条消息.每条消息都包含相同的问候语,但抬头为相应的朋友的姓名.

3. 自己的列表: 想想你喜欢的通勤方式,如骑摩托车或开车,并创建一个包含多种通勤方式的列表.根据该列表打印一系列有关这些通勤方式的宣言,如"i would like to own a honda motorcycle".

#### <span id = 'green' > 练习结果 </span>

1. name.py
    ```python
    names = ['xiaoming','xiaoli','yangwei','zhangyang','zhangge','liuyong']
    print (names[0].title())
    print (names[1].title())
    print (names[2].title())
    print (names[3].title())
    print (names[4].title())
    print (names[5].title())
    ```
    ```
    Xiaoming
    Xiaoli
    Yangwei
    Zhangyang
    Zhangge
    Liuyong
    ```

2. names.py
    ```python
    names = ['xiaoming','xiaoli','yangwei','zhangyang','zhangge','liuyong']
    message = " . see you  torrow . "
    print (names[0].title() + message)
    print (names[1].title() + message)
    print (names[2].title() + message)
    print (names[3].title() + message)
    print (names[4].title() + message)
    print (names[5].title() + message)
    ```
    ```
    Xiaoming . see you  torrow .
    Xiaoli . see you  torrow .
    Yangwei . see you  torrow .
    Zhangyang . see you  torrow .
    Zhangge . see you  torrow .
    Liuyong . see you  torrow .
    ```

3. by.py
    ```python
    by = ['car','bus','byke']
    print ('i very like by ' + by[0].title() + ' work!' )
    print ("i don't like by " + by[1].title() + ' work!' )
    print ("i  like by " + by[2].title() + ' work!' )
    ```
    ```
    i very like by Car work!
    i don't like by Bus work!
    i  like by Byke work!
    ```

## 修改,添加和删除元素

你创建的大多数列表都将是动态的,这意味着列表创建后,将随着程序的运行增删元素.

### 修改列表元素

修改列表元素的语法与访问列表元素的语法类似.要修改列表元素,可指定**列表名**和**要修改元素的索引**,在**指定该元素的新值**

motorcycles.py
```python
motorcycles = ['honda','yamaha','suzuki']
print (motorcycles)

motorcycles[0] = 'ducati'
print(motorcycles)
```
```python
['honda', 'yamaha', 'suzuki']
['ducati', 'yamaha', 'suzuki']
```

### 在列表中添加元素

你可能处于多种原因要在列表中添加新的元素.

- 在列表末尾添加元素

    <kbd>.append('值')</kbd> 方法为列表末尾添加元素

    ```python
    motorcycles = ['honda','yamaha','suzuki']
    motorcycles.append('ducati')
    print (motorcycles)
    ```
    ```
    ['honda', 'yamaha', 'suzuki', 'ducati']
    ```

- 在列表中插入元素

    <kbd>.insert(索引位置,'值')</kbd> 方法为列表的任何位置添加新元素

    ```python
    motorcycles = ['honda','yamaha','suzuki']
    motorcycles.insert(0,'ducati')
    print(motorcycles)
    ```
    ```
    ['ducati', 'honda', 'yamaha', 'suzuki']
    ```

- 从列表中删除元素, 使用del语句删除元素

    <kbd>del 列表名称[索引位置]</kbd> del语句用来删除元素

    ```python
    motorcycles = ['honda','yamaha','suzuki']
    del motorcycles[0]
    print (motorcycles)
    ```
    ```
    ['yamaha', 'suzuki']
    ```

- 使用方法 pop() 删除元素

    <kbd>.pop()</kbd> 方法,删除**最后一个**元素后还可以继续使用它的值

    ```python
    motorcycles = ['honda','yamaha','suzuki']
    poped = motorcycles.pop()
    print(motorcycles)
    print(poped)
    ```
    ```
    ['honda', 'yamaha']
    suzuki
    ```

- 根据值删除元素

    <kbd>.remove('要删除的值')</kbd> 方法,根据值删除元素

    ```python
    motorcycles = ['honda','yamaha','suzuki']
    motorcycles.remove('yamaha')
    print(motorcycles)
    ```
    ```
    ['honda', 'suzuki']
    ```

#### <span id = 'blue' > 测试练习 </span>

1. 嘉宾名单：如果你可以邀请任何人一起共进晚餐（无论是在世的还是故去的），你会邀请哪些人？请创建一个列表，其中包含至少3个你想邀请的人；然后，使用这个列表打印消息，邀请这些人来与你共进晚餐。修改嘉宾名单：你刚得知有位嘉宾无法赴约，因此需要另外邀请一位嘉宾。以完成练习3-4时编写的程序为基础，在程序末尾添加一条print语句，指出哪位嘉宾无法赴约。修改嘉宾名单，将无法赴约的嘉宾的姓名替换为新邀请的嘉宾的姓名。再次打印一系列消息，向名单中的每位嘉宾发出邀请。

2. 添加嘉宾：你刚找到了一个更大的餐桌，可容纳更多的嘉宾。请想想你还想邀请哪三位嘉宾。以完成练习3-4或练习3-5时编写的程序为基础，在程序末尾添加一条print语句，指出你找到了一个更大的餐桌。使用insert()将一位新嘉宾添加到名单开头。使用insert()将另一位新嘉宾添加到名单中间。使用append()将最后一位新嘉宾添加到名单末尾。打印一系列消息，向名单中的每位嘉宾发出邀请。

3. 缩减名单：你刚得知新购买的餐桌无法及时送达，因此只能邀请两位嘉宾。以完成练习3-6时编写的程序为基础，在程序末尾添加一行代码，打印一条你只能邀请两位嘉宾共进晚餐的消息。使用pop()不断地删除名单中的嘉宾，直到只有两位嘉宾为止。每次从名单中弹出一位嘉宾时，都打印一条消息，让该嘉宾知悉你很抱歉，无法邀请他来共进晚餐。对于余下的两位嘉宾中的每一位，都打印一条消息，指出他依然在受邀人之列。使用del将最后两位嘉宾从名单中删除，让名单变成空的。打印该名单，核实程序结束时名单确实是空的。

#### <span id = 'green' > 练习答案 </span>

1. guest_list.py
    ```python
    g_list = ['name1','name2','name3','name4','name5','name6']
    message = " , i want togeter have dinner"
    print (g_list[0].title() + message)
    print (g_list[1].title() + message)
    print (g_list[2].title() + message)
    print (g_list[3].title() + message)
    print (g_list[4].title() + message)
    print (g_list[5].title() + message)
    print (g_list[5].title() + ", because have things")
    g_list[5] = 'name7'
    print (g_list[5].title() + message)
    ```

2. add_list.py
    ```python
    g_list = ['name1','name2','name3','name4','name5','name6']
    g_list.insert(0,'name0')
    g_list.insert(0,'name01')
    g_list.append('name7')
    print(g_list)
    ```

3. pop_list.py
    ```python
    g_list = ['name1','name2','name3','name4','name5','name6']
    g_list.pop()
    g_list.pop()
    g_list.pop()
    g_list.pop()
    print(g_list)
    del g_list[-1]
    del g_list[0]
    print(g_list)
    ```

## 组织列表

在创建的列表中, 元素的排列顺序常常是无法预测的,因为你并非总能控制用户提供数据的顺序.如果需要调整排列顺序.Python提供了很多组织列表的方式, 可根据具体情况选用.

### 使用方法sort()对列表进行永久性排序

{% note danger %}
<kbd>sort()</kbd> 方法,对列表永久性排序,可选参数为revers=True
{% endnote %}

```python
cars = ['bmw','audi','toyota','subaru']
cars.sort()
print(cars)
```
```
['audi', 'bmw', 'subaru', 'toyota']
```

{% note danger %}
<kbd>sort(reverse=True)</kbd> 方法,reverse参数可以对对列表反转排序
{% endnote %}

```python
cars = ['bmw','audi','toyota','subaru']
cars.sort(reverse=Ture)
print(cars)
```
```
['toyota', 'subaru', 'bmw', 'audi']
```

### 使用函数sorted()对列表进行临时排序

{% note danger %}
<kbd>sorted(列表名称)</kbd> 函数,对列表进行临时排序
{% endnote %}

### 倒着打印列表

{% note danger %}
<kbd>reverse()</kbd> 方法,永久性反转列表元素的排列顺序
{% endnote %}

```python
cars = ['bmw','audi','toyota','subaru']
cars.reverse()
print(cars)
```
```
['subaru', 'toyota', 'audi', 'bmw']
```

### 确定列表的长度

{% note danger %}
<kbd>len(列表名称)</kbd> 函数,可快速获得列表的长度
{% endnote %}

```python
cars = ['bmw','audi','toyota','subaru']
print (len(cars))
```
```
4
```

#### <span id = 'blue' > 练习测试 </span>

1. 放眼世界：想出至少5个你渴望去旅游的地方。
    - 将这些地方存储在一个列表中，并确保其中的元素不是按字母顺序排列的。
    - 按原始排列顺序打印该列表。不要考虑输出是否整洁的问题，只管打印原始Python列表。
    - 使用sorted()按字母顺序打印这个列表，同时不要修改它。
    - 再次打印该列表，核实排列顺序未变。
    - 使用sorted()按与字母顺序相反的顺序打印这个列表，同时不要修改它。
    - 再次打印该列表，核实排列顺序未变。
    - 使用reverse()修改列表元素的排列顺序。打印该列表，核实排列顺序确实变了。
    - 使用reverse()再次修改列表元素的排列顺序。打印该列表，核实已恢复到原来的排列顺序。
    - 使用sort()修改该列表，使其元素按字母顺序排列。打印该列表，核实排列顺序确实变了。
    - 使用sort()修改该列表，使其元素按与字母顺序相反的顺序排列。

2. 晚餐嘉宾：在完成练习3-4~练习3-7时编写的程序之一中，使用len()打印一条消息，指出你邀请了多少位嘉宾来与你共进晚餐。

3. 尝试使用各个函数：想想可存储到列表中的东西，如山岳、河流、国家、城市、语言或你喜欢的任何东西。编写一个程序，在其中创建一个包含这些元素的列表，然后，对于本章介绍的每个函数，都至少使用一次来处理这个列表。

#### <span id = 'green' > 练习结果 </span>

1. world.py
    ```python
    world = ['z','b','y','d','e']
    print (world)
    print (sorted(world))
    print (sorted(world))
    print (world)
    print (sorted(world,reverse=True))
    print (world)
    world.reverse()
    print (world)
    world.reverse()
    print (world)
    world.sort()
    print (world)
    world.sort(reverse=True)
    print (world)
    ```

2. pople.py
    ```python
    world = ['z','b','y','d','e']
    print (len(world))
    ```

3. all.py
    ```python
    alls = ['中国','美国','水果','Python']
    print (alls)
    alls.sort()
    print (alls)
    alls.sort(reverse=True)
    print(sorted(alls))
    print(sorted(alls,reverse=True))
    alls.reverse()
    print(alls)
    ```

# 第四章 操作列表

在上面一个章节中,你学会了如何创建简单的列表,还学习了如何操作列表元素.在这一章节中,你将学习如何遍历整个列表.

## 遍历整个列表

经常需要遍历列表的所有元素,对每个元素执行相同的操作,可以使用Python中的for循环

下面使用for循环来打印魔术师名单中的所有名字

magicians.py
```python
magicians = ['alice','david','carolina']
for magician in magicians:
    print(magician)
```
```
alice
david
carolina
```

我们可以这样理解for循环

> **for** 从循环集里提取出的值  **in**  要循环的序列,列表,字符串等 **:**

### 在for循环中执行更多的操作

在for循环中,可以对每个元素执行任何操作.下面来扩展一下前面的示例,对于每位魔术师,都打印一条消息.
```python
magicians = ['alice','david','carolina']
for magician in magicians:
    print(magician.title() + ", that was a great trick")
```
```
Alice, that was a great trick
David, that was a great trick
Carolina, that was a great trick
```

再添加一行代码,告诉每位魔术师,我们期待他的下一次表演
```python
magicians = ['alice','david','carolina']
for magician in magicians:
    print(magician.title() + ", that was a great trick")
    print("i can't wait to see your next trick, " + magician.title() + ". \n")
```
```
Alice, that was a great trick
i can't wait to see your next trick, Alice.

David, that was a great trick
i can't wait to see your next trick, David.

Carolina, that was a great trick
i can't wait to see your next trick, Carolina.
```

### 在for循环结束后执行一些操作

for循环结束后再怎么做呢? 通常,需要提供总结性输出或接着执行程序必须完成的其他任务.

**在for循环后面, 没有所进的代码都只执行一次, 而不会重复执行.
```python
magicians = ['alice','david','carolina']
for magician in magicians:
    print(magician.title() + ", that was a great trick")
    print("i can't wait to see your next trick, " + magician.title() + ". \n")
print("Thank you , everyone . that was a great magic show!")
```
```
Alice, that was a great trick
i can't wait to see your next trick, Alice.

David, that was a great trick
i can't wait to see your next trick, David.

Carolina, that was a great trick
i can't wait to see your next trick, Carolina.

Thank you , everyone . that was a great magic show!
```

## 避免缩进错误

Python根据缩进来判断代码行与前一个代码行的关系.

当你开始编写必须正确缩进的代码时, 需要注意亦喜恶常见的 **缩进错误**

<span id = 'blue' > 测试练习  </span>

1. 比萨：想出至少三种你喜欢的比萨，将其名称存储在一个列表中，再使用for循环将每种比萨的名称都打印出来。
    - 修改这个for循环，使其打印包含比萨名称的句子，而不仅仅是比萨的名称。对于每种比萨，都显示一行输出，如“Ilikepepperonipizza”。
    - 在程序末尾添加一行代码，它不在for循环中，指出你有多喜欢比萨。输出应包含针对每种比萨的消息，还有一个总结性句子，如“Ireallylovepizza!”。

2. 动物：想出至少三种有共同特征的动物，将这些动物的名称存储在一个列表中，再使用for循环将每种动物的名称都打印出来。
    - 修改这个程序，使其针对每种动物都打印一个句子，如“Adogwouldmakeagreatpet”。
    - 在程序末尾添加一行代码，指出这些动物的共同之处，如打印诸如“Anyoftheseanimalswouldmakeagreatpet!”这样的句子。

<span id = 'green' > 练习结果 </span>

1. pizzy.py
    ```python
    pizzys = ['pizzy1','pizzy2','pizzy3']
    for pizzy in pizzys:
        print (pizzy)
    ```
    ```python
    pizzys = ['pizzy1','pizzy2','pizzy3']
    for pizzy in pizzys:
        print ("I like " + pizzy + " pizzy . \n")
    print ("I really love " + pizzys[0:] + "pizza! ")
    ```

2. pet.py
    ```python
    pets = ['cat','dog','chick']
    for pet in pets:
        print(pet)
    ```
    ```python
    pets = ['cat','dog','chick']
    for pet in pets:
        print("A " + pet + "would make a great pet. \n")
    print ("Any of these animals would makea great pet!")
    ```

## 创建数值列表

需要储存一组数字的原因有很多.在数据可视化中,处理的几乎都是由数字组成的集合.

列表非常适合用于储存数字集合,二PYthon提供了很多工具,可帮助你高效地处理数字列表

### 使用函数range()

{% note danger %}
<kbd>range(指定的开始值,指定结束值)</kbd> 函数, 可以生成一些列的数字
{% endnote %}

numbers.py
```python
for value in range(1,5):
    print(value)
```
```
1
2
3
4
```
这个示例中,**range()只是打印了数字1~4,函数range()让Python从指定的第一个值开始数,并在到达你指定的第二个值后停止,因此输出不包含第二个值.**

### 使用range()创建数字列表

要创建数字列表,可使用函数list()将range()的结果直接转换为列表.

```python
numbers = list(range(1,6))
print (numbers)
```
```
[1, 2, 3, 4, 5]
```

**使用函数range()的时候,还可以指定步长.**例如打印1~10内的偶数:
even_numbers.py
```python
even_numbers = list(range(2,11,2))
print(even_numbers)
```
在这个示例中,函数range()从2开始数,然后不断的加2,直到达到或超过最终值(11),因此输出如下:
```
[2,4,6,8,10]
```
> **range(开始值,结束值,步长)**

创建一个列表,其中包含前10整数的平方
```python
squares = []
for velue in range(1,11):
    square = velue ** 2
    squares.append(square)
print(squares)
```
也可以取消临时变量square写成:
```python
squares = []
for value in range(1,11):
    squares.append(value ** 2)
print (squares)
```
得到的输出结果是一样的:
```
[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
```

### 对数字列表执行简单的统计计算

有几个专门用于处理数字列表的Python函数.可以轻松找出**数字列表**中的**最大值**,**最小值**,**总和**:
```python
>>> digits = [1,2,3,4,5,6,7,8,9,0]
>>> min(digits)
0
>>> max(digits)
9
>>> sum(digits)
45
```

{% note danger %}
<kbd>min</kbd> 函数,找出数字列表中的**最小值**.
<kbd>max</kbd> 函数,找出数字列表中的**最大值**.
<kbd>sum</kbd> 函数,计算数字列表中的**总和**.
{% endnote %}

### 列表解析

**列表解析**将for循环和创建新元素的代码合并成一行,并自动附加新元素.

下面是里使用列表解析创建你在前面看到的平方数列表:

squares.py
```python
squares = [value**2 for value in range(1,11)]
print (squares)
```

{% note danger %}
要使用这种语法,**首先制定一个描述性的列表名**,然后,指定一个**左方括号**,并**定义一个表达式**,用于生成你要储存到列表中的值.接下来编写一个for循环,用于给表达式提供值,再加上右方括号.
{% endnote %}

> *列表变量名称* = **[** *要储存到列表中的值* *for循环用于给表达式提供值* **]** |for语句在列表解析里没有冒号 **:**

#### <span id = 'blue' > 练习测试 </span>

1. 数到20：使用一个for循环打印数字1~20（含）。

2. 一百万：创建一个列表，其中包含数字1~1000000，再使用一个for循环将这些数字打印出来（如果输出的时间太长，按Ctrl+C停止输出，或关闭输出窗口）。

3. 计算1~1000000的总和：创建一个列表，其中包含数字1~1000000，再使用min()和max()核实该列表确实是从1开始，到1000000结束的。另外，对这个列表调用函数sum()，看看Python将一百万个数字相加需要多长时间。

4. 奇数：通过给函数range()指定第三个参数来创建一个列表，其中包含1~20的奇数；再使用一个for循环将这些数字都打印出来。

5. 3的倍数：创建一个列表，其中包含3~30内能被3整除的数字；再使用一个for循环将这个列表中的数字都打印出来。

6. 立方：将同一个数字乘三次称为立方。例如，在Python中，2的立方用2**3表示。请创建一个列表，其中包含前10个整数（即1~10）的立方，再使用一个for循环将这些立方数都打印出来。

7. 立方解析：使用列表解析生成一个列表，其中包含前10个整数的立方。

#### <span id = 'green' > 练习结果 </span>

1. numbers.py
    ```python
    for i in range(1,21):
        print(i)
    ```

2. 100m.py
    ```python
    nl = list(range(1,1000001))
    for i in nl:
        print(i)
    ```

3. sum100m.py
    ```python
    nl = list(range(1,1000001))
    nlmin = min(nl)
    nlmax = max(nl)
    nlsum = sum(nl)
    print('min: ' + str(nlmin))
    print('max: ' + str(nlmax))
    print('sum: ' + str(nlsum))
    ```

4. jnumber.py
    ```python
    jl = list(range(1,21,2))
    for i in jl:
        print(i)
    ```

5. init.py
    ```python
    linit = list(range(3,31,3))
    for i in linit:
        print(i)
    ```

6. mc3.py
    ```python
    lists = []
    for i in range(1,11):
        mc3 = i ** 3
        lists.append(mc3)
    print(lists)
    ```

7. listmc.py
    ```python
    mc3 = [i ** 3 for i in range(1,11)]
    print(mc3)
    ```

## 使用列表的一部分

在这一章节中,将学会处理列表的**部分元素** Python称之为切片.

### 切片

要创建切片,可指定要使用的第一个元素和最后一个元素的**索引**

players.py
```python
players = ['charles','martina','michael','florence','eli']
print(players[0:3])
```
```
['charles', 'martina', 'michael']
```

### 遍历切片

如果要便利列表的部分元素,可在for循环中使用切片.

```python
players = ['charles','martina','michael','florence','eli']
print ("here are the first three players on my team:")
for player in players[:3]:
    print(player.title())
```
```
here are the first three players on my team:
Charles
Martina
Michael
```

### 复制列表

经常需要根据既有列表创建全新的列表.下面介绍赋值列表的工作原理.

要复制列表,可创建一个包含整个列表的**切片** , 方法是
> 省略起始索引和终止索引 **([:])** . 浙商Python创建一个始于第一个元素,终止于最后一个元素的切片,**即复制整个列表.

foods.py
```python
my_foods = ['pizza','falafel','carrot cake']
friend_foods = my_foods[:]
print ("my favorite foods are: ")
print (my_foods)

print ("\nmy friend's favorite foods are: ")
print (friend_foods)
```

#### <span id = 'blue' > 练习测试 </span>

1. 切片：选择你在本章编写的一个程序，在末尾添加几行代码，以完成如下任务。
    - 打印消息“The first three items in the list are:”，再使用切片来打印列表的前三个元素。
    - 打印消息“Three items from the middle of the list are:”，再使用切片来打印列表中间的三个元素。
    - 打印消息“The last three items in the list are:”，再使用切片来打印列表末尾的三个元素。

2. 你的比萨和我的比萨：在你为完成练习4-1而编写的程序中，创建比萨列表的副本，并将其存储到变量friend_pizzas中，再完成如下任务。
    - 在原来的比萨列表中添加一种比萨。
    - 在列表friend_pizzas中添加另一种比萨。
    - 核实你有两个不同的列表。为此，打印消息“My favorite pizzas are:”，再使用一个for循环来打印第一个列表；打印消息“My friend's favorite pizzas are:”，再使用一个for循环来打印第二个列表。核实新增的比萨被添加到了正确的列表中。

3. 使用多个循环：在本节中，为节省篇幅，程序foods.py的每个版本都没有使用for循环来打印列表。请选择一个版本的foods.py，在其中编写两个for循环，将各个食品列表都打印出来。

#### <span id = 'green' > 练习结果 </span>

1. split.py
    ```python
    players = ['charles','martina','michael','florence','eli']
    print ("The first three items in the list are:")
    print (players[0:3])
    print (players[1:4])
    print (players[2:])
    ```

2. youpizzy.py
    ```python
    my_foods = ['pizza','falafel','carrot cake']
    friend_pizzas = my_foods[:]
    my_foods.append('other')
    friend_pizzas.append('friend other')
    print ("My favorite pizzas are: ")
    print (my_foods)
    print ("My friend's favorite pizzas are: ")
    print (friend_pizzas)
    ```

3. mufor.py
    ```python
    my_foods = ['pizza','falafel','carrot cake']
    friend_foods = my_foods[:]
    print ("my favorite foods are: ")
    for my in my_foods:
        print (my)

    print ("\nmy friend's favorite foods are: ")
    for friend in friend_foods:
        print (friend)
    ```

## 元组

列表非常适合用于储存在程序运行期间可能变化的数据.**列表是可以修改的**,然后有时候你需要创建一系列不可修改的元素,元组可以满足这种需求,Python;n将不能修改的值称之为不可变的,而不可变的列表被称为**元组**

### 定义元组

元组看起来犹如列表,但是使用**圆括号**而不是使用方括号来标识.定义远足后,就可以使用索引来访问其元素,就像访问列表元素一样.

dimensions.py
```python
dimensions = (200,50)
print(dimensions[0])
print(dimensions[1])
```

# 第五章 if 语句

编程时经常需要检查一系列条件,并据此决定采取什么措施.在Python中,if语句让你能够检查程序的当前状态,并据此采取相应的措施.

在这一章中,你将学习条件测试,一检查感兴趣的任何条件.将学习简单的if语句,以及创建一系列复杂的if语句来确定当前到底处于什么情形.

## 一个简单的示例

下面的示例,演示了如何使用if语句来正确处理特殊情形.假设有一个汽车列表,并想将其中每辆汽车的名称打印出来.对于大多数汽车,都应以首字母大写的方式打印其名称,但对于汽车名'bmw',应以全大写的方式打印.

cars.py
```python
cars = ['audi','bmw','subaru','toyota']
for car in cars:
    if car == 'bmw':
        print (car.upper())
    else:
        print (car.title())
```
```
Audi
BMW
Subaru
Toyota
```

## 条件测试

每条if语句的核心都是一个值为**True** 或 **False**的表达式,这种表达式称为**条件测试**.Python根据条件测试的值为True还是False来决定是否执行if与剧中的代码.

### 检查是否相等

大多数条件测试都将一个变量的当前值同特定值进行比较.最简单的条件测试检查变量的值是否与特定值相等:

```python
>>> car = 'bmw'
>>> car == 'bmw'
True
```

{% note danger %}
<kbd>==</kbd> , 相等运算符以两个等号体现
{% endnote %}

### 检查是否相等时不考虑大小写

在Python中检查是否相等时区分大小写,例如,两个大小写不同的值会被视为不相等:

```python
>>> car = 'Audi'
>>> car == 'audi'
False
```

### 检查是否不相等

要判断两个值是否不等,可结合使用惊叹号和等号(!=),其中的惊叹号表示**不**, 在很多编程语言中都如此.

{% note danger %}
<kbd>!=</kbd> , 不相等运算符由惊叹号和等号组成
{% endnote %}

toppings.py
```python
requested_topping = 'mushrooms'
if requested_topping != 'anchovies':
    print("hold the anchovies!")
```
```
hold the anchovies!
```

### 比较数字

检查数值非常简单,例如,下面的代码检查一个人是否18岁:

```python
>>> age = 18
>>> age == 18
True
```

还可以检查两个数字是否不等:

magic_number.py
```python
answer = 17
if answer != 42:
    print (" that is not the correct answer. please try again!")
```
```
that is not the correct answer. please try again!
```

### 检查多个条件

你可能相同时检查多个条件,关键字**and**和**or**可助你一臂之力

{% note danger %}
<kbd>and</kbd> 关键字, 两个条件测试合而为一;如果每个测试都通过,表达式为**True**.
<kbd>or</kbd> 关键字, 两个条件有一个通过,表达式为**True**
{% endnote %}

- 使用and检查多个条件
    ```python
    >>> age_0 = 22
    >>> age_1 = 18
    >>> age_0 >= 21 and age_1 >=21
    False
    >>> age_1 = 22
    >>> age_0 >= 21 and age_1 >= 21
    True
    ```
    为改善可读性,可将每个测试都分别放在一对括号内

    ```python
    >>> (age_0 >= 21) and (age_1 >= 21)
    True
    ```

- 使用or检查多个条件
    ```python
    >>> age_ 0 = 22
    >>> age_ 1 = 18
    >>> age_ 0 >= 21 or age_ 1 >= 21
    True
    >>> age_ 0 = 18
    >>> age_ 0 >= 21 or age_ 1 >= 21
    False
    ```

### 检查特定值是否包含在列表中

有时候,执行操作前必须检查列表是否包含特定值.

banned_users.py
```python
banned_users = ['andrew','carolina','david']
user = 'marie'
if user not in banned_users:
    print(user.title() + ", you can post a response if you wish.")
```
```
Marie, you can post a response if you wish.
```

### 布尔表达式

随着你对编程的了解越来越深入,将遇到术语**布尔表达式**,他不过是条件测试的别名.与条件表达式一样,布尔表达式的结果要么为True,要么为False.

#### <span id = 'blue' > 练习测试 </span>

1. 条件测试：编写一系列条件测试；将每个测试以及你对其结果的预测和实际结果都打印出来。你编写的代码应类似于下面这样：
    ```python
    car = 'subaru'
    print ("Is car == 'subaru'? I predict True.")
    print (car == 'subaru')　
    print ("\nIscar == 'audi'? I predict False.")
    print (car == 'audi')
    ```

    - 详细研究实际结果，直到你明白了它为何为True或False。
    - 创建至少10个测试，且其中结果分别为True和False的测试都至少有5个。

2. 更多的条件测试：你并非只能创建10个测试。如果你想尝试做更多的比较，可再编写一些测试，并将它们加入到conditional_tests.py中。对于下面列出的各种测试，至少编写一个结果为True和False的测试。

    - 检查两个字符串相等和不等。
    - 使用函数lower()的测试。
    - 检查两个数字相等、不等、大于、小于、大于等于和小于等于。
    - 使用关键字and和or的测试。
    - 测试特定的值是否包含在列表中。
    - 测试特定的值是否未包含在列表中。

#### <span id = 'green' > 练习结果 </span>

1. word.py
    ```python
    word = 'pythontest'
    print ("is test == 'pythontest' , i guess True")
    print (word == 'pythontest')
    print("\nIs word == 'python' , i guess False")
    print (word == 'python')
    print ('\n')
    print (word != 'python')
    print (word == 'Python')
    ```

2. conditional_tests.py
    ```python
    atest = 'python'
    btest = 'django'
    print (atest == 'python')
    print (btest == 'python')
    print (btest == 'django')
    print (btest.lower() == 'Django')
    anumber = 10
    bnumber = 20
    print (anumber == bnumber)
    print (anumber != bnumber)
    print (anumber > 5 and bnumber > 5)
    print (anumber < 11 or bnumber < 10)
    lists = ['a','b','c']
    w = 'a'
    if w in lists:
        print (w + ", in the lists")
    w_1 = 'd'
    if w_1 not in lists:
        print (w_1 + ", not in the lists")
    ```

## if 语句

理解条件测试后,就可以开始编写if语句了.if语句有很多种,选择使用那种取决于要测试的条件数

### 简单的if语句

最简单的if语句只有一个测试和一个操作:

```python
if conditional_test:
    do something
```
在第1行中，可包含任何条件测试，而在紧跟在测试后面的缩进代码块中，可执行任何操作。如果条件测试的结果为True，Python就会执行紧跟在if语句后面的代码；否则Python将忽略这些代码。

假设有一个表示某人年龄的变量,而你想知道这个人是否够投票的年龄,可以使用如下代码:

voting.py
```python
age = 19
if age >= 18:
    print ('you are old enough to vote!')
```

### if - else 语句

经常需要在条件测试通过的时候执行一些操作,并在没有通过时执行另一个操作:这种情况下可以使用Python提供的 if - else 语句. if - else语句块类似于简单的if语句，但其中的else语句让你能够指定条件测试未通过时要执行的操作。

```python
age = 17
if age >= 18:
    print ('you are old enough to vote !')
    print ('have you registered to vote yet?')
else:
    print ('sorry, you are too young to vote.')
    print ('please register to vote as soon as you turn 18!')
```

### if - elif - else 结构

经常需要检查超过两个的情形，为此可使用Python提供的if-elif-else结构。Python只执行if-elif-else结构中的一个代码块，它依次检查每个条件测试，直到遇到通过了的条件测试。测试通过后，Python将执行紧跟在它后面的代码，并跳过余下的测试。

```python
age = 12
if age < 4:
    print ("your admission cost is $0 . ")
elif age < 18:
    print ("your admission cost is $5 . ")
else:
    print ("your admission cost is $10 . ")
```
```
your admission cost is $5 .
```

为了让代码更加简洁,可以不再if - elif - else 代码中打印门票价格,而只在其中设置门票价格,并在她后面添加一条简单的print语句:

```python
age = 12
if age < 4:
    price = 0
elif age < 18:
    price = 5
else:
    price = 10
print('your admission cost is $' + str(price) + '.')
```

### 测试多个条件

if-elif-else结构功能强大，但仅适合用于只有一个条件满足的情况：遇到通过了的测试后，Python就跳过余下的测试。这种行为很好，效率很高，让你能够测试一个特定的条件。

然而，有时候必须检查你关心的所有条件。在这种情况下，应使用一系列不包含elif和else代码块的简单if语句。在可能有多个条件为True，且你需要在每个条件为True时都采取相应措施时，适合使用这种方法。

下面再来看前面的比萨店示例。如果顾客点了两种配料，就需要确保在其比萨中包含这些配料：

toppings.py
```python
requested_toppings = ['mushrooms','extr cheese']
if 'mushrooms' in requested_toppings:
    print ('adding mushrooms')
if 'pepperoni' in requested_toppings:
    print ('adding pepperoni')
if 'extr cheese' in requested_toppings:
    print ('adding extr cheese')
print ('\nfinished making your pizza!')
```
```
adding mushrooms
adding extr cheese

finished making your pizza!
```

{% note danger %}
总之,如果你想执行一个代码块们就使用if-elif-else结构;如果要运行多个代码块,就使用一系列独立的if语句
{% endnote %}

<span id = 'blue' > 测试练习 </span>

1. 外星人颜色#1：假设在游戏中刚射杀了一个外星人，请创建一个名为alien_color的变量，并将其设置为'green'、'yellow'或'red'。
    - 编写一条if语句，检查外星人是否是绿色的；如果是，就打印一条消息，指出玩家获得了5个点。
    - 编写这个程序的两个版本，在一个版本中上述测试通过了，而在另一个版本中未通过（未通过测试时没有输出）。

2. 外星人颜色#2：像练习5-3那样设置外星人的颜色，并编写一个if-else结构。
    - 如果外星人是绿色的，就打印一条消息，指出玩家因射杀该外星人获得了5个点。
    - 如果外星人不是绿色的，就打印一条消息，指出玩家获得了10个点。
    - 编写这个程序的两个版本，在一个版本中执行执行if代码块，而在另一个版本中执行else代码块。

3. 外星人颜色#3：将练习5-4中的if-else结构改为if-elif-else结构。
    - 如果外星人是绿色的，就打印一条消息，指出玩家获得了5个点。
    - 如果外星人是黄色的，就打印一条消息，指出玩家获得了10个点。
    - 如果外星人是红色的，就打印一条消息，指出玩家获得了15个点。
    - 编写这个程序的三个版本，它们分别在外星人为绿色、黄色和红色时打印一条消息。

4. 人生的不同阶段：设置变量age的值，再编写一个if-elif-else结构，根据age的值判断处于人生的哪个阶段。
    - 如果一个人的年龄小于2岁，就打印一条消息，指出他是婴儿。
    - 如果一个人的年龄为2（含）～4岁，就打印一条消息，指出他正蹒跚学步。
    - 如果一个人的年龄为4（含）～13岁，就打印一条消息，指出他是儿童。如
    - 果一个人的年龄为13（含）～20岁，就打印一条消息，指出他是青少年。
    - 如果一个人的年龄为20（含）～65岁，就打印一条消息，指出他是成年人。
    - 如果一个人的年龄超过65（含）岁，就打印一条消息，指出他是老年人。

5. 喜欢的水果：创建一个列表，其中包含你喜欢的水果，再编写一系列独立的if语句，检查列表中是否包含特定的水果。
    - 将该列表命名为favorite_fruits，并在其中包含三种水果。
    - 编写5条if语句，每条都检查某种水果是否包含在列表中，如果包含在列表中，就打印一条消息，如“You really like bananas!”

<span id = 'green' > 练习结果 </span>

1. aline.py
```python
aline_color = 'green'
if aline_color == 'green':
    print ('you get point 5')
if aline_color == 'yellow':
    print ('you get point 10')
```

2. aline2.py
```python
aline_color = 'green'
if aline_color == 'green':
    print ('you get point 5')
else:
    print ('you get point 10')

aline_color = 'yellow'
if aline_color == 'green':
    print ('you get point 5')
else:
    print ('you get point 10')
```

3. aline3.py
```python
aline_color = 'green'
if aline_color == 'green':
    print ('you get point 5')
elif aline_color == 'red':
    print ('you get point 10')
else:
    print ('you get point 15')

aline_color = 'red'
if aline_color == 'green':
    print ('you get point 5')
elif aline_color == 'red':
    print ('you get point 10')
else:
    print ('you get point 15')

aline_color = 'yellow'
if aline_color == 'green':
    print ('you get point 5')
elif aline_color == 'red':
    print ('you get point 10')
else:
    print ('you get point 15')
```

4. age.py
```python
age = 66
if age < 2:
    print ('you is baby')
elif age <= 2:
    print ('you is bigbaby')
elif age <= 4:
    print ('you is ertong')
elif age <= 13:
    print ('you is qingshaonian')
elif age <= 20 :
    print ('you is man')
elif age <= 65 :
    print ('you is storngman')
else:
    print ('you is older')
```

5. likeapple.py
```python
f = ['apple','banana','orange']
if 'apple' in f:
    print ('you really like apple')
if 'banana' in f:
    print ('you really like banana')
if 'orange' in f:
    print ('you really like orange')
if 'f' in f:
    print ('you really like f')
if 'c' in f:
    print ('you really like c')
```

## 使用 if 语句处理列表

通过结合使用if语句和列表，可完成一些有趣的任务：对列表中特定的值做特殊处理；高效地管理不断变化的情形，如餐馆是否还有特定的食材；证明代码在各种情形下都将按预期那样运行。

### 检查特殊元素

通过创建一个列表，在其中包含顾客点的配料，并使用一个循环来指出添加到比萨中的配料，可以以极高的效率编写这样的代码：

toppings.py
```python
requested_toppings = ['mushrooms','green peppers','extra cheese']
for requested_topping in requested_toppings:
    print ("adding " + requested_topping + ".")
print ("\nfinished making your pizza!")
```
```
adding mushrooms.
adding green peppers.
adding extra cheese.

finished making your pizza!
```
然而，如果比萨店的青椒用完了，该如何处理呢？为妥善地处理这种情况，可在for循环中包含一条if语句：
```python
requested_toppings = ['mushrooms','green peppers','extra cheese']
for requested_topping in requested_toppings:
    if requested_topping == 'green peppers':
        print('sorry,we are out of green peppers reght now.')
    else:
        print ("adding " + requested_topping + ".")
print ("\nfinished making your pizza!")
```
```
adding mushrooms.
sorry,we are out of green peppers reght now.
adding extra cheese.

finished making your pizza!
```

### 确定列表不是空的

到目前为止，对于处理的每个列表都做了一个简单的假设，即假设它们都至少包含一个元素。我们马上就要让用户来提供存储在列表中的信息，因此不能再假设循环运行时列表不是空的。有鉴于此，在运行for循环前确定列表是否为空很重要。

下面在制作比萨前检查顾客点的配料列表是否为空。如果列表是空的，就向顾客确认他是否要点普通比萨；如果列表不为空，就像前面的示例那样制作比萨：

```python
requested_toppings = []
if requested_toppings:
    for requested_topping in requested_toppings:
        print ("adding " + requested_topping + ".")
    print ("\nfinished making your pizza!")
else:
    print('\nAre you sure you want a plain pizza?')
```

### 使用多个列表

顾客的要求往往五花八门，在比萨配料方面尤其如此。如果顾客要在比萨中添加炸薯条，该怎么办呢？可使用列表和if语句来确定能否满足顾客的要求。来看看在制作比萨前如何拒绝怪异的配料要求。下面的示例定义了两个列表，其中第一个列表包含比萨店供应的配料，而第二个列表包含顾客点的配料。这次对于requested_toppings中的每个元素，都检查它是否是比萨店供应的配料，再决定是否在比萨中添加它：

```python
available_toppings = ['mushrooms','olives','green peppers','pepperoni','pineapple','extra cheese']
requested_toppings = ['mushrooms','french fries','extra cheese']

for requested_topping in requested_toppings:
    if requested_topping in available_toppings:
        print ('adding ' + requested_topping + '.')
    else:
        print ("sorry, we don't have " + requested_topping)
print ('\nfinished making your pizza!')
```
```
adding mushrooms.
sorry, we don't have french fries
adding extra cheese.

finished making your pizza!
```

#### <span id = 'blue' > 练习测试 </span>

1. 以特殊方式跟管理员打招呼：创建一个至少包含5个用户名的列表，且其中一个用户名为'admin'。想象你要编写代码，在每位用户登录网站后都打印一条问候消息。遍历用户名列表，并向每位用户打印一条问候消息。
    - 如果用户名为'admin'，就打印一条特殊的问候消息，如“Hello admin,would you like to see a status report?”。
    - 否则，打印一条普通的问候消息，如“Hello Eric,thank you for logging in again”。

2. 处理没有用户的情形：在为完成练习5-8编写的程序中，添加一条if语句，检查用户名列表是否为空。
    - 如果为空，就打印消息“We need to find some users!”。
    - 删除列表中的所有用户名，确定将打印正确的消息。

3. 检查用户名：按下面的说明编写一个程序，模拟网站确保每位用户的用户名都独一无二的方式。
    - 创建一个至少包含5个用户名的列表，并将其命名为current_users。
    - 再创建一个包含5个用户名的列表，将其命名为new_users，并确保其中有一两个用户名也包含在列表current_users中。
    - 遍历列表new_users，对于其中的每个用户名，都检查它是否已被使用。如果是这样，就打印一条消息，指出需要输入别的用户名；否则，打印一条消息，指出这个用户名未被使用。
    - 确保比较时不区分大小写；换句话说，如果用户名'John'已被使用，应拒绝用户名'JOHN'。

4. 序数：序数表示位置，如1st和2nd。大多数序数都以th结尾，只有1、2和3例外。
    - 在一个列表中存储数字1~9。
    - 遍历这个列表。
    - 在循环中使用一个if-elif-else结构，以打印每个数字对应的序数。输出内容应为1st、2nd、3rd、4th、5th、6th、7th、8th和9th，- 但每个序数都独占一行。

#### <span id = 'green' > 练习结果 </span>

1. hello.py
    ```python
    names = ['user1','user2','user3','user4','admin']
    for i in names:
        if i == 'admin':
            print ("Hello admin,would you like to see a status report?")
        else:
            print ("Hello " + i + "," + "thank you for logging in again")
    ```

2. nouser.py
    ```python
    names = []
    if names:
        for i in names:
            if i == 'admin':
                print ("Hello admin,would you like to see a status report?")
            else:
                print ("Hello " + i + "," + "thank you for logging in again")
    else:
        print ('We need to find some users!')
    ```

3. unnuser.py
    ```python
    current_users = ['user1','user2','user3','user4','admin']
    new_users = ['USER1','user2','admin','azoth1','azoth2']

    for i in new_users:
        if i.lower() in current_users:
            print (i + ' , please other username')
        else:
            print (i + ' , ok')
    ```

4. number.py
    ```python
    lists = list(range(1,10))
    for i in lists:
        if i == 1:
            print (str(i) + "st")
        if i == 2:
            print (str(i) + "nd")
        if i == 3:
            print (str(i) + "rd")
        else:
            print (str(i) + "th")
    ```

# 第六章 字典

在本章中,你将学习能够将相关信息关联起来的Python字典.学习如何访问和修改字典中的信息.鉴于字典可储存的信息量几乎不受限制,因此我们会演示如何遍历字典中的数据.另外,还将学习储存字典的列表,储存列表的子弟和储存字典的字典.

理解字典后,你就能更准确地为各种真实物体建模.

## 一个简单的字典

alien.py
```python
alien_0 = {'color':'gereen','points':5}
print (alien_0['color'])
print (alien_0['points'])
```
```
gereen
5
```

## 使用字典

在Python中,**字典**是一系列**键值对**.每个**键**都与一个值相关联,你可以使用键来访问与之关联的值.与键相关联的值可以实数字,字符串,列表,乃至字典.

{% note danger %}
字典用放在花括号 {} 中的一系列键值对表示. 键值对时两个相关联的值. 键和值之间用冒号分隔,而键值对之间之间用逗号分隔.
{% endnote %}

### 访问字典中的值

> 要获取与键相关联的值,可依次制定字典名和放在方括号内的键

```python
alien_0 {'color':'green'}
print (alien_0['color'])
```
```
green
```

```python
alien_0 = {'color':'green','points':5}
new_points = alien_0['points']
print ('you just earned ' + str(new_points) + " points!")
```
```
you just earned 5 points!
```

### 添加键值对

字典是一种动态结构,可随时在其中添加键值对.要添加键值对,可依次指定字典名,用方括号扩起的键合相关联的值.
```python
alien_0 = {'color':'green','points':5}
print (alien_0)
alien_0['x_position'] = 0
alien_0['y_position'] = 25
print (alien_0)
```
```
{'color': 'green', 'points': 5}
{'color': 'green', 'points': 5, 'x_position': 0, 'y_position': 25}
```

### 先创建一个空字典

有时候,在空字典中添加键值对是为了方便,而有时候必须这样做.为此,可以使用一对空的花括号定义一个字典,再分别添加各个键值对.

```python
alien_0 = {}
alien_0['color'] = 'green'
alien_0['points'] = 5
alien_0['x_postion'] = 0
alien_0['y_postion'] = 25
print (alien_0)
```
```
{'color': 'green', 'points': 5, 'x_postion': 0, 'y_postion': 25}
```

### 修改字典中的值

要修改字典中的值,可依次指定字典名,用方括号扩起的键以及与该键相关联的新值

```python
alien_0 = {'color':'green'}
print ('the alien is ' + alien_0['color'] + '.')

alien_0['color'] = 'yellow'
print ('the alien is now ' + alien_0['color'] + '.')
```

### 删除键值对

对于字典中不再需要的信息,可以使用del语句将相应的键值对彻底删除,**使用del语句时,必须指定字典名和要删除的键**

```python
alien_0 = {'color':'green','points':5}
print (alien_0)
del alien_0['points']
print (alien_0)
```

### 由类似对象组成的字典

前面的例子中,字典储存的是一个对象,你可以使用字典来储存众多对象的同一种信息.

```python
favorite_languages = {
    'jen':'python',
    'sarah':'c',
    'edward':'ruby',
    'phil':'python',
}
print ('sarah is favorite language is ' + favorite_languages['sarah'].title() + '.')
```

#### <span id = 'blue' > 练习测试 </span>

1. 人：使用一个字典来存储一个熟人的信息，包括名、姓、年龄和居住的城市。该字典应包含键first_name、last_name、age和city。将存储在该字典中的每项信息都打印出来。

2. 喜欢的数字：使用一个字典来存储一些人喜欢的数字。请想出5个人的名字，并将这些名字用作字典中的键；想出每个人喜欢的一个数字，并将这些数字作为值存储在字典中。打印每个人的名字和喜欢的数字。为让这个程序更有趣，通过询问朋友确保数据是真实的。

3. 词汇表：Python字典可用于模拟现实生活中的字典，但为避免混淆，我们将后者称为词汇表。
    - 想出你在前面学过的5个编程词汇，将它们用作词汇表中的键，并将它们的含义作为值存储在词汇表中。
    - 以整洁的方式打印每个词汇及其含义。为此，你可以先打印词汇，在它后面加上一个冒号，再打印词汇的含义；也可在一行打印词汇，再使用换行符（\n）插入一个空行，然后在下一行以缩进的方式打印词汇的含义。

#### <span id = 'green' > 练习结果 </span>

1. pepole.py
    ```python
    f = {'first_name':'yang','last_name':'wei','age':'32','city':'beijing'}
    fname = f['first_name']
    lname = f['last_name']
    age = f['age']
    city = f['city']
    print('\n'+ fname + '\n' + lname + '\n' + age + '\n' + city)
    ```

2. likenum.py
    ```python
    ln = {'name1':'1','name2':'2','name3':'3','name4':'4','name5':'5'}
    print ( 'name1 do u like ? ' + ln['name1'])
    print ( 'name2 do u like ? ' + ln['name2'])
    print ( 'name3 do u like ? ' + ln['name3'])
    print ( 'name4 do u like ? ' + ln['name4'])
    print ( 'name5 do u like ? ' + ln['name5'])
    ```

3. word.py
    ```python
    word = {'print':'print.is.word...','len':'sum is list is long'}
    print ('print = : ' + word['print'])
    print ('len = : ' + word['len'])
    ```

## 遍历字典

一个Python字典可能只包含几个键值对,也可能包含数百万个键值对.鉴于字典可能包含大量的数据,Python支持对字典的遍历.

### 遍历所有的键值对

```python
user_0 = {
    'username':'efermi',
    'first':'enrico',
    'last':'fermi',
}
for key,value in user_0.items():
    print ('\nKey: ' + key)
    print ('Value' + vale)
```

{% note danger %}
<kbd>items()</kbd> 方法, 他返回一个键值对的列表
{% endnote %}

>for k,v in 列表.items(): 对于字典的for循环,**可声明两个变量**用于储存键值对中的键和值.接下来用包含**字典名和方法items()**,它返回一个键值对列表.接下来for循环依次将每个键值对储存到指定的两个变量中.

favorite_languages.py
```python
favorite_languages = {
    'jen':'python',
    'sarah':'c',
    'edward':'ruby',
    'phil':'python',
}
for name , language in favorite_languages.items():
    print (name.title() + "'s favorite language is " + language.title() + '.')
```

### 遍历字典中所有的键

在不需要使用字典中的**值**时,方法keys()很有用.

```python
favorite_languages = {
    'jen':'python',
    'sarah':'c',
    'edward':'ruby',
    'phil':'python',
}
for name in favorite_languages.keys():
    print(name.title())
```

{% note danger %}
<kbd>keys()</kbd> 方法. 用于遍历字典中的所有**键**
{% endnote %}

### 遍历字典中所有的值

如果提取字典中所包含的**值** , 可以使用方法values().

```python
favorite_languages = {
    'jen':'python',
    'sarah':'c',
    'edward':'ruby',
    'phil':'python',
}
for language in favorite_languages.values():
    print (language.title())
```

{% note danger %}
<kbd>value()</kbd> 方法. 用于遍历字典中的所有**值**
{% endnote %}

#### <span id = 'blue' > 练习测试 </span>

1. 词汇表2：既然你知道了如何遍历字典，现在请整理你为完成练习6-3而编写的代码，将其中的一系列print语句替换为一个遍历字典中的键和值的循环。确定该循环正确无误后，再在词汇表中添加5个Python术语。当你再次运行这个程序时，这些新术语及其含义将自动包含在输出中。

2. 河流：创建一个字典，在其中存储三条大河流及其流经的国家。其中一个键—值对可能是'nile':'egypt'。
    - 使用循环为每条河流打印一条消息，如“TheNilerunsthroughEgypt.”
    - 使用循环将该字典中每条河流的名字都打印出来。
    - 使用循环将该字典包含的每个国家的名字都打印出来。


3. 调查：在6.3.1节编写的程序favorite_languages.py中执行以下操作。
    - 创建一个应该会接受调查的人员名单，其中有些人已包含在字典中，而其他人未包含在字典中。
    - 遍历这个人员名单，对于已参与调查的人，打印一条消息表示感谢。对于还未参与调查的人，打印一条消息邀请他参与调查。

#### <span id = 'green' > 练习结果 </span>

1. word.py
    ```python
    word = {
    'print':'print.is.word...',
    'len':'sum is list is long'
    }
    for k,v in word.items():
        print (k + ':' + v)
    ```

2. rever.py
    ```python
    rever = {
        'china':'huanghe',
        'china':'changjiang',
        'meiguo':'buzhidao',
        'nile':'egypt',
    }
    for c,r in rever.items():
        print ('the '+ c + 'runs through '+ r + '.')

    for r in rever.values():
        print (r)

    for c in rever.keys():
        print (c)
    ```

3. favorite_languages.py
    ```python
    favorite_languages = {
        'jen': 'python',
        'sarah': 'c',
        'edward': 'ruby',
        'phil': 'python',
        }
    pepole = ['jen','sarah']
    for i in pepole:
        if i in favorite_languages.keys():
            print ('thank ' ,i)
    ```

## 嵌套

有时候,需要将一系列字典储存在列表中,或将列表作为值储存在字典中,这称之为**嵌套**.

### 字典列表

字典alien_0包含一个外星人的全部信息,但无法储存第二个外星人的信息,那么如何管理城区阶段的外星人呢,一种办法是创建一个外星人列表,其中每个外星人都是一个字典,包含该外星人的各种信息,下面的代码创建一个包含三个外星人的列表

aliens.py
```python
alien_0 = {'color':'green','points':5}
alien_1 = {'color':'yellow','points':10}
alien_2 = {'color':'red','points':15}

aliens = [alien_0,alien_1,alien_2]
for i in aliens:
    print (i)
```
```
{'color': 'green', 'points': 5}
{'color': 'yellow', 'points': 10}
{'color': 'red', 'points': 15}
```

下面使用range()函数生成30个外星人:
```python
aliens = []
for i in range(30):
    new = {'color':'green','points':5,'speed':'slow'}
    aliens.append(new)
print(aliens)
for alien in aliens[:5]:
    print(alien)
print('...')
print ('sum = ' + str(len(aliens)))
```
```
{'color': 'green', 'points': 5, 'speed': 'slow'}
{'color': 'green', 'points': 5, 'speed': 'slow'}
{'color': 'green', 'points': 5, 'speed': 'slow'}
{'color': 'green', 'points': 5, 'speed': 'slow'}
{'color': 'green', 'points': 5, 'speed': 'slow'}
...
```

### 在字典中储存列表

有时候,需要将列表储存在字典中,而不是将字典储存在列表中

pizza.py
```python
pizza = {
    'crust':'thick',
    'toppings':['mushrooms','extra cheese'],
}
print ('you ordered a ' + pizza['crust'] + "-crust pizza  with the following toppings: ")

for topping in pizza['toppings']:
    print('\t' + topping)
```
```
you ordered a thick-crust pizza  with the following toppings:
        mushrooms
        extra cheese
```

#### <span id = 'blue' > 练习测试 </span>

1. 人：在为完成练习6-1而编写的程序中，再创建两个表示人的字典，然后将这三个字典都存储在一个名为people的列表中。遍历这个列表，将其中每个人的所有信息都打印出来。

2. 宠物：创建多个字典，对于每个字典，都使用一个宠物的名称来给它命名；在每个字典中，包含宠物的类型及其主人的名字。将这些字典存储在一个名为pets的列表中，再遍历该列表，并将宠物的所有信息都打印出来。

3. 喜欢的地方：创建一个名为favorite_places的字典。在这个字典中，将三个人的名字用作键；对于其中的每个人，都存储他喜欢的1~3个地方。为让这个练习更有趣些，可让一些朋友指出他们喜欢的几个地方。遍历这个字典，并将其中每个人的名字及其喜欢的地方打印出来。

4. 喜欢的数字：修改为完成练习6-2而编写的程序，让每个人都可以有多个喜欢的数字，然后将每个人的名字及其喜欢的数字打印出来。

5. 城市：创建一个名为cities的字典，其中将三个城市名用作键；对于每座城市，都创建一个字典，并在其中包含该城市所属的国家、人口约数以及一个有关该城市的事实。在表示每座城市的字典中，应包含country、population和fact等键。将每座城市的名字以及有关它们的信息都打印出来。

6. 扩展：本章的示例足够复杂，可以以很多方式进行扩展了。请对本章的一个示例进行扩展：添加键和值、调整程序要解决的问题或改进输出的格式。

#### <span id = 'green' > 练习结果 </span>

1. people.py
    ```python
    people = []
    people_1 = {'name':'user1','sex':'F'}
    people_2 = {'name':'user2','sex':'M'}
    people_3 = {'name':'user3','sex':'F'}
    people = [people_1,people_2,people_3]
    for i in people:
        print(i)
    ```

2. pet.py
```python
    pet_1 = {'pet':'pet1','master':'user1'}
    pet_2 = {'pet':'pet2','master':'user2'}
    pet_3 = {'pet':'pet3','master':'user3'}
    pets = [pet_1,pet_2,pet_3]
    for d in pets:
        print (d['pet'])
```

3. like.py
    ```python
    favorite_places = {
        'name1':['like1','like2','like3'],
        'name2':['like4','like5','like6'],
        'name3':['like7','like8','like9'],
    }
    for name,like in favorite_places.items():
        print('\n' + name + ' like this ')
        for i in like:
            print ('\t\t'+i)
    ```

4. likenum.py
    ```python
    favorite_places = {
        'name1':['like1','like2','like3'],
        'name2':['like4','like5','like6'],
        'name3':['like7','like8','like9'],
    }
    for name,like in favorite_places.items():
        print('\n' + name + ' like this ')
        for i in like:
            print ('\t\t'+i)
    ```

5. city.py
    ```python
    cities = {
        'beijing':{'city':'beijing','renkou':'100'},
        'chongqing':{'city':'chongqing','renkou':'200'},
        'shanghai':{'city':'shanghai','renkou':'200'},
        }
    for x,y in cities.items():
        for i,ii in y.items():
            print ('chengshi: ' + str(x) +' city: ' + i + ' renkuo: ' + ii )
    ```

# 第七章 用户输入和 while 循环

大多数程序都在解决最终用户的问题,为此经常需要从用户哪里获取一些信息.
本章中,将学习如何接收用户输入,让程序能够对其进行处理.
还将学习符合让程序不断地运行,让用户能够根据需要输入的信息.

## 函数 input() 的工作原理

函数 input() 让程序暂停运行,等待用户输入一些文本.获取用户输入后,Python将其储存在一个变量中,以方便继续使用
parrot.py
```python
message = input('Tell me somthing : ')
print (message)
```
```
Tell me someing: 1231
1231
```

### 编写清晰的程序

每当你使用函数 input() 时,都应指定清晰而易于明白的提示,准确的指出希望用户提供什么样的信息

rollercoaster.py
```python
height = input ('How tall are you , in inches? ')
height = int(height)
if height >= 36:
    print ('\nYou are tall enough to ride!')
else:
    print ('\nYou well be able to ride when you are a little older.')
```
```
How tall are you , in inches? 12

You well be able to ride when you are a little older.

How tall are you , in inches? 38

You are tall enough to ride!
```

### 求模运算符

处理数值信息时,求模运算符 (%) 是一个很有用的工具,他将两个数相除并返回余数:

#### <span id = 'blue' > 练习测试 </span>

1. 汽车租赁：编写一个程序，询问用户要租赁什么样的汽车，并打印一条消息，如“LetmeseeifIcanfindyouaSubaru”。

2. 餐馆订位：编写一个程序，询问用户有多少人用餐。如果超过8人，就打印一条消息，指出没有空桌；否则指出有空桌。

3. 10的整数倍：让用户输入一个数字，并指出这个数字是否是10的整数倍。

#### <span id = 'green' > 测试结果 </span>

1. car.py
    ```python
    q = input ('Y need cars: ')
    print (q)
    ```

2. wei.py
    ```python
    q = input('do u have many people? ')
    q = int (q)
    if q > 8:
        print ('none')
    else:
        print ('Great!  i have many table ')
    ```

3. 10.py
    ```python
    q = input ('please input number: ')
    q = int(q)
    if q % 2 == 0:
        print ('Great, this num is ten*2')
    else:
        print ('error')
    ```

## while 循环

for 循环用于针对几何中的每个元素的一个代码块,而**while循环不断的运行,知道指定的条件不满足为止**

### 使用 while 循环

可以使用while循环来数数

counting.py
```python
current_number = 1
while current_number <= 5:
    print (current_number)
    current_number += 1
```
```
1
2
3
4
5
```

### 让用户选择何时退出

可以使用while循环让程序在用户愿意的时候不断的运行.

parrot.py
```python
prompt = "\nTell me something, and i will repeat it back to you : "
prompt += "\nEnter 'quit' to end the program. "
message = ""
while message != 'quit':
    message = input (prompt)
    print (message)
```

