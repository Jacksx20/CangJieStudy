package demo3

import std.math.*
import std.time.*

// 定义struct类型的坐标点
struct Point {   // ①
    // 定义不可变成员变量（值类型核心特性）
    let x: Int64   // ②
    let y: Int64

    // 定义构造函数
    init(x: Int64, y: Int64) {   // ③
        this.x = x
        this.y = y
    }

    // 点平移：返回新点（体现不可变性）
    // dx: 表示坐标x的移动值
    // dy: 表示坐标y的移动值
    func translated(dx: Int64, dy: Int64): Point {   // ④
        // 返回新的坐标点对象
        return Point(this.x + dx, this.y + dy)   // ⑤
    }
}

// 定义struct类型的矩形
struct Rectangle {   // ⑥
    // 定义可变的成员变量
    var topLeft: Point   // ⑦
    var width: Int64
    var height: Int64

    //定义构造函数
    init(topLeft: Point, width: Int64, height: Int64) {   // ⑧
        this.topLeft = topLeft
        this.width = width
        this.height = height
    }

    // 矩形平移，可在函数内修改成员变量
    mut func translate(dx: Int64, dy: Int64): Unit {   // ⑨
        this.topLeft = topLeft.translated(dx, dy)
    }
}

// 定义class类型的坐标点（引用类型对照组）
class RefPoint {   // ⑩
    // 定义成员变量
    var x: Int64   // ⑪
    var y: Int64

    // 定义主构造函数
    init(x: Int64, y: Int64) {   // ⑫
        this.x = x
        this.y = y
    }

    // 点平移
    func translated(dx: Int64, dy: Int64): Unit {
        x += dx
        y += dy
    }
}

// 值类型/引用类型性能测试
func performanceTesting(dataType: String, x!: Int64 = 1, y!: Int64 = 2): Duration {
    // 开始时间
    let valueTypeStart = DateTime.now().toUnixTimeStamp()
    for (_ in 0..100000) {
        if (dataType == "value") {   // 字符串使用双引号
            // 创建Point对象（栈分配，无需GC）
            let _ = Point(x, y)   // ⑬
        } else if (dataType == "reference") {
            // 创建RefPoint对象（堆分配，产生GC压力）
            let _ = RefPoint(x, y)   // ⑭
        }
    }
    // 返回运行时间差对象
    return DateTime.now().toUnixTimeStamp() - valueTypeStart
}

main() {
    let valueTypeTime = performanceTesting("value")
    let refTypeStart = performanceTesting("reference")

    //1.性能测试：值类型vs引用类型
    println("值类型耗时: ${valueTypeTime}ms") // 预期：更短（无GC）
    println("引用类型耗时: ${refTypeStart}ms") // 预期：更长（GC开销）

    //2.值&引用类型行为差异验证
    var p1 = Point(0, 0)
    var p2 = p1
    var p3 = p2.translated(3, 4)
    println("p1: (${p1.x}, ${p1.y}), p3: (${p3.x}, ${p3.y})")

    var rp1 = RefPoint(0, 0)
    var rp2 = rp1
    rp2.translated(3, 4)
    println("rp1: (${rp1.x}, ${rp1.y}), rp2: (${rp2.x}, ${rp2.y})")

    //3.调用矩形
    var rectangle = Rectangle(p2, 300, 200)
    rectangle.translate(5, 6)
    println("rectangle: (${rectangle.topLeft.x},${rectangle.topLeft.y}), width: ${rectangle.width}, height:${rectangle.height}")
}