# 实验三：坐标系统

得分点：正确使用struct结构体等知识点并填写代码。

任务描述

实现一个基于值类型的坐标系统，包含点（Point）和矩形（Rectangle）两种几何类型。要求：

1.使用struct定义值类型，使用class定义引用类型。

2.实现坐标点的平移（translate），返回新实例，体现struct类型其实例成员函数无法修改实例本身的特性。

3.实现矩形的平移（translate）和缩放（scale）变换，修改实例本身。体现mut 函数内部拥有原地修改字段的能力。

4.通过性能测试对比值类型与引用类型在高频创建场景下的内存占用和GC压力。

5.通过对象赋值等操作，对比值类型与引用类型的区别。

## 任务1：创建项目

详细操作步骤：

打开沙箱实验环境桌面上的“CodeArts IDE for Cangjie”IDE工具，创建项目，设置项目名称为“demo3”。

任务2：定义struct类型的坐标点
struct类型为值类型，一般应用在轻量级数据容器的情况下，比如坐标与几何计算：存储点、向量、矩形等简单数据结构。不需要继承和多态等引用类型的特性。

因此，定义struct类型，分别为：坐标点Point和矩形Rectangle。

详细操作步骤：

1.定义坐标点Point，要求体现其实例成员函数无法修改实例本身的特性，并提供构造函数进行数据初始化。具体成员变量说明如下：

2.在标记为 ①、②、③ 处补全正确的代码。

​    

```
package demo3

// 定义struct类型的坐标点
___①___ {
    // 定义不可变成员变量（值类型核心特性）
    ___②___

    // 定义构造函数
    ___③___

}
```

## 任务2：点平移

通过点平移操作，可以实现矩形的移动。点平移时，需要返回新的坐标点对象，体现值类型的不可变性。

详细操作步骤：

通过translated函数实现点平移，返回新的坐标点对象。在标记为 ④、⑤ 处补全正确的代码。

​    

```
package demo3

// 定义struct类型的坐标点
___①___ {
    // 定义不可变成员变量（值类型核心特性）
    ___②___

    // 定义构造函数
    ___③___
    
    // 点平移：返回新点（体现不可变性）
    // dx: 表示坐标x的移动值
    // dy: 表示坐标y的移动值
    func translated(dx: Int64, dy: Int64): ___④___ {
        // 返回新的坐标点对象
        ___⑤___
    }

}
```

## 任务3：定义struct类型的矩形

详细操作步骤：

1. 定义矩形Rectangle，要求其成员变量在函数中是可修改的，并提供构造函数进行数据初始化。具体成员变量说明如下：


2. 在标记为 ⑥、⑦、⑧、⑨ 处补全正确的代码。

​    

```
package demo3

// 定义struct类型的坐标点
___①___ {
    // 定义不可变成员变量（值类型核心特性）
    ___②___

    // 定义构造函数

___③___

// 点平移：返回新点（体现不可变性）
// dx: 表示坐标x的移动值
// dy: 表示坐标y的移动值
func translated(dx: Int64, dy: Int64): ___④___ {
    // 返回新的坐标点对象
    ___⑤___
}
}

// 定义struct类型的矩形
___⑥___ {
    // 定义可变的成员变量
___⑦___    

    //定义构造函数
    ___⑧___
    
    // 矩形平移，可在函数内修改成员变量
    ___⑨___ func translate(dx: Int64, dy: Int64): Unit {
        this.topLeft = topLeft.translated(dx, dy)
    }

}
```

## 任务4：定义class类型的坐标点

通过定义class引用类型的坐标点对照组，为性能测试做准备。

详细操作步骤：

定义class类型的坐标点RefPoint，通过主构造函数进行变量初始化。具体成员变量参考任务2中的说明。在标记为 ⑩、⑪、⑫ 处补全正确的代码。

```
    
package demo3

// 定义struct类型的坐标点
___①___ {
    // 定义不可变成员变量（值类型核心特性）
    ___②___

    // 定义构造函数

___③___

// 点平移：返回新点（体现不可变性）
// dx: 表示坐标x的移动值
// dy: 表示坐标y的移动值
func translated(dx: Int64, dy: Int64): ___④___ {
    // 返回新的坐标点对象
    ___⑤___
}
}

// 定义struct类型的矩形
___⑥___ {
    // 定义可变的成员变量
___⑦___    

    //定义构造函数
    ___⑧___
    
    // 矩形平移，可在函数内修改成员变量
    ___⑨___ func translate(dx: Int64, dy: Int64): Unit {
        this.topLeft = topLeft.translated(dx, dy)
    }

}

// 定义class类型的坐标点（引用类型对照组）
___⑩___ {
    // 定义成员变量
   ___⑪___
    

    // 定义主构造函数

___⑫___

    // 点平移
    func translated(dx: Int64, dy: Int64): Unit{
        x += dx
        y += dy
    }

}
```

