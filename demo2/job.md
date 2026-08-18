| 构造器名称 | 形参1 | 形参2 |
|------------|-------|-------|
| Fruit      | 表示水果名称 | 表示数量 |
| Vegetable  | 表示蔬菜名称 | 表示数量 |
| Dairy      | 表示乳制品名称 | 表示数量 |


| 构造器名称 | 实参1 | 实参2 |
|------------|-------|-------|
| Fruit      | 苹果   | 5     |
| Vegetable  | 西红柿 | 3     |
| Fruit      | 香蕉   | 2     |
| Dairy      | 牛奶   | 4     |


任务2：定义枚举类型
定义枚举Item，用于表示不同类型的商品，包括水果，蔬菜和乳制品，每种商品都包含名称和数量。

详细操作步骤：

1.在main函数中，定义枚举Item，用于表示不同类型的商品，具体参数如下：


2.将以下代码复制到文件中，并在标记为 ① 处补全正确的代码。


    
package demo2

// 定义枚举Item
    ___①___

main() {
    
}

  
任务3：计算商品总数量
总数量计算函数：实现了函数totalQuantity，该函数接收一个商品数组，并通过遍历计算所有商品的总数量。使用模式匹配来识别商品类型并累加数量。

详细操作步骤：

1. 定义函数totalQuantity，形参为商品清单的数组，返回值类型为Int64，用于返回商品的总数量。代码如下：


    
package demo2

// 定义枚举Item
___①___

// 计算商品总数量函数
func totalQuantity(items: Array<Item>): Int64 {
    // 定义总数量变量
    var total: Int64 = 0
    
    return total
}

main() {
    
}

  
2.通过循环遍历商品清单，利用match表达式并结合枚举类型的模式匹配，计算商品的总数量。将以下代码复制到文件中，在标记为 ② 处补全正确的代码。


    
package demo2

// 定义枚举Item
___①___

// 计算商品总数量函数
func totalQuantity(items: Array<Item>): Int64 {
    // 定义总数量变量
    var total: Int64 = 0
    // 计算商品的总数量
    ___②___
    return total
}

main() {
    
}

  
任务4：定义商品清单数组
在main函数中定义商品清单数组shoppingList，类型为Item。

详细操作步骤：

1. 定义商品清单数组，具体参数如下：


请复制以下实参1的数据：

苹果

西红柿

香蕉

牛奶

2.将以下代码复制到文件中，在标记为 ③ 处补全正确的代码。


    
package demo2

// 定义枚举Item
___①___

// 计算商品总数量函数
func totalQuantity(items: Array<Item>): Int64 {
    // 定义总数量变量
    var total: Int64 = 0
    // 计算商品的总数量
    ___②___
    return total
}

main() {
// 定义商品清单数组
___③___
}

  
任务5：商品清单超额提醒
当商品清单中有商品数量超过5个时（含5个），打印输出相关的提示信息。

详细操作步骤：

1.在case匹配成功后添加额外需要满足的条件。

2.调用计算商品总数量的函数，并传入商品清单对象。

3.将以下代码复制到文件中，在标记为 ④ 、⑤ 处补全正确的代码。


    
package demo2

// 定义枚举Item
___①___

// 计算商品总数量函数
func totalQuantity(items: Array<Item>): Int64 {
    // 定义总数量变量
    var total: Int64 = 0
    // 计算商品的总数量
    ___②___
    return total
}

main() {
// 定义商品清单数组
___③___

print("购物清单统计：")
for (list in shoppingList) { 
   match (list) {
      case Item.Fruit(name, quantity) ___④___ => println("${name}的数量超过了5个。")
      case _ => ()
   }        
}    
___⑤___
println("总共买了${total}件商品。")
}