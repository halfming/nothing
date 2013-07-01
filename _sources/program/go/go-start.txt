go简介
=========

安装
--------
• 首先安装 Mercurial(获取 hg 命令)。在 Ubuntu/Debian/Fedora 需要安装 mercu-
rial 包;
• 为了编译 Go 需要包:bison,gcc,libc6-dev,ed,gawk 和make;
• 设置环境变量 GOROOT 作为 Go 的安装目录:
% export GOROOT= ̃/go
• 然后获取 Go 最新的发布版(=Go 1)源代码:
% hg clone -r release https://go.googlecode.com/hg/ $GOROOT
• 设置 PATH 指向到 Go 的二进制文件所在目录,这样就可以让 Shell 找到它们:
% export PATH=$GOROOT/bin:$PATH
• 编译 Go
% cd $GOROOT/src
% ./all.bash

go doc 
godoc 

hello,world
-------------

::

  //hello.go
  package main
  
  import "fmt"
  
  func main() {
    fmt.Println("hello,world")
  }
  
运行

1. go run hello.go
2. go build
3. go install

变量，类型和保留字
-------------------

声明变量有两种方式

1. 指定类型

::

  var a int
  a = 15
  
  var (
    x int
    b bool
  )
  
2. 不指定类型

::

  a := 15
  b := 16
  
  a, b := 12, 15
  
  _, b := 56, 78 
  //下划线代表丢弃该值
  
常量

::

  const (
    a = iota  
    b = iota
  )
  //iota生成枚举第一次a=0 第二次调用值为1 所以b=1
  const (
    a int = 0
  )
  //当然也可以指定类型
  
字符串
------------

::

  s := "hello"
  s[0] = 'c' 修改第一个元素
  
  • func 用于定义函数和方法;
• return 用于从函数返回,func 和 return 参阅第 3 章了解详细信息;
• go 用于并行(第 7 章);
• select 用于选择不同类型的通讯,参阅第 7 章;
• interface 参阅第 6 章;
• struct 用于抽象数据类型,参阅第 5 章;
• type 同样参阅第 5 章。




  