# CangJieStudy · 仓颉编程语言学习实验集

> 一套由 5 个循序渐进的实验组成的 **Cangjie（仓颉）** 编程语言学习项目，覆盖元组、枚举与模式匹配、值类型/引用类型、if 表达式、Lambda 与链式调用等核心语言特性。

---

## 目录

- [项目简介](#项目简介)
- [技术栈](#技术栈)
- [目录结构](#目录结构)
- [快速开始](#快速开始)
- [实验一览](#实验一览)
- [实验详解](#实验详解)
  - [实验一 · 家庭成员饮食习惯（元组）](#实验一--家庭成员饮食习惯元组)
  - [实验二 · 购物清单管理程序（枚举与模式匹配）](#实验二--购物清单管理程序枚举与模式匹配)
  - [实验三 · 坐标系统（struct 值类型 vs class 引用类型）](#实验三--坐标系统struct-值类型-vs-class-引用类型)
  - [实验四 · 智能温度调节器（if 表达式）](#实验四--智能温度调节器if-表达式)
  - [实验五 · 数学计算器（class、Lambda、链式调用）](#实验五--数学计算器classlambda链式调用)
- [文件清单](#文件清单)
- [构建与运行](#构建与运行)
- [版本历史](#版本历史)

---

## 项目简介

**CangJieStudy** 是基于华为自研编程语言 **Cangjie（仓颉）** 的系统学习实验集。项目由 CodeArts IDE for Cangjie 创建，包含 5 个独立、由浅入深的命令行实验程序（`demo1` ~ `demo5`），每个实验聚焦仓颉语言的一个核心特性。

| 维度 | 说明 |
|------|------|
| 语言 | Cangjie（仓颉），`.cj` 源文件 |
| 包管理 | cjpm（`cjpm.toml` / `cjpm.lock`） |
| 编译器 | cjc 1.0.0 |
| 输出类型 | executable（可执行程序） |
| 开发 IDE | CodeArts IDE for Cangjie |
| 外部依赖 | 无，仅使用仓颉标准库 |
| 源码规模 | 6 个 `.cj` 文件，共 323 行 |

---

## 技术栈

```
Cangjie (仓颉)  ·  cjc 1.0.0  ·  cjpm  ·  CodeArts IDE for Cangjie  ·  Git
```

涉及的标准库：

- `std.math.*` —— 数学函数（`abs` 等）
- `std.time.*` —— 时间获取（`DateTime`、`Duration`）
- `std.convert.*` —— 类型转换与格式化（`toString`、`format`）
- `std.collection.*` —— 集合类型（`Array`）

---

## 目录结构

```
CangJieStudy
│
├── demo1/                          # 实验一：家庭成员饮食习惯（元组）
│   ├── cjpm.toml                   # 仓颉包管理配置
│   ├── cjpm.lock                   # 依赖锁定文件
│   ├── job.md                      # 任务说明（140 行）
│   ├── image.png                   # 运行结果截图
│   └── src/
│       └── man.cj                  # 源代码（26 行）
│
├── demo2/                          # 实验二：购物清单管理程序（枚举与模式匹配）
│   ├── job.md                      # 任务说明（170 行）
│   ├── image.png                   # 运行结果截图
│   └── src/
│       └── man.cj                  # 源代码（48 行）
│
├── demo3/                          # 实验三：坐标系统（struct vs class）
│   ├── job.md                      # 任务说明（373 行）
│   ├── image.png                   # 运行结果截图
│   └── src/
│       └── man.cj                  # 源代码（106 行）
│
├── demo4/                          # 实验四：智能温度调节器（if 表达式）
│   ├── job.md                      # 任务说明（145 行）
│   ├── image.png                   # 运行结果截图
│   └── src/
│       └── man.cj                  # 源代码（57 行）
│
└── demo5/                          # 实验五：数学计算器（class、Lambda、链式调用）
    ├── job.md                      # 任务说明（319 行）
    ├── image.png                   # 运行结果截图
    └── src/
        ├── man.cj                  # 计算器类与入口（48 行）
        └── dataUtils.cj            # 浮点数格式化工具（38 行）
```

> 各 demo 相互独立，无跨 demo 依赖。`demo5` 内部 `man.cj` 依赖同包 `dataUtils.cj` 的 `formatFloat` 函数。

---

## 快速开始

### 环境要求

- 已安装 **CodeArts IDE for Cangjie**（含 cjc 1.0.0 编译器与 cjpm 包管理器）

### 运行某个实验

1. 用 CodeArts IDE for Cangjie 打开对应 `demoN` 目录。
2. 编译并运行 `src/man.cj`。
3. 在终端查看输出，并对照 `image.png` 验证结果。

### 阅读任务说明

每个 `demoN/job.md` 包含：
- 知识点讲解
- 参数/条件表格
- 带填空占位符（`___①___`）的代码模板
- 详细操作步骤

---

## 实验一览

| 实验 | 主题 | 核心知识点 | 源码行数 | 预期输出预览 |
|:----:|------|-----------|:--------:|------------|
| demo1 | 家庭成员饮食习惯 | 嵌套元组的创建与解构 | 26 | `姓名: John, 年龄: 35` + 三餐信息 |
| demo2 | 购物清单管理程序 | `enum` 带参数变体、`match` 模式匹配 | 48 | `苹果的数量超过了5个。` `总共买了14件商品。` |
| demo3 | 坐标系统 | `struct` 值类型 vs `class` 引用类型、`mut func`、性能测试 | 106 | 值/引用类型耗时对比 + 行为差异 |
| demo4 | 智能温度调节器 | `if` 表达式求值、类型推导、嵌套 if | 57 | 四个温度的推荐模式与风速 |
| demo5 | 数学计算器 | `class`、Lambda 表达式、链式调用、命名参数 | 48 + 38 | `幂运算结果: 8.0` `计算结果: 8.00` |

---

## 实验详解

### 实验一 · 家庭成员饮食习惯（元组）

**知识点**：嵌套元组的创建与解构赋值

**源文件**：`demo1/src/man.cj`

```cangjie
main() {
    // 创建嵌套元组（姓名、年龄、三餐）
    let family = ("John", 35, ("煎蛋", "三明治", "意大利面"))
    // 解构提取
    let (name, age, meals) = family
    let (breakfast, lunch, dinner) = meals

    println("姓名: ${name}, 年龄: ${age}")

    // 带餐次标签的数组，循环解构输出
    let mealsWithTime = [("早餐", breakfast), ("午餐", lunch), ("晚餐", dinner)]
    for (i in 0..mealsWithTime.size) {
        let (mealTime, mealItem) = mealsWithTime[i]
        println("正在处理: ${mealTime}")
        println("  ${mealTime}: ${mealItem}")
    }
}
```

**预期输出**：

```
姓名: John, 年龄: 35
正在处理: 早餐
  早餐: 煎蛋
正在处理: 午餐
  午餐: 三明治
正在处理: 晚餐
  晚餐: 意大利面
```

---

### 实验二 · 购物清单管理程序（枚举与模式匹配）

**知识点**：`enum` 枚举类型（代数数据类型，带参数变体）、`match` 模式匹配

**源文件**：`demo2/src/man.cj`

```cangjie
// 使用 | 分隔变体，每个变体携带名称和数量
enum Item {
    Fruit(String, Int) |
    Vegetable(String, Int) |
    Dairy(String, Int)
}

// 计算商品总数量
func totalQuantity(items: Array<Item>): Int64 {
    var total: Int64 = 0
    for (item in items) {
        match (item) {
            case Item.Fruit(_, quantity)     => total += quantity
            case Item.Vegetable(_, quantity) => total += quantity
            case Item.Dairy(_, quantity)     => total += quantity
        }
    }
    return total
}

main() {
    let shoppingList: Array<Item> = [
        Item.Fruit("苹果", 5),
        Item.Vegetable("西红柿", 3),
        Item.Fruit("香蕉", 2),
        Item.Dairy("牛奶", 4)
    ]
    // 遍历并对水果类商品做超额提醒（数量超过 5）
    for (list in shoppingList) {
        match (list) {
            case Item.Fruit(name, quantity) => (if (quantity >= 5) {
                println("${name}的数量超过了5个。")
            } else { () })
            case _ => ()
        }
    }
    let total = totalQuantity(shoppingList)
    println("总共买了${total}件商品。")
}
```

**预期输出**：

```
购物清单统计：苹果的数量超过了5个。
总共买了14件商品。
```

---

### 实验三 · 坐标系统（struct 值类型 vs class 引用类型）

**知识点**：`struct` 值类型与 `class` 引用类型的语义差异、`mut func` 修改自身、`init` 构造函数、命名参数默认值、性能测试

**源文件**：`demo3/src/man.cj`

```cangjie
import std.math.*
import std.time.*

// struct 值类型：不可变成员
struct Point {
    let x: Int64
    let y: Int64
    init(x: Int64, y: Int64) { this.x = x; this.y = y }
    // 平移返回新点（体现不可变性）
    func translated(dx: Int64, dy: Int64): Point {
        return Point(this.x + dx, this.y + dy)
    }
}

// struct 值类型：可变成员，需 mut func 才能修改
struct Rectangle {
    var topLeft: Point
    var width: Int64
    var height: Int64
    init(topLeft: Point, width: Int64, height: Int64) { ... }
    mut func translate(dx: Int64, dy: Int64): Unit {
        this.topLeft = topLeft.translated(dx, dy)
    }
}

// class 引用类型对照组
class RefPoint {
    var x: Int64
    var y: Int64
    init(x: Int64, y: Int64) { ... }
    func translated(dx: Int64, dy: Int64): Unit { x += dx; y += dy } // 直接修改自身
}

// 性能测试：循环创建 10 万个对象并计时
func performanceTesting(dataType: String, x!: Int64 = 1, y!: Int64 = 2): Duration { ... }
```

**核心教学点**：

| 对比项 | `struct` 值类型 | `class` 引用类型 |
|--------|----------------|-----------------|
| 内存分配 | 栈分配 | 堆分配（受 GC 管理） |
| 赋值语义 | 复制（互不影响） | 共享引用（互相影响） |
| 修改自身 | 需 `mut func` | 普通 `func` 即可 |
| 创建开销 | 较低 | 较高 |

**main 演示**：对比值类型与引用类型的创建耗时；验证 `p2 = p1` 后修改 `p3` 不影响 `p1`，而 `rp2 = rp1` 后修改 `rp2` 会影响 `rp1`；演示矩形的 `mut` 平移。

---

### 实验四 · 智能温度调节器（if 表达式）

**知识点**：`if` 作为表达式参与求值、类型自动推导、嵌套 if 表达式、`std.time` 获取当前时间

**源文件**：`demo4/src/man.cj`

**模式判断**：

| 温度条件 | 模式 |
|---------|------|
| `> 28.0°C` | 制冷模式 |
| `< 8.0°C` | 制热模式 |
| `22.0 ~ 26.0°C` | 节能模式 |
| 其他 | 自动模式 |

**风速判断**：根据与舒适温度 24°C 的温差确定基础风速（温差 `>5` → 3 级，`>3` → 2 级，否则 1 级）；夜间（22 点至次日 6 点）自动降速 1 级（最低 1 级）。

```cangjie
// if 表达式直接作为返回值（类型推导为 String）
func getAirConditionerMode(temp: Float64) {
    if (temp > 28.0) { "制冷模式" }
    else if (temp < 8.0) { "制热模式" }
    else if (temp >= 22.0 && temp <= 26.0) { "节能模式" }
    else { "自动模式" }
}

func getFanSpeed(tempDiff: Float64) {
    let baseSpeed = if (tempDiff > 5.0) { 3 }
                    else if (tempDiff > 3.0) { 2 }
                    else { 1 }
    let currentHour = DateTime.now().hour
    // 夜间降速
    if (currentHour >= 22 || currentHour < 6) { ... } else { baseSpeed }
}

main() {
    let temperatures = [6.5, 23.0, 27.8, 30.2]
    for (temp in temperatures) {
        let mode  = getAirConditionerMode(temp)
        let diff  = abs(temp - 24.0)
        let speed = getFanSpeed(diff)
        println("当前温度: ${temp.format('.1')}°C")
        println("推荐模式: ${mode}")
        println("推荐风速: ${speed}级\n")
    }
}
```

**核心教学点**：仓颉中 `if` 是表达式，可直接作为值参与求值与类型推导，无需三元运算符。

---

### 实验五 · 数学计算器（class、Lambda、链式调用）

**知识点**：`class` 类型、Lambda 表达式 `{ x: T => expr }`、返回 `this` 实现链式调用、命名参数与非命名参数混合、`**` 幂运算符

**源文件**：`demo5/src/man.cj` + `demo5/src/dataUtils.cj`

```cangjie
class Calculator {
    private var currentValue: Float64
    init(currentValue: Float64) { this.currentValue = currentValue }

    // 加法：Lambda 表达式，返回 this 支持链式调用
    func add(operand: Float64): Calculator {
        let operation = { x: Float64 => x + operand }
        currentValue = operation(currentValue)
        return this
    }

    // 幂运算：带 debug 调试开关命名参数
    func power(operand: Float64, debug: Bool): Calculator {
        let operation = { x: Float64 =>
            let result = x ** operand
            if (debug) { println("幂运算结果: ${result}") }
            result
        }
        currentValue = operation(currentValue)
        return this
    }

    // 获取结果：带 precision 精度命名参数
    func getResult(precision: Int64): String {
        return formatFloat(currentValue, precision)
    }
}

main() {
    // 链式调用：0 + 2 = 2，2^3 = 8，保留 2 位小数
    let result = Calculator(0.0).add(2.0).power(3.0, true).getResult(2)
    println("计算结果: ${result}")
}
```

`dataUtils.cj` 中的 `formatFloat(v, digits)` 手动实现浮点数保留 n 位小数（放大 10^n → 加 0.5 截断四舍五入 → 拆分整数/小数 → 左侧补零）。

**预期输出**：

```
幂运算结果: 8.0
计算结果: 8.00
```

---

## 文件清单

| 路径 | 行数 | 用途 |
|------|:----:|------|
| `demo1/cjpm.toml` | 14 | 仓颉包管理配置（包名 demo1，可执行程序，无依赖） |
| `demo1/cjpm.lock` | 3 | 依赖锁定文件 |
| `demo1/job.md` | 140 | 实验一任务说明：嵌套元组创建与解构 |
| `demo1/image.png` | — | 实验一运行结果截图 |
| `demo1/src/man.cj` | 26 | 实验一源码：家庭成员饮食元组解构 |
| `demo2/job.md` | 170 | 实验二任务说明：枚举与模式匹配 |
| `demo2/image.png` | — | 实验二运行结果截图 |
| `demo2/src/man.cj` | 48 | 实验二源码：购物清单枚举与 match 匹配 |
| `demo3/job.md` | 373 | 实验三任务说明：struct 值类型 vs class 引用类型 |
| `demo3/image.png` | — | 实验三运行结果截图 |
| `demo3/src/man.cj` | 106 | 实验三源码：坐标系统值/引用类型对比与性能测试 |
| `demo4/job.md` | 145 | 实验四任务说明：if 表达式求值 |
| `demo4/image.png` | — | 实验四运行结果截图 |
| `demo4/src/man.cj` | 57 | 实验四源码：智能温度调节器 |
| `demo5/job.md` | 319 | 实验五任务说明：class、Lambda、链式调用 |
| `demo5/image.png` | — | 实验五运行结果截图 |
| `demo5/src/man.cj` | 48 | 实验五源码：数学计算器类 |
| `demo5/src/dataUtils.cj` | 38 | 实验五工具函数：浮点数四舍五入格式化 |

**源码合计**：6 个 `.cj` 文件，共 **323 行**。

---

## 构建与运行

- **构建工具**：cjpm（仓颉包管理器）
- **编译器**：cjc 1.0.0
- **输出类型**：`executable`（可执行程序）
- **依赖**：所有 demo 无外部依赖，仅使用仓颉标准库

**运行方式**：在 CodeArts IDE for Cangjie 中打开各 `demoN` 目录，编译运行 `src/man.cj`，对照 `image.png` 验证输出。

---

## 版本历史

项目按实验顺序逐步构建，共 11 次提交：

```
2484858  更新所有demo运行结果截图
6609697  Update demo5
d2d48d3  Update demo4
ba07bfa  Update demo3
6c3d57f  更新demo2说明
cda469b  更新demo01说明
4dffb64  实验五：数学计算器
5585543  实验四：智能温度调节器
bf26348  实验三：坐标系统
2c26422  实验二：购物清单管理程序
8e86056  实验一：家庭成员饮食习惯
```

---

## 许可

本项目为学习用途，按实验任务文档（`job.md`）逐步完成。