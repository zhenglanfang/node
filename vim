编辑配置文件

可以使用以下命令，新建缓冲区来编辑配置文件：

:edit $MYVIMRC

也可以使用以下命令，新建标签页来编辑配置文件：

:tabedit $MYVIMRC

例如，我们可以在配置文件中使用以下命令，来设置vim的选项：

:syntax on "打开语法加亮功能

:set shiftwidth=4 "设置缩进宽度为4个空格
:set number 设置行号

其中，单引号（"）为注释内容。

应用配置文件

修改配置文件后，需要重新启动Vim，或使用:source命令来应用新的设置：

:source $MYVIMRC

我们可以在配置文件中增加以下命令，在保存后自动应用配置：

autocmd bufwritepost .vimrc source $MYVIMRC

进入插入模式:

  i: 插入光标前一个字符 

  I: 插入行首 

  a: 插入光标后一个字符 

  A: 插入行未 

  o: 向下新开一行,插入行首 

  O: 向上新开一行,插入行首
  
移动光标:

  h: 左移 

  j: 下移 

  k: 上移 

  l: 右移

  M: 光标移动到中间行 

  L: 光标移动到屏幕最后一行行首 

  G: 移动到指定行,行号 -G

  w: 向后一次移动一个字 

  b: 向前一次移动一个字

  {: 按段移动,上移 

  }: 按段移动,下移

  Ctr-d: 向下翻半屏 

  Ctr-u: 向上翻半屏

  Ctr-f: 向下翻一屏 

  Ctr-b: 向上翻一屏

  gg: 光标移动文件开头 

  G: 光标移动到文件末尾
    
删除命令:

  x: 删除光标后一个字符,相当于 Del 

  X: 删除光标前一个字符,相当于 Backspace

  dd: 删除光标所在行,n dd 删除指定的行数 D: 删除光标后本行所有内容,包含光标所在字符 

  d0: 删除光标前本行所有内容,不包含光标所在字符

  dw: 删除光标开始位置的字,包含光标所在字符
  
撤销命令:

  u: 一步一步撤销 

  Ctr-r: 反撤销
  
重复命令:
  .: 重复上一次操作的命令
  
文本行移动:

  >>: 文本行右移 

  <<: 文本行左移
复制粘贴:

  yy: 复制当前行,n yy 复制 n 行 

  p: 在光标所在位置向下新开辟一行,粘贴
  
可视模式:

  v: 按字符移动,选中文本 

  V: 按行移动,选中文本可视模式可以配合 d, y, >>, << 实现对文本块的删除,复制,左右移动
  
替换操作:

  r: 替换当前字符 

  R: 替换当前行光标后的字符
  
查找命令:

  /: str查找
  n: 下一个
  N：上一个
  
替换命令：

  把abc全部替换成123

  末行模式下，将光标所在行的abc替换成123
  :%s/abc/123/g

  末行模式下，将第一行至第10行之间的abc替换成123
  :1, 10s/abc/123/g

