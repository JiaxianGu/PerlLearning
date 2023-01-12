## 条件语句
```
if (boolean_expression) {
    # statements
}

if(boolean_expression) {
   # statement(s) will execute if the given condition is true
} else {
   # statement(s) will execute if the given condition is false
}

$a = 100;
if( $a  ==  20 ) {
    # statements when $a == 20
} elsif( $a ==  30 ) {
   # statements when $a == 30
} else {
   statements
}
```
perl的条件语句还有`unless`关键词，形式和`if`一样，但真假判断相反
```
unless(boolean_expression) {
   # 如果上面的表达式为假，则执行这里的语句。
    （其他的if语句都是如果表达式为真则执行。）
}

unless(boolean_expression) {
   # 如果上面表达式为假，则执行这里的语句
} else {
   # 如果上面表达式为真，则执行这里的语句
}


```
