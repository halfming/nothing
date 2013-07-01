常量，变量，表达式
================

第一个程序
=========

bash
------

::

  echo "hello world"

python
----------

::

  print "hello world"

c
---------

::

  #include <stdio.h>
  int main()
  {
  printf ("hello world\n");
  }


go
----------

::

  package main

  import "fmt"

  func main() {
	fmt.Println("Hello, 世界")
  }
  
  
常量，变量
===========

bash
-------

bash变量有点复杂，环境变量和内部变量

::

  VAR1=234 #定义一个变量 没有空格  这样VAR1便是环境变量了
  echo $VAR1 #引用变量要$开头
  export VAR1 #这样这个变量就是内部变量了 shell关闭变量依然存在
  
  [halfming@localhost LCTHW]$ VAR1=123
  [halfming@localhost LCTHW]$ VAR1=$VAR1:123
  [halfming@localhost LCTHW]$ echo $VAR1
  123:123
  
变量可以随便赋值 没有类型的概念,貌似保存为字符串

python
---------

python同样不用指定类型，而且不限定长度，你可以给一个变量赋一个1000位的数这个真是太可爱了，貌似是运行时指定的

::

  >>> inta = 100000000000000000000000000000000000000000000000
  >>> print inta
  100000000000000000000000000000000000000000000000

c
-----------

c语言不只要指定变量的类型，使用之前还必须声明，声明时没赋值变量将保存一个未知的值
  表面上看好搓啊，正因为这样什么都不做，就意味着高效
  
::

  int a
  //声明变量
  a = 123
  //赋值 因为声明为int 后面赋的值必须为int类型 而且还不能超过限制大小
  
go
--------

go语言集合了python和C