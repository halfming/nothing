sphinx使用
===========
安装
-----
| pip install sphinx
| 初始化$ sphinx-quickstart
| 回答一些列问题

1. 文档根目录(Root path for the documentation)，默认为当前目录(.)
2. 是否分离文档源代码与生成后的文档(Separate source and build directories): y
3. 模板与静态文件存放目录前缀(Name prefix for templates and static dir):_
4. 项目名称(Project name) : EvaEngine
5. 作者名称(Author name)：AlloVince
6. 项目版本(Project version) : 1.0.1
7. 文档默认扩展名(Source file suffix) : .rst
8. 默认首页文件名(Name of your master document):index
9. 是否添加epub目录(Do you want to use the epub builder):n
10. 启用autodoc|doctest|intersphinx|todo|coverage|pngmath|ifconfig|viewcode：n
11. 生成Makefile (Create Makefile)：y
12. 生成windows用命令行(Create Windows command file):y

默认会在当前目录生成一些文件conf.py是配置文件

| 新建一个文件test.rst
| 编辑index.rst对应部分

::

    .. toctree::
       :maxdepth: 1

       test.rst

当然test.rst也可以换成dir/test.rst。总之就是相对目录,以上内容会在index.rst中生成牡蛎
    当前目录执行make html 相当与sphinx-build -b html

::

    sphinx-build -b html sourcedir builddir
    -b 指定生成的文件格式
    sourcedir builddir 代表生成的文件保存到builddir



reStrureText
-------------
以下只是部分用法

段落
~~~~~~~
缩进分割段落，不过恢复的时候需要空行

::

    第一行
        第二行
            第三行

        恢复

    恢复

列表
~~~~~~~
无序列表*空格
::

    * 列表1
    * 列表2

有序列表 数字. 空格
::

    1. list
    2. list
    6. list

代码
~~~~~~~

| 显示源代码 两个冒号`::`
| 以两个冒号开头，空行 之后的缩进文本都视为代码
| 冒号之前有内容的话显示一个冒号

::

    ::

    我是代码

另一种代码高亮
::

    .. code-block:: python

        def foo():
            print "Love Python, Love FreeDome"
            print "E文标点,.0123456789,中文标点,. "

::后指定代码类型，这个是pygment库实现的
从文件引入代码方式
::

    .. literalinclude:: yy.py
       :language: python


章节
~~~~~~~
::

    one
    =====
    two
    -----
    three
    ~~~~~~~
    four
    #######

需要注意的下面======要长与标题，每类标题上留个空行

表格
~~~~~~
::

    =====   =====
    iiiiiiiiiiiii
    =====   ======
    2222    222222
    33333   444444
    =====   ======

列表表格
::

    .. list-table:: Frozen Delights!
      :widths: 15 10 30
        :header-rows: 1

       * - Treat
         - Quantity
         - Description
       * - Albatross
         - 2.99
         - On a stick!
       * - Crunchy Frog
         - 1.49
         - If we took the bones out, it wouldn't be
           crunchy, now would it?
       * - Gannet Ripple
         - 1.99
         - On a stick!

超链接
~~~~~~~~~~

外部链接
::

    `text <http://example.com>`

内部链接
    在文本标题之前::

    .. reference:

在其他文件::

    :ref:`reference`

就可以链接之前标记文件了

其他
~~~~~~
::

    |today|

将被替换为当前日期
::

    | cext
    | tttt

竖杠不想用列表又想换行时使用

索引生成
~~~~~~~~~
文件标题之前
::

    .. index::
       single: execution; context
       module: __main__
       module: sys
       triple: module; search; path

       The execution context
       ---------------------

这个指令包含5个条目, 产生的索引会链接到页面确切的位置(离线时是相关的页码).

索引指令会在源位置插入参考标签, 并会放在它们实际所映射内容的前面，上面例子中实际映射内容是标题.

条目类型:

single
    创建单一索引条目. 可以使用分号分隔子条目(该符号也用来描述创建了那些条目).
    
pair
    pair: loop; statement 创建两个索引条目的简写, 命名为 loop; statement 或 statement; loop.
        
triple
    例如 triple: module; search; path 创建三个条目的简写, 它们是 module; search path, search; path, module 及 path; module search.
            
see
    see: entry; other 创建可以映射到其他条目的索引.
                
seealso
    如 see, 但是插入 “see also” 代替 “see”.

| 其实我跟本没用这功能
| 最后在线rst转换`戳<http://rst.ninjs.org/>`
