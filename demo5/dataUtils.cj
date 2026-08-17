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