import Foundation

// ==========================================
// Swift 字符串与字符 (Strings and Characters) 学习示例
// ==========================================

// ------------------------------------------
// 1. String Literals (字符串字面量)
// ------------------------------------------
// 单行字面量
let someString = "Some string literal value"

// 多行字面量 (使用三个双引号)
// 注意：起始和结束引号的缩进决定了内容的基准缩进
let quotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
    please your Majesty?" he asked.
    """

// ------------------------------------------
// 2. Initializing an Empty String (初始化空字符串)
// ------------------------------------------
var emptyString = ""               // 字面量
var anotherEmptyString = String()  // 初始化语法

if emptyString.isEmpty {
    print("Nothing to see here")
}

// ------------------------------------------
// 3. String Mutability (字符串可变性)
// ------------------------------------------
var variableString = "Horse"
variableString += " and carriage"  // var 定义的可以修改

let constantString = "Highlander"
// constantString += " and another" // 编译错误：let 定义的不可修改

// ------------------------------------------
// 4. Strings Are Value Types (字符串是值类型)
// ------------------------------------------
// Swift 的 String 在传递给函数或赋值给新变量时会被“复制”
var original = "Hello"
var copy = original
copy += " World"
print("Original: \(original)") // "Hello" (不受副本修改的影响)

// ------------------------------------------
// 5. Working with Characters (操作字符)
// ------------------------------------------
// 遍历字符串中的每一个字符
for character in "Dog!🐶" {
    print(character)
}

// 单独定义字符类型
let exclamationMark: Character = "!"
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)

// ------------------------------------------
// 6. Concatenating Strings and Characters (拼接)
// ------------------------------------------
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2 // 使用 + 拼接

var instruction = "look over"
instruction += string2          // 使用 += 拼接

welcome.append(exclamationMark) // 使用 append() 方法拼接字符

// ------------------------------------------
// 7. String Interpolation (字符串插值)
// ------------------------------------------
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message 是 "3 times 2.5 is 7.5"

// ------------------------------------------
// 8. Unicode & Counting Characters (Unicode 与 字符计数)
// ------------------------------------------
// Swift 使用 Extended Grapheme Clusters (扩展字形集群)
let eAcute = "\u{E9}"                         // é
let combinedEAcute = "\u{65}\u{301}"           // e + ◌́ (同样的字符)

let greeting = "Koala 🐨, Senegal 🇸🇳"
print("Count is \(greeting.count)") // count 返回的是用户感知的字符数 (11)

// ------------------------------------------
// 9. Accessing and Modifying a String (访问和修改)
// ------------------------------------------
// String 不能用整数索引访问 (例如 greeting[0])，必须使用 String.Index
let greetingMsg = "Guten Tag!"

// 访问索引
let firstIndex = greetingMsg.startIndex
let lastIndex = greetingMsg.index(before: greetingMsg.endIndex)
let fourthIndex = greetingMsg.index(greetingMsg.startIndex, offsetBy: 3)

print(greetingMsg[firstIndex])  // G
print(greetingMsg[fourthIndex]) // e

// 插入与移除
var welcomeMsg = "hello"
welcomeMsg.insert("!", at: welcomeMsg.endIndex) // "hello!"
welcomeMsg.insert(contentsOf: " there", at: welcomeMsg.index(before: welcomeMsg.endIndex)) // "hello there!"

welcomeMsg.remove(at: welcomeMsg.index(before: welcomeMsg.endIndex)) // 移除最后的 !
let range = welcomeMsg.index(welcomeMsg.endIndex, offsetBy: -6)..<welcomeMsg.endIndex
welcomeMsg.removeSubrange(range) // 移除 " there"

// ------------------------------------------
// 10. Substrings (子字符串)
// ------------------------------------------
let fullGreeting = "Hello, world!"
let commaIndex = fullGreeting.firstIndex(of: ",") ?? fullGreeting.endIndex
let beginning = fullGreeting[..<commaIndex] // beginning 是 Substring 类型

// Substring 共享原字符串内存。若需长期持有，需转换为 String
let newString = String(beginning)

// ------------------------------------------
// 11. Comparing Strings (字符串比较)
// ------------------------------------------
let quotation1 = "We're a lot alike, you and I."
let quotation2 = "We're a lot alike, you and I."

if quotation1 == quotation2 {
    print("These two strings are considered equal")
}

// 前缀与后缀
if fullGreeting.hasPrefix("Hello") {
    print("Starts with Hello")
}
if fullGreeting.hasSuffix("world!") {
    print("Ends with world!")
}

// ------------------------------------------
// 12. Unicode Representations (字符串的 Unicode 表示)
// ------------------------------------------
let dogString = "Dog‼🐶"

// UTF-8 视图
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

// UTF-16 视图
for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")

// Unicode Scalar 视图 (21位整数)
for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}