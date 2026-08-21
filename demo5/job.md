实验五：数学计算器
得分点：正确使用class类型、函数高级特性等相关知识点并填写代码。

任务描述

实现一个支持函数组合的链式数学计算器，要求：

1. 使用函数类型作为参数接收数学操作（加法、乘法等）

2. 函数类型作为返回值支持链式调用

3. 混合使用命名参数（精度控制、调试开关）和非命名参数（操作数）

任务1：创建项目
详细操作步骤：

打开沙箱实验环境桌面上的“CodeArts IDE for Cangjie”IDE工具，创建项目，设置项目名称为“demo5”。

任务2：创建数学计算器类
创建数学计算器类Calculator，用于实现数学计算的函数式链式调用。

详细操作步骤：

1.创建数学计算器类Calculator，然后定义参与计算的当前值currentValue，并通过主构造函数进行初始化。

2.将以下代码复制到文件中，并在标记为 ①、② 处补全正确的代码。

    copy
    
package demo5

import std.convert.*

// 数学计算器类
___①___ {
  // 参与计算的当前值
    private var currentValue: Float64

    // 定义主构造函数，参数列表为非命名参数
    ___②___

}

  
任务3：实现基础操作：加法
定义函数add，然后在函数中通过Lambda表达式进行加法计算，并支持链式调用。

Lambda表达式知识点扩展：

1.Lambda 表达式是一种匿名函数（即没有函数名的函数），其核心设计目的是在程序中快速定义简短的函数逻辑，无需显式声明函数名称。这一概念起源于数学中的 λ 演算（lambda calculus），后被引入多种编程语言（如 C++、Python、C# 等），用于简化代码并提升灵活性。仓颉编程语言中也引入了 Lambda 表达式。

2. Lambda 表达式的语法为如下形式： { p1: T1, ..., pn: Tn => expressions | declarations }。

其中，=> 之前为参数列表，多个参数之间使用 , 分隔，每个参数名和参数类型之间使用 : 分隔。=> 之前也可以没有参数。=> 之后为 Lambda 表达式体，是一组表达式或声明序列。

3. Lambda 表达式示例：

    copy
    
let f1 = { a: Int64, b: Int64 => a + b }

  
详细操作步骤：

1.定义函数add，参数列表中的非命名参数operand表示操作数，返回值类型为Calculator。然后通过Lambda表达式进行加法计算，并赋值给变量operation。接着将类的实例对象的引用作为返回值返回。

将以下代码复制到文件中，并在标记为 ③、④ 处补全正确的代码。

    copy
    
package demo5

import std.collection.*
import std.convert.*

// 数学计算器类
___①___ {
  // 参与计算的当前值
    private var currentValue: Float64
   
    // 定义主构造函数，参数列表为非命名参数
___②___

// 基础操作：加法
func add(operand: Float64): Calculator {
     // 通过Lambda表达式进行加法计算
     ___③___
     currentValue = operation(currentValue)
     // 类的实例对象的引用作为返回值（支持链式调用）
     ___④___
}    

}

  
任务4：实现高级操作：幂运算
定义函数power，然后在函数中通过Lambda表达式进行幂计算，并支持链式调用。

详细操作步骤：

1.定义函数power，参数列表中的非命名参数operand表示操作数，默认值为返回值类型为Calculator。然后在参数列表中添加命名参数debug，类型为布尔类型，默认值为false，表示调试代码开关，通过该参数判断是否打印幂运算的结果。

将以下代码复制到文件中，并在标记为 ⑤ 处补全正确的代码。

    copy
    
package demo5

import std.convert.*

// 数学计算器类
___①___ {
  // 参与计算的当前值
    private var currentValue: Float64

    // 定义主构造函数，参数列表为非命名参数
___②___

// 基础操作：加法
func add(operand: Float64): Calculator {
     // 通过Lambda表达式进行加法计算
     ___③___
     currentValue = operation(currentValue)
     // 类的实例对象的引用作为返回值（支持链式调用）
     ___④___
}    

// 高级操作：幂运算
func power(___⑤___): Calculator {
   
}
}

  
2.通过Lambda表达式进行幂计算，同时在Lambda表达式中根据参数debug判断是否打印幂运算的结果，打印内容可自定义。最后将Lambda表达式的结果赋值给变量operation。接着将类的实例对象的引用作为返回值返回。将以下代码复制到文件中，并在标记为 ⑥、⑦ 处补全正确的代码。

    copy
    
