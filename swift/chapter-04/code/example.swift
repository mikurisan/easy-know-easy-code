import Foundation

// ==========================================
// Swift 集合类型 (Collection Types) 学习示例
// ==========================================

// 1. Mutability of Collections (集合的可变性)
// 使用 var 声明的集合是可变的（可以添加、删除、更改）
// 使用 let 声明的集合是不可变的（长度和内容都固定）

var mutableArray = ["Apple", "Banana"]
mutableArray.append("Cherry") // 允许修改

let immutableArray = ["Rice", "Bread"]
// immutableArray.append("Milk") // 编译错误：不可变集合不能修改


// 2. Arrays (数组)
// 有序的数据列表，存储相同类型的多个值
print("--- 2. Arrays ---")

var shoppingList: [String] = ["Eggs", "Milk"]

// 添加元素
shoppingList.append("Flour")
shoppingList += ["Baking Powder", "Chocolate"]

// 访问和修改
let firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"

// 在特定位置插入/删除
shoppingList.insert("Maple Syrup", at: 0)
let removedItem = shoppingList.remove(at: 0)

// 遍历数组
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}


// 3. Sets (集合)
// 无序的、不重复的唯一值列表。存储的对象必须遵循 Hashable 协议。
print("\n--- 3. Sets ---")

var genres: Set<String> = ["Rock", "Classical", "Hip hop"]

// 插入和删除
genres.insert("Jazz")
genres.insert("Rock") // 重复插入不会生效，Set 依然保持唯一性

if genres.contains("Funk") {
    print("It's a funky night.")
} else {
    print("No funk found.")
}

// 遍历 (Set 是无序的，可以用 sorted() 进行排序遍历)
for genre in genres.sorted() {
    print("\(genre)")
}


// 4. Performing Set Operations (集合操作)
// 强大的逻辑运算：并集、交集、差集等
print("\n--- 4. Set Operations ---")

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

// 并集 (Union): 合并两个集合
print("Union: \(oddDigits.union(evenDigits).sorted())")

// 交集 (Intersection): 获取两个集合共有的部分
print("Intersection: \(oddDigits.intersection(singleDigitPrimeNumbers).sorted())")

// 差集 (Subtracting): 在 A 中但不在 B 中的值
print("Subtracting: \(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())")

// 对称差集 (Symmetric Difference): 在 A 或 B 中，但不同时在 A 和 B 中的值
print("Symmetric Difference: \(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())")


// 5. Dictionaries (字典)
// 无序的键值对 (Key-Value) 存储。键必须是唯一的且遵循 Hashable。
print("\n--- 5. Dictionaries ---")

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

// 添加或更新
airports["LHR"] = "London" // 添加
airports["LHR"] = "London Heathrow" // 更新

// 使用 updateValue 更新（会返回旧值）
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}

// 访问（返回的是 Optional，因为键可能不存在）
if let airportName = airports["YYZ"] {
    print("The name of the airport is \(airportName).")
}

// 删除键值对
airports["APL"] = "Apple Digital"
airports["APL"] = nil // 将值设为 nil 即可删除该键值对

// 遍历字典
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

// 单独遍历键或值
let codes = [String](airports.keys)
let names = [String](airports.values)
print("Airport Codes: \(codes)")