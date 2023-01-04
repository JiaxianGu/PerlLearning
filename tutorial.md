## 确认perl环境
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

## 基本语法
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
双引号会解释`\n`和`$a`这样的特殊符号，单引号不会。
```
print "Hello, world\n";
print 'Hello, world\n';
```
上面代码的运行结果：
```
Hello, world
Hello, world\n$
```

### 所有perl变量都以`$`,`@`或`%`开头。 变量中不允许有`$`,`@`或`%`等标点符。

## 变量类型
### 一共有三种变量，Scalar(标量)， Arrays， Hashes
Scalar以`$`开头，包含所有数字，字符串。

Arrays以`@`开头，和其他语言的array概念相同。

Hashed以`%`开头，和其他语言的hash概念相同。

### 定义标量
```
$age = 25;   
$name = "John Paul";
$salary = 1445.50;
```

### 数组
定义数组
```
@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");
@weekdays = qw/Monady Tuesday Wednesday/
```
访问数组变量：
```
print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";
print "\$weekdays[1] = $weekdays[1]\n";

```
结果如下：
```
$ages[0] = 25
$ages[1] = 30
$ages[2] = 40
$names[0] = John Paul
$names[1] = Lisa
$names[2] = Kumar
$weekdays[1] = Tuesday
```

数组的增删查改
- 对数组元素的增加删除只能作用于位于头和尾的元素

    把`value`添加到数组的最后
    ```
    push(@array, value);
    ```

    把数组最后一个元素删除并返回这个被删除的元素
    ```
    pop(@ARRAY);
    ```

    把数组第一个元素删除并返回这个被删除的元素
    ```
    shift(@ARRAY);
    ```

    把`value`放到数组最前面并返回新数组的元素个数
    ```
    unshift(@ARRAY, LIST);
    ```


### hash
定义hash变量
```
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 'Student');
```
    括号中第一个值是key，第二个值是第一个key的value，以此类推
```
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 'Student');
```
    也可以用`=>`来更清晰的表达键值关系
    
访问hash变量
```
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";
```
结果如下
```
$data{'John Paul'} = 45
$data{'Lisa'} = 30
$data{'Kumar'} = Student
```




### 变量之间的上下文转换
把数组变量赋值给scalar变量会直接在scalar变量中保存数组的长度。
```
@names = ('John Paul', 'Lisa', 'Kumar');
@copy = @names;
# 变量 @copy 中的内容和 @names 中一样
$size = @names;
# 变量 $size 的值为3
```

### 变量之间连接
```
$str = "hello" . "world"
$num = 5 + 10;
$mix = $str . $num;
print "str = $str\n";
print "num = $num\n";
print "mix = $mix\n";
```
结果如下：
```
str = helloworld
num = 15
mix = helloworld15
```


