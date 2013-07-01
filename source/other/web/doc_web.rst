静态网页生成
=============
自动化处理文档，文本转化成HTML，自动处理链接，页面不要太难看，这就是我的
要求。以下是我的各种尝试。

bash
----------------
* bash是一个脚本语言，把各种linux工具组合起来。
* 对于一个文件，使用sed可以轻松插入删除任何位置的字符一个普通文件变成html文件，在指定文件添加标记就OK，当然修改扩展名
* 多个文件，把处理一个文件的步骤变成一个函数，遍历目录。

  遍历一层很简单ls获得所有文件夹for一下就可以了，这种方法遍历多层会很复杂
  多层目录的想法是指定一个变量保存当前的目录，深层遍历，用cd进入目录处理
  以后当前目录没文件夹时返回。处理文件时还要把处理的文件信息插入别的文件
  以实现自动链接。其他的，判断文件是否更改，写CSS之类。
  代码就算了，我记得有100行左右，里面都是sed，cd，cp，diff和控制语句
  
* 一些没什么用的经验，一个没什么标记，只用空行分段的文本可以sed在所有空行插入`</p><p>`文章开头`<p>` 结尾 `</p>` 
* 批量修改文件后缀::

    for file in `ls`
    do
    newfile =`echo $i | sed 's/^./q/'`
    mv $file $newfile
    done

jekyll
--------
jekyll是github的默认引擎，一个Rails项目，以指定文件格式命名文件，生成静态文件
  | jekyll new 初始化
  | jekyll build 生成静态文件
  | jekyll serve 可以在本地访问你的内容

* jekyll的几个部分
* 标记语言markdown或rst，源文件使用简单的标记
* yaml配置文件
* liquid模板系统

  另外一个项目jekyllbootstrap,用bootstrap美化jekyll，官网有个简单的教程：在github上建立一个网站
  
* 其他类似项目
* Rails:Octopress Bonsai Webgen
* Python:Hyde Cyrax
* Php:Phrozn
* JS:Hexo 这个我用过特点很快。

Django
-----------
  个人比较喜欢python，django至少很有名气，MVC模式，所谓的web服务器实现的功能，监
  听端口接受信息根据接受的信息发送指定文件过去。指定可以接受的url，编写返回的内容
::

    def view_doc(request, dir='1', file='README.md'):
        nav_list = os.listdir("mysite/media/doc")
        b = "mysite/media/doc" + '/' + str(dir)
        bar_list = os.listdir(b)
        a = "mysite/media/doc" + '/' + str(dir) + '/' + str(file)
        input_file = codecs.open( a, mode ="r", encoding ="utf8")
        text = input_file.read()
        context = markdown(text)
        return render_to_response('page.html', locals())

很丑的代码，基本上就是根据URL，读取对应文件内容markdown函数转化为html，再将html
插入模板。locals（）自动处理变量nav_list,bar_list,context.模板中有这些变量

Sphinx
---------------
Sphinx是python维护文档的工具，用rst格式书写文本，可以在github建立项目，import
到readthedocs.org
