package demo2

// ① 定义枚举Item（使用 | 分隔变体）
enum Item {
    Fruit(String, Int) |
    Vegetable(String, Int) |
    Dairy(String, Int)
}

// 计算商品总数量函数
func totalQuantity(items: Array<Item>): Int64 {
    var total: Int64 = 0
    // ② 计算商品的总数量
    for (item in items) {
        match (item) {
            case Item.Fruit(_, quantity) => total += quantity
            case Item.Vegetable(_, quantity) => total += quantity
            case Item.Dairy(_, quantity) => total += quantity
        }
    }
    return total
}

main() {
    // ③ 定义商品清单数组
    let shoppingList: Array<Item> = [
        Item.Fruit("苹果", 5),
        Item.Vegetable("西红柿", 3),
        Item.Fruit("香蕉", 2),
        Item.Dairy("牛奶", 4)
    ]

    print("购物清单统计：")
    for (list in shoppingList) {
        match (list) {
            // ④ 分支内使用 if 表达式（整体用括号包裹）
            case Item.Fruit(name, quantity) => (if (quantity >= 5) {
                println("${name}的数量超过了5个。")
            } else {
                ()
            })
            case _ => ()
        }
    }
    // ⑤ 调用函数计算总数并保存
    let total = totalQuantity(shoppingList)
    println("总共买了${total}件商品。")
}