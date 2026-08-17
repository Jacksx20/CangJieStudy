package demo4

import std.math.*
import std.time.*
import std.convert.*

// 定义空气调节模式函数
func getAirConditionerMode(temp: Float64) {
    if (temp > 28.0) {
        "制冷模式"
    } else if (temp < 8.0) {
        "制热模式"
    } else if (temp >= 22.0 && temp <= 26.0) {
        "节能模式"
    } else {
        "自动模式"
    }
}

// 定义获取风速函数
func getFanSpeed(tempDiff: Float64) {
    // 根据温差获得基础风速
    let baseSpeed = if (tempDiff > 5.0) {
        3
    } else if (tempDiff > 3.0) {
        2
    } else {
        1
    }

    // 获取当前小时数（24小时制）
    let currentHour = DateTime.now().hour
    // 夜间自动降速（22点至次日6点）
    if (currentHour >= 22 || currentHour < 6) {
        if (baseSpeed > 1) {
            baseSpeed - 1
        } else {
            1
        }
    } else {
        baseSpeed
    }
}

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