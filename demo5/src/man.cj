package demo5

import std.convert.*

// 数学计算器类
class Calculator {  // ①
    // 参与计算的当前值
    private var currentValue: Float64

    // 定义主构造函数，参数列表为非命名参数
    init(currentValue: Float64) { this.currentValue = currentValue }  // ②

    // 基础操作：加法
    func add(operand: Float64): Calculator {
        // 通过Lambda表达式进行加法计算
        let operation = { x: Float64 => x + operand }  // ③
        currentValue = operation(currentValue)
        // 类的实例对象的引用作为返回值（支持链式调用）
        return this  // ④
    }

    // 高级操作：幂运算（带调试开关）
    func power(operand: Float64, debug: Bool): Calculator {  // ⑤
        // 通过Lambda表达式进行幂计算
        let operation = { x: Float64 =>   // ⑥
            let result = x ** operand
            if (debug) {
                println("幂运算结果: ${result}")
            }
            result
        }
        currentValue = operation(currentValue)
        // 类的实例对象的引用作为返回值（支持链式调用）
        return this  // ⑦
    }

    // 获取计算结果（带精度控制）
    func getResult(precision: Int64): String {  // ⑧
        return formatFloat(currentValue, precision)
    }
}

// 演示用法
main() {
    // 创建Calculator对象，并通过链式调用得到计算结果
    let result = Calculator(0.0).add(2.0).power(3.0, true).getResult(2)  // ⑨
    println("计算结果: ${result}") // 输出计算结果
}