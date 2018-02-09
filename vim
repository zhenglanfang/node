编辑配置文件

可以使用以下命令，新建缓冲区来编辑配置文件：

:edit $MYVIMRC

也可以使用以下命令，新建标签页来编辑配置文件：

:tabedit $MYVIMRC

例如，我们可以在配置文件中使用以下命令，来设置vim的选项：

:syntax on "打开语法加亮功能

:set shiftwidth=4 "设置缩进宽度为4个空格

其中，单引号（"）为注释内容。

应用配置文件

修改配置文件后，需要重新启动Vim，或使用:source命令来应用新的设置：

:source $MYVIMRC

我们可以在配置文件中增加以下命令，在保存后自动应用配置：

autocmd bufwritepost .vimrc source $MYVIMRC

