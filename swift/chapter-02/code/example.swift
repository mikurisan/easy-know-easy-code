import Foundation

// ==========================================
// Swift 基础运算符 (Basic Operators) 学习示例
// ==========================================

// 1. Assignment Operator (赋值运算符)
// 使用 = 进行初始化或更新值
let initialHealth = 100
var currentHealth = initialHealth
var playerName: String? = nil // 这是一个可选值，用于后面演示 Nil-Coalescing

// 元组赋值 (Tuple Assignment)
let (x, y) = (10, 20) 
// 现在 x 是 10, y 是 20


// 2. Arithmetic Operators (算术运算符)
// 加 +，减 -，乘 *，除 /，取余 %
let monsterDamage = 15
let recoveryAmount = 5

currentHealth = currentHealth - monsterDamage + recoveryAmount // 基础加减
let doubleDamage = monsterDamage * 2                           // 乘法
let healthDivide = currentHealth / 2                           // 除法
let remainder = 10 % 3                                         // 取余 (结果为 1)

// 特殊：字符串拼接也使用 +
let greeting = "Hello, " + "Adventurer!"


// 3. Compound Assignment Operators (复合赋值运算符)
// 将运算符与 = 结合，如 +=, -=, *=, /=
var score = 0
score += 10  // 等同于 score = score + 10
score -= 2   // 等同于 score = score - 2


// 4. Comparison Operators (比较运算符)
// 返回布尔值：等于 ==, 不等于 !=, 大于 >, 小于 <, 大于等于 >=, 小于等于 <=
let isAlive = currentHealth > 0
let isFullHealth = currentHealth == 100
let isBossDefeated = score != 0

// 元组也可以比较（从左到右依次对比）
let canEnterLevel = (1, "Easy") < (2, "Hard") // true，因为 1 < 2


// 5. Ternary Conditional Operator (三元条件运算符)
// 语法：question ? answer1 : answer2
let statusMessage = isAlive ? "继续战斗！" : "游戏结束..."
print("当前状态: \(statusMessage)")


// 6. Nil-Coalescing Operator (空合运算符)
// 语法：a ?? b (如果 a 有值则解包，否则返回默认值 b)
let displayName = playerName ?? "匿名勇者"
print("玩家名称: \(displayName)")


// 7. Range Operators (范围运算符)

// 闭区间范围 (Closed Range Operator): a...b (包含 a 和 b)
print("等级奖励预览:")
for level in 1...3 {
    print("Level \(level) 奖励已解锁")
}

// 半开区间范围 (Half-Open Range Operator): a..<b (包含 a，不包含 b)
let equipment = ["剑", "盾", "药水"]
for i in 0..<equipment.count {
    print("装备栏 \(i): \(equipment[i])")
}

// 一侧范围 (One-Sided Ranges)
let moreItems = equipment[1...] // 从索引 1 到末尾
let limitedItems = equipment[...1] // 从开头到索引 1


// 8. Logical Operators (逻辑运算符)
// 逻辑非 !a, 逻辑与 a && b, 逻辑或 a || b

let hasKey = true
let hasMagicPower = false
let canOpenDoor = hasKey || hasMagicPower  // 只要有钥匙 或 有魔力 就能开门
let canCastSpell = isAlive && hasMagicPower // 必须活着 且 有魔力 才能施法

if !isBossDefeated {
    print("守门人：你还没击败 Boss，不能通过！")
}

// 逻辑运算符组合（注意：&& 的优先级高于 ||，但建议使用括号增加可读性）
if (isAlive && hasKey) || isBossDefeated {
    print("特殊通行证：允许通过！")
}