## 任务5：构建性能测试函数

在函数中通过循环遍历，分别创建10万个值类型和引用类型对象，然后对比对象创建的前后时间，即可了解性能。

详细操作步骤：

在performanceTesting函数中，根据不同的dataType数据类型，分别创建Point对象和RefPoint对象。在标记为 ⑬  、⑭ 处补全正确的代码

```
    
package demo3

import std.math.*
import std.time.*

// 定义struct类型的坐标点
___①___ {
    // 定义不可变成员变量（值类型核心特性）
    ___②___

    // 定义构造函数

___③___

// 点平移：返回新点（体现不可变性）
// dx: 表示坐标x的移动值
// dy: 表示坐标y的移动值
func translated(dx: Int64, dy: Int64): ___④___ {
    // 返回新的坐标点对象
    ___⑤___
}
}

// 定义struct类型的矩形
___⑥___ {
    // 定义可变的成员变量
___⑦___    

    //定义构造函数
    ___⑧___
    
    // 矩形平移，可在函数内修改成员变量
    ___⑨___ func translate(dx: Int64, dy: Int64): Unit {
        this.topLeft = topLeft.translated(dx, dy)
    }

}

// 定义class类型的坐标点（引用类型对照组）
___⑩___ {
    // 定义成员变量
   ___⑪___
    

    // 定义主构造函数

___⑫___

    // 点平移
    func translated(dx: Int64, dy: Int64): Unit{
        x += dx
        y += dy
    }

}

// 值类型/引用类型性能测试
func performanceTesting(dataType: String, x!: Int64 = 1, y!: Int64 = 2): Duration {
    // 开始时间
    let valueTypeStart = DateTime.now().toUnixTimeStamp()
    for (_ in 0..100000) {
        if (dataType == 'value') {
            // 创建Point对象（栈分配，无需GC）
            ___⑬___
        } else if (dataType == 'reference') {
            // 创建RefPoint对象（堆分配，产生GC压力）
            ___⑭___
        }
    }
    // 返回运行时间差对象
    return DateTime.now().toUnixTimeStamp() - valueTypeStart
}
```

## 任务6：运行程序

1.在main函数中执行以下任务：

1）值类型和引用类型输出性能对比。通过对比发现值类型创建对象的效率比引用类型高。原因如下：

值类型直接在栈上分配，创建和释放无需GC介入。

引用类型在堆内存中分配资源，有GC回收机制。

2）值类型和引用类型在对象赋值上的区别：

引用类型（class类型为例）：对象在赋值或传参时，不会将对象进行复制，多个变量指向的是同一个对象，通过一个变量去修改对象中成员的值，其他变量中对应的成员变量也会被修改。

值类型（struct类型为例）：在赋值或传参时，会对 struct 实例进行复制（成员变量为引用类型时，仅复制引用而不会复制引用的对象），生成新的实例，对其中一个实例的修改并不会影响另外一个实例。

3）struct类型支持在实例成员函数中修改成员变量。

2.将以下代码复制到文件中。

```
package demo3

import std.math.*
import std.time.*

// 定义struct类型的坐标点
___①___ {
    // 定义不可变成员变量（值类型核心特性）
    ___②___

    // 定义构造函数

___③___

// 点平移：返回新点（体现不可变性）
// dx: 表示坐标x的移动值
// dy: 表示坐标y的移动值
func translated(dx: Int64, dy: Int64): ___④___ {
    // 返回新的坐标点对象
    ___⑤___
}
}

// 定义struct类型的矩形
___⑥___ {
    // 定义可变的成员变量
___⑦___    

    //定义构造函数
    ___⑧___
    
    // 矩形平移，可在函数内修改成员变量
    ___⑨___ func translate(dx: Int64, dy: Int64): Unit {
        this.topLeft = topLeft.translated(dx, dy)
    }

}

// 定义class类型的坐标点（引用类型对照组）
___⑩___ {
    // 定义成员变量
   ___⑪___
    

    // 定义主构造函数

___⑫___

    // 点平移
    func translated(dx: Int64, dy: Int64): Unit{
        x += dx
        y += dy
    }

}

// 值类型/引用类型性能测试
func performanceTesting(dataType: String, x!: Int64 = 1, y!: Int64 = 2): Duration {
    // 开始时间
    let valueTypeStart = DateTime.now().toUnixTimeStamp()
    for (_ in 0..100000) {
        if (dataType == 'value') {
            // 创建Point对象（栈分配，无需GC）
            ___⑬___
        } else if (dataType == 'reference') {
            // 创建RefPoint对象（堆分配，产生GC压力）
            ___⑭___
        }
    }
    // 返回运行时间差对象
    return DateTime.now().toUnixTimeStamp() - valueTypeStart
}

main() {
    let valueTypeTime = performanceTesting('value')
    let refTypeStart = performanceTesting('reference')

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
```


3.编码完成之后，运行程序。