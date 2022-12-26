### 确认perl环境
确认电脑上是否已经安装perl， command line 输入
```
perl -v
```
如已安装会出现类似下面的文字
```
This is perl 5, version 30, subversion 3 (v5.30.3) built for darwin-thread-multi-2level
(with 2 registered patches, see perl -V for more detail)

Copyright 1987-2020, Larry Wall

Perl may be copied only under the terms of either the Artistic License or the
GNU General Public License, which may be found in the Perl 5 source kit.

Complete documentation for Perl, including FAQ lists, should be found on
this system using "man perl" or "perldoc perl".  If you have access to the
Internet, point your browser at http://www.perl.org/, the Perl Home Page.
```

如还没有安装要看pd上有无相关资料。

### 运行一个perl程序
perl代码保存为 `xxx.pl`， `xxx`为文件名， `pl`为后缀。

如代码文件名为`Hello.pl`， 则在命令行中执行`perl Hello.pl`。

### 注释
注释行为 `#` 开头的行

`=begin` 和 `=end` 中间的所有文字也会被视为注释

```
# 这是单行注释
print "Hello, world\n";

=begig
这中间所有内容都是注是。。
。
。
哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈好
=cut
```
上面代码的运行结果：
```
Hello, world
```

### perl中空格不影响运行结果
在两个引号中的空格，tab，换行对perl解释器来说都一样。

### 单引号和双引号有区别
双引号会解释`\n`和`$a`这样的特殊符号，单引号不会。单引号会完全
