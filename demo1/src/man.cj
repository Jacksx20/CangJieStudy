package demo1

main() {
    // 创建一个包含家庭成员姓名、年龄和每日三餐饮食情况的元组嵌套
    let family = ("John", 35, ("煎蛋", "三明治", "意大利面"))

    // 解构元组，提取家庭成员的姓名、年龄和三餐信息
    let (name, age, meals) = family

    // 手动解构每日三餐的信息
    let (breakfast, lunch, dinner) = meals

    // 输出家庭成员的基本信息
    println("姓名: ${name}, 年龄: ${age}")

    // 手动构造一个数组来表示三餐（原代码保留）
    let mealArray = [breakfast, lunch, dinner]

    // 循环遍历并解构输出每日三餐的信息
    let mealsWithTime = [("早餐", breakfast), ("午餐", lunch), ("晚餐", dinner)]
    for (i in 0..mealsWithTime.size) {
        let (mealTime, mealItem) = mealsWithTime[i]
        println("正在处理: ${mealTime}")
        println("  ${mealTime}: ${mealItem}")
    }
}