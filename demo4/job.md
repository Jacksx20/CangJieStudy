# 实验四：智能温度调节器

得分点：正确使用if表达式求值等相关知识点并填写代码。

任务描述

根据环境温度自动调节空调模式，展示if表达式作为值的特性和类型推导能力。


| 判断条件 | If 表达式的值（模式） |
| :--- | :--- |
| 如果温度大于 28.0 摄氏度 | 制冷模式 |
| 如果温度小于 8.0 摄氏度 | 制热模式 |
| 如果温度大于等于 22.0 并且小于等于 26.0 摄氏度 | 节能模式 |
| 其他情况 | 自动模式 |


| 判断条件 | If 表达式的值（风速） |
| :--- | :--- |
| 如果 tempDiff 大于 5.0 | 3 |
| 如果 tempDiff 大于 3.0 | 2 |
| 其他情况 | 1 |



## 任务1：创建项目

详细操作步骤：

打开沙箱实验环境桌面上的“CodeArts IDE for Cangjie”IDE工具，创建项目，设置项目名称为“demo4”。

## 任务2：定义空气调节模式函数

定义函数getAirConditionerMode，形参为温度temp，根据不同的温度调节不同的模式。

详细操作步骤：

1.在getAirConditionerMode函数中，使用if表达式根据不同的温度判断开启什么模式，然后进行函数返回，返回值根据if表达式的值进行推导。具体判断条件如下：


请复制if表达式的值（模式）如下：

制冷模式

制热模式

节能模式

自动模式

2.在标记为 ① 处补全正确的代码。

```
package demo4
import std.math.*
import std.time.*
import std.convert.*

// 定义空气调节模式函数
func getAirConditionerMode(temp: Float64) {
    // if表达式作为返回值，类型自动推导
    ___①___
}
```

## 任务3：定义风速调节函数

定义getFanSpeed函数，形参为与舒适温度的差值tempDiff。在函数中，根据tempDiff判断得到基础风速baseSpeed，然后再根据当前的时间点，模拟夜间自动降速等情况。

详细操作步骤：

1.在getFanSpeed函数中，使用if表达式，根据与舒适温度的差值，判断得到基础风速，然后将基础风速baseSpeed作为if表达式的值获取。具体判断条件如下：


2.在标记为 ② 处补全正确的代码。

​    

```
package demo4
import std.math.*
import std.time.*
import std.convert.*

// 定义空气调节模式函数
func getAirConditionerMode(temp: Float64) {
    // if表达式作为返回值，类型自动推导
    ___①___
}

// 定义获取风速函数
func getFanSpeed(tempDiff: Float64) {
    // 根据if表达式获取基础风速
    ___②___
    
}


3. 
```


在getFanSpeed函数中，首先获取当前时间点（某一时刻），然后根据当前时间点currentHour判断是否进行夜间自动降速，这里采用嵌套if表达式完成。然后进行函数返回，返回值根据if表达式的值进行推导。具体判断条件如下：


4. 在标记为 ③ 处补全正确的代码。

​    

```
package demo4
import std.math.*
import std.time.*
import std.convert.*

// 定义空气调节模式函数
func getAirConditionerMode(temp: Float64) {
    // if表达式作为返回值，类型自动推导
    ___①___
}

// 定义获取风速函数
func getFanSpeed(tempDiff: Float64) {
    // 根据if表达式获取基础风速
    ___②___
    

    // 获取当前时间点
    let currentHour = DateTime.now().hour
    // 根据时间动态调整风速（模拟夜间自动降速）
     ___③___

}
```

## 任务4：运行程序

1.在main函数中加入测试运行代码，将以下代码复制到文件中。

​    

```
main() {
    let temperatures = [6.5, 23.0, 27.8, 30.2]
    

    for (temp in temperatures) {
        let mode = getAirConditionerMode(temp)
        let diff = abs(temp - 24.0) // 与舒适温度的差值
        let speed = getFanSpeed(diff)
        
        println("当前温度: ${temp.format('.1')}°C")
        println("推荐模式: ${mode}")
        println("推荐风速: ${speed}级\n")
    }

}
```


2.编码完成之后，运行程序。