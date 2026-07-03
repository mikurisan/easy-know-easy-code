> [source](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions)

# 1 Defining and Calling Functions

看示例即可:

```swift
func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
```

# 2 Function Parameters and Return Values

## 2.1 Functions Without Parameters

看示例即可:

```swift
func sayHelloWorld() -> String {
    return "hello, world"
}
```

## 2.2 Functions With Multiple Parameters

看示例即可:

```swift
func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    } else {
        return greet(person: person)
    }
}
```

## 2.3 Functions Without Return Values


看示例即可:

```swift
func greet(person: String) {
    print("Hello, \(person)!")
}
```

> Strictly speaking, this version of the greet(person:) function does still return a value, even though no return value is defined. Functions without a defined return type return a special value of type `Void`. This is simply an empty tuple, which is written as `()`.

## 2.4 Functions with Multiple Return Values

看示例即可:

```swift
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
```

### 2.4.1 Optional Tuple Return Types

当返回值可能为 `nil` 需定义为 optional type:

```swift
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
```

> An optional tuple type such as (Int, Int)? is different from a tuple that contains optional types such as (Int?, Int?). With an optional tuple type, the entire tuple is optional, not just each individual value within the tuple.

## 2.5 Functions With an Implicit Return

> If the entire body of the function is a single expression, the function implicitly returns that expression.

例如下面二者是等价的:

```swift
func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}

func anotherGreeting(for person: String) -> String {
    return "Hello, " + person + "!"
}
```

> However, you can use a function that never returns like fatalError("Oh no!") as an implicit return value, because Swift knows that the implicit return doesn’t happen.

# 3 Function Argument Labels and Parameter Names

Argument label 是调用者的视角, Parameter name 是 function 的视角. 默认情况下 Argument label 等于 Parameter name.

## 3.1 Specifying Argument Labels

Argument label 位于 Parameter name 之前:

```swift
func someFunction(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for that parameter.
}
```

示例:

```swift
func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
```

## 3.2 Omitting Argument Labels


使用 underscore 替代:

```swift
func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
someFunction(1, secondParameterName: 2)
```

如果定义了 Argument label, 那么调用的时候就必须要提供.

## 3.3 Default Parameter Values

看示例即可:

```swift
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
```

## 3.4 Variadic Parameters

> A variadic parameter accepts zero or more values of a specified type. 

示例:

```swift
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
```

Variadic paramter 后的第一个 paramter 必须要有 argument label, 以避免歧义.

## 3.4 In-Out Parameters

> Function parameters are constants by default.

> In-out parameters can’t have default values, and variadic parameters can’t be marked as inout.

默认情况下无法修改 parameter value, 使用 `inout` keyword 可以解决:

```swift
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
```

`inout` parameter 只接受 variables.

# 4 Function Types

> Every function has a specific function type, made up of the parameter types and the return type of the function.

例如:

```swift
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
```

其 function type 为 `(Int, Int) -> Int` .

对于:

```swift
func printHelloWorld() {
    print("hello, world")
}
```

其 function type 为 `() -> Void` .

## 4.1  Using Fucntion Types

像其他普通 Types 一样使用 Function Types:

```swift
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")
```

## 4.2 Function Types as Parameter Types

Function types 可以作为其他 function 的 parameter type:

```swift
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)
```

## 4.3 Function Types as Return Types

Function types 同样也可以作为 return type:

```swift
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}
```

# 5 Nested Functions

看示例就够了:

```swift
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}
```