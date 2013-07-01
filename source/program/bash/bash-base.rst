bash基础
==========

控制序列
---------

管道
  命令一 | 命令二 ： 命令二处理命令一的结果
  命令一 |& 命令二 ： 命令二处理命令一的错误输出
  
命令队列
  命令一 && 命令二 ： 命令一为真才执行命令二
  命令一 || 命令二 ： 命令一为真不执行命令二
  
循环结构
  until：until 测试命令; do 命令块; done
  while： while 测试命令; do 命令块; done
  for：for 变量 [in 单词] ; do 命令块; done
  另一种for：for (( 表达式一 ; 表达式二 ; 表达式三 )); do 命令块 ; done

条件结构
if::
  
  if 测试命令一 ; then
  命令块一 ;
  [elif 测试命令二 ; then
  命令块二 ;]
  .
  [else
  其它命令块 ;]
  fi
  
case::

  echo
  -n "请输入一个动物的名称:"
  read
  ANIMAL
  echo
  -n "$ANIMAL有"
  case
  $ANIMAL in
  	( 马 | 狗 | 猫 ) echo -n "四";;
	人 | 袋鼠 ) echo -n "两";;
	*) echo -n "末知数目的";;
  esac
  echo "腿。"

|反正我不会用这形式。。。

select

::

  select  fname  in *;
  do
    echo you picked $fname
    break;
  done
  
这个其实也不怎么用，自动化嘛，谁会无聊到用select和脚本交互 read多方便啊

| ((...)) 用于表达式求值
| [[...]] 条件表达式求值

函数
  function 名称() { 语句块 }
  引用时直接 名称，没有括号
  
位置参数
-----------

一般的命令ls -a之类都引入许多参数，如何获得参数呢

::
  
  for i in $*
  do
      echo $i
  done  
  
运行

::

  [halfming@localhost LCTHW]$ sh sh.sh 1 2 3
  1
  2
  3

| 脚本后面跟3个参数 $* 保存所有参数
| $0 记录脚本名称
| $1 第一个参数 $2 第二个参数

shell扩展
------------

大括号

::

  [halfming@localhost LCTHW]$ echo a{b,c,d}b
  abb acb adb

  #echo 变成 mkdir 将创建以上3个名字的文件夹
  
命令替换
  $(command) 或 `command` rst格式`有特殊功能。。
  
算数
  $((表达式))
  
重定向
  cat file1 > file2 ：file1内容到file2.如果是>>表示追加
  