package demo5

import std.convert.*

// 数学计算器类
___①___ {
  // 参与计算的当前值
    private var currentValue: Float64

    // 定义主构造函数，参数列表为非命名参数
___②___

// 基础操作：加法
func add(operand: Float64): Calculator {
     // 通过Lambda表达式进行加法计算
     ___③___
     currentValue = operation(currentValue)
     // 类的实例对象的引用作为返回值（支持链式调用）
     ___④___
}    

// 高级操作：幂运算
func power(___⑤___): Calculator {
   // 通过Lambda表达式进行幂计算
   ___⑥___
   currentValue = operation(currentValue)
   // 类的实例对象的引用作为返回值（支持链式调用）
   ___⑦___
}
}

  
任务5：获取计算结果
定义函数getResult用于获取计算的结果。

详细操作步骤：

1.定义函数getResult，参数列表为命名参数precision，类型为64位整型，默认值为2，表示计算的精度。

将以下代码复制到文件中，并在标记为 ⑧ 处补全正确的代码。

    copy
    
package demo5

import std.convert.*

// 数学计算器类
___①___ {
  // 参与计算的当前值
    private var currentValue: Float64

    // 定义主构造函数，参数列表为非命名参数
___②___

// 基础操作：加法
func add(operand: Float64): Calculator {
     // 通过Lambda表达式进行加法计算
     ___③___
     currentValue = operation(currentValue)
     // 类的实例对象的引用作为返回值（支持链式调用）
     ___④___
}    

// 高级操作：幂运算
func power(___⑤___): Calculator {
   // 通过Lambda表达式进行幂计算
   ___⑥___
   currentValue = operation(currentValue)
   // 类的实例对象的引用作为返回值（支持链式调用）
   ___⑦___
}

// 获取计算结果
func getResult(___⑧___): String {
   return formatFloat(currentValue, precision)
}
}

  
2. formatFloat函数表示浮点数保留 n 位小数。

在src目录下，创建dataUtils.cj文件，将以下代码复制到文件中即可。

    copy
    
package demo5

// 浮点数保留 n 位小数（四舍五入）
public func formatFloat(v: Float64, digits: Int64): String {
    if (digits <= 0) {
        return Int64(v).toString()
    }

    // 1. 放大 10^n 倍
    var scale: Int64 = 1
    for (_ in 0..digits) {
        scale *= 10
    }

    // 2. 加 0.5 后截断，实现四舍五入
    let scaled = v * Float64(scale)
    let rounded = if (scaled >= 0.0) {
        scaled + 0.5
    } else {
        scaled - 0.5
    }
    let n = Int64(rounded)

    // 3. 拆整数 / 小数
    let intPart = (n / scale).toString()
    var fracPart = (if (n < 0) {
        -n
    } else {
        n
    } % scale).toString()

    // 4. 左侧补零
    while (fracPart.size < digits) {
        fracPart = "0" + fracPart
    }

    return "${intPart}.${fracPart}"
}

  
任务6：测试链式调用
详细操作步骤：

在main函数中创建Calculator对象，并通过链式调用得到计算结果。

将以下代码复制到文件中，并在标记为 ⑨ 处补全正确的代码。

    copy
    
package demo5

import std.convert.*

// 数学计算器类
___①___ {
  // 参与计算的当前值
    private var currentValue: Float64

    // 定义主构造函数，参数列表为非命名参数
___②___

// 基础操作：加法
func add(operand: Float64): Calculator {
     // 通过Lambda表达式进行加法计算
     ___③___
     currentValue = operation(currentValue)
     // 类的实例对象的引用作为返回值（支持链式调用）
     ___④___
}    

// 高级操作：幂运算
func power(___⑤___): Calculator {
   // 通过Lambda表达式进行幂计算
   ___⑥___
   currentValue = operation(currentValue)
   // 类的实例对象的引用作为返回值（支持链式调用）
   ___⑦___
}

// 获取计算结果
func getResult(___⑧___): String {
   return formatFloat(currentValue, precision)
}
}

// 演示用法
main() {
    //创建Calculator对象，并通过链式调用得到计算结果
    ___⑨___
    println("计算结果: ${result}") // 输出计算结果
}

  
任务7：运行程序
编码完成之后，运行程序。