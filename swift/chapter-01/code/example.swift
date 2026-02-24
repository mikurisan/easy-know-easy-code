import Foundation

// 1. Comments (注释)
// 这是一个单行注释：欢迎来到星际旅行系统
/* 这是一个多行注释：
   该程序演示了 Swift 基础章节的所有核心概念。
   版本：1.0
*/

// 2. Constants and Variables (常量与变量)
let planetName = "Kepler-452b" // 使用 let 声明常量（航向不可变）
var currentFuelLevel = 85      // 使用 var 声明变量（油量会变化）

// 3. Semicolons (分号)
// Swift 不强制要求分号，但在同一行写多条语句时需要
let shipPrefix = "USS"; let shipID = 1024;

// 4. Integers (整数) & 7. Numeric Literals (数值字面量)
let maxSpeed: Int = 299_792_458 // 使用下划线增强数字可读性
let binaryGateCode = 0b10101    // 二进制字面量
let hexValue = 0x1F             // 十六进制字面量

// 5. Floating-Point Numbers (浮点数)
let gravityMultiplier: Double = 1.0000000000042 // Double 精度更高
let engineEfficiency: Float = 0.98              // Float 足够

// 6. Type Safety and Type Inference (类型安全与类型推断)
let distanceToTarget = 1400.0 // 编译器自动推断为 Double
// distanceToTarget = "Very Far" // 错误！类型安全防止将 String 赋值给 Double

// 8. Numeric Type Conversion (数值类型转换)
let integerPart = 3
let fractionalPart = 0.14159
let pi = Double(integerPart) + fractionalPart // 必须显式转换才能进行加法

// 9. Type Aliases (类型别名)
typealias TravelDays = UInt16
let tripDuration: TravelDays = 365

// 10. Booleans (布尔值)
let isWarpDriveEnabled = true
if isWarpDriveEnabled {
    print("曲速引擎已启动！")
}

// 11. Tuples (元组)
// 元组将多个值组合成一个复合值
let flightStatus = (404, "Fuel LeakDetected")
let (statusCode, statusMessage) = flightStatus // 分解元组
print("状态码: \(statusCode), 信息: \(statusMessage)")
print("也可以通过索引访问：\(flightStatus.0)") // 访问第一个元素

// 12. Optionals (可选类型)
// 代表“有一个值，且等于 x”或者“没有值”
var scanningResult: String? = "Life forms detected" 
scanningResult = nil // 现在代表没有发现任何结果

// 使用可选绑定 (Optional Binding) 安全处理可选值
if let result = scanningResult {
    print("扫描结果: \(result)")
} else {
    print("未发现生命迹象。")
}

// 强制解析 (Forced Unwrapping) - 仅在你确定有值时使用
let knownData: String? = "Signal found"
print(knownData!) 

// 13. Memory Safety (内存安全)
/*
   Swift 的内存安全主要体现在：
   - 变量在使用前必须初始化。
   - 数组索引越界检查。
   - 自动引用计数 (ARC) 管理内存。
*/
var uninitializedVariable: Int
// print(uninitializedVariable) // 编译错误！防止访问未初始化的内存。
uninitializedVariable = 100
print("现在安全了: \(uninitializedVariable)")