python基础
===============

数字
-------------

一个变量都有3个属性：名称，类型，值。python会自动处理类型，不需要声明，并且可以处理任意长度的值。
::

  a = 12  #整型
  >>> 2 ** 123   #2的123次方 这要用C会怎样
  10633823966279326983230456482242756608L
  >>> 52.3E-4   #浮点可以这样表示
  0.00523
  >>> 52.3E4
  523000.0
  >>> (-5+6j)   #复数 算然我目前没用过
  (-5+6j)
  >>> (-5.6+6.9j)
  (-5.6+6.9j)

字符串
----------

| 定义字符串单引号‘’双引号“” 
| 三引号包裹多行
| \ 用于转义
| r开头 自然字符串 不会转义
| u开头 Unicode文本
| 字符串与变量混写时，需要逗号分割

运算符
-----------

=====   =======	============
a	b	c
=====	=======	============
'+'	加	1+1=2
'-'
'*'
'**'	幂
/
//	取整除
%	求余
<<	
>>
&	按位与
|	按位或
^	异或
~	补码	
<
>
<=
>=
'=='
!=
not
and
or
=====	=======	============

| 其他的就懒得解释了，话说C语言保存整型就是用补码
| 为什么变量的值以1开头就是负的呢，因为负数以补码保存，有些说第一位是符号位基本是误导啊
| 为什么以补码保存呢，规定喽，为什么这样规定，当然是因为这样你根本无需考虑符号位，用二进制做下计算就明白了

控制语句
--------

程序和人比最大的优势大概就是循环了，正确的循环，

* if elif else 没什么区别，注意冒号
* while 同上
* for很好玩

::

  for i in range(1, 5):
    print i
  else:				#可以和else联用
    print 'The for loop is over'

| range()是一个函数会产生一个序列，i每次取得一个值
| range()可以接受3个参数：开头，结尾，步长

::

  >>> range(1,6)
  [1, 2, 3, 4, 5]
  >>> range(1,6,2)
  [1, 3, 5]
  
* break 跳出循环
* continue 跳过它一下的语句 继续执行循环
* goto 好吧 python根本没有这东西

函数
------

def定义参数,不用指定参数类型，不用定义返回类型，这个真方便

::

  def printMax(a, b):
    if a > b:
      print a, 'is maximum'
    else:
      print b, 'is maximum'
      
  printMax(3,4) 
  
* 函数内的的变量作用域只在函数内，global可以在函数内声明为全局变量
* 默认参数只需在定义函数指定下如 def printMax(a=1,b)


模块
-------

模块可以理解为一个函数集合，import以后使用

::

  import sys
  
  for i in sys.argv:
    print i
    
  $ python using_sys.py we are arguments
  The command line arguments are:
  using_sys.py
  we
  are
  arguments
  
sys.argv是一个字符串列表
  sys.argv[0]返回程序名字 sys.argv[1]第一个参数 依次类推
  
另一种引用模块语法
  from sys import argv, 使用时就用argv代替sys.argv
  
创建自己的模块

::

  #!/usr/bin/python
  # Filename: mymodule.py

  def sayhi():
    print 'Hi, this is mymodule speaking.'

  version = '0.1'

  # End of mymodule.py 
  
引用

::

  #!/usr/bin/python
  # Filename: mymodule_demo.py

  import mymodule

  mymodule.sayhi()
  print 'Version', mymodule.version 
  
当然也可以把多个函数文件放入一个文件夹，在文件夹中写个__init__所有函数组成一个包
   
数据结构
---------

列表

::

  >>> lista = ['a', 'b', 'c', 'd']
  >>> for i in lista:
  ...     print i     #遍历
  ... 
  a
  b
  c
  d
  >>> lista.append('a') #添加
  >>> lista
  ['a', 'b', 'c', 'd', 'a']
  >>> lista.sort() #排序
  >>> lista
  ['a', 'a', 'b', 'c', 'd']
  >>> del lista[4] #删除
  >>> lista
  ['a', 'a', 'b', 'c']
  >>> len(lista) #返回列表长度
  4

元组
  tuple = (a, b, c) 元组与列表的区别就是元组不可变
  
字典

::

  ab = {       'Swaroop'   : 'swaroopch@byteofpython.info',
             'Larry'     : 'larry@wall.org',
             'Matsumoto' : 'matz@ruby-lang.org',
             'Spammer'   : 'spammer@hotmail.com'
     }

  print "Swaroop's address is %s" % ab['Swaroop']

  # Adding a key/value pair
  ab['Guido'] = 'guido@python.org'

  # Deleting a key/value pair
  del ab['Spammer']

  print '\nThere are %d contacts in the address-book\n' % len(ab)
  for name, address in ab.items():
    print 'Contact %s at %s' % (name, address)

  if 'Guido' in ab: # OR ab.has_key('Guido')
    print "\nGuido's address is %s" % ab['Guido']
    
字符串其实就是元组

::

  name = 'Swaroop' # This is a string object

  if name.startswith('Swa'):
    print 'Yes, the string starts with "Swa"'

  if 'a' in name:
    print 'Yes, it contains the string "a"'

  if name.find('war') != -1:
    print 'Yes, it contains the string "war"'

  delimiter = '_*_'
  mylist = ['Brazil', 'Russia', 'India', 'China']
  print delimiter.join(mylist)

面向对象
---------

__init__方法在类的一个对象建立时，马上运行

::

  #!/usr/bin/python
  # Filename: class_init.py

  class Person:
    def __init__(self, name):
        self.name = name
    def sayHi(self):
        print 'Hello, my name is', self.name

  p = Person('Swaroop')
  p.sayHi()

  # This short example can also be written as Person('Swaroop').sayHi() 

  $ python class_init.py
  Hello, my name is Swaroop 
  
| 继承:class a(b):  class a继承class b
| 好吧 不装了 其实我讨厌类 包括python的类

输入输出
---------

| 文件：open() file()都用于文件输入输出，基本没什么区别
| 要说真的区别的话，你写程序觉得要打开就用open() 觉得他是文件就file()

::

  f = file('name.txt', 'w') #打开文件
  f.write(a) #将a的内容写入文件
  b = f.read() #读取文件中的内容保存到b
  f.close() #关闭文件
  
| pickle模块可以在一个文件中储存任何python对象
| cPickle是C写的pickle 作用更快呗

异常
-----------

try..except和try..finally处理异常，错误提前退出，保持程序“正常”

参考
---------

woodpecker.org.cn/abyteofpython_cn/chinese/index.html