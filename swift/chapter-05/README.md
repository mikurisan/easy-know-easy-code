> [source](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow)

# 1 For-In Loops

> 其他 for-in 遍历 data structure 或者 range index 前面已有了解, 此处略过.

使用 `stride(from:to:by)` 可以生成等差数列用于 Iterating:

```swift
for #NUM# in stride(from: 0, to: 10, by: 2) {}
```

>  Types conform to the Sequence protocol 可用于 for-in loops.

# 2 While Loops

Swift provides two kinds of while loops:

- `while` evaluates its condition at the start of each pass through the loop.

- `repeat-while` evaluates its condition at the end of each pass through the loop.

## 2.1 While

```swift
while <#condition#> {
   <#statements#>
}
```

## 2.2 Repeat-While

```swift
repeat {
   <#statements#>
} while <#condition#>
```

# 3 Conditional Statements

包括 `if` 和 `switch` .

## 3.1 If

General form:

```swift
if <#condition1#> {
    <#statements#>
} else if <#condition2#> {
    <#statements#>
} else {
    <#statements#>
}
```

如果 statement 只有一条且返回值, 那么可以使用 if 用于赋值:

```swift
var/let <#variableOrConstant#> = if <#condition1#> {
    <#value from statement1#>
} else if <#condition2#> {
    <#value from statement2#>
} else {
    <#value from statement3#>
}
```

某个满足 condition 的 branch 的 statement 的值将赋于 `<#variableOrConstant#>` .

如果 statement 的值会返回 `nil` , 那么 `<#variableOrConstant#>` 需要设为 optional value 并明确 type 信息. 这里的 type 信息也可以只写在 `nil` statement 中:

```swift
nil as String?
```

## 3.2 Switch

General form:

```swift
switch <#some value to consider#> {
case <#value 1#>:
    <#respond to value 1#>
case <#value 2#>,
    <#value 3#>:
    <#respond to value 2 or 3#>
default:
    <#otherwise, do something else#>
}
```

类似于 `if`, `statement` 也可用于赋值:

```swift
var/let <#variableOrConstant#>  = switch <#some value to consider#> {
case <#value 1#>:
    <#value from statement1#>
case <#value 2#>, <#value 3#>:
    <#value from statement2#>
default:
    <#value from statement3#>
}
```

### 3.2.1 NoImplict Fallthrough

Swift 中的 `switch` 默认只要一个 `case` 匹配到就会自动结束, 不会 fallthrough 到最后一个, 因而不用 explicitly 使用 `break` .

> You can use a `break` statement to match and ignore a particular case or to break out of a matched case before that case has completed its execution. For details, see [Break in a Switch Statement](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#Break-in-a-Switch-Statement).

> To explicitly fall through at the end of a particular switch case, use the fallthrough keyword, as described in [Fallthrough](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#Fallthrough).

### 3.2.2 Interval Matching

`case` 中可以使用 range operator.

例如:

```swift
case 5..<12
```

### 3.2.3 Tuples

`case` 中可以使用 tuples:

```swift
case (0, 0)
```

### 3.2.4 Value Bindings

在 `case` 中将 value 绑定到 constants or variables 中:

```swift
let v = (2, 0)
switch v {
case (let x, 0):
    ...
case (0, let y):
    ...
case let (x, y):
    ...
}
```

随后可以在 case-body 中使用.

### 3.2.5 Where

在 `case` 中可以使用 additional conditions:

```swift
let v = (2, 0)
switch v {
case (let x, 0) where x == y:
    ...
case (0, let y) where x == -y:
    ...
case let (x, y):
    ...
```

### 3.2.6 Coumpound Cases

多个 cases 可以 compound:

```swift
let v: Character = "e"
switch v {
case "a", "e", "i", "o", "u":
    ...
case "b", "c", "d", "f", "g":
    ...
default:
    ...
}
```

同样也可以用于 value bindings:

```swift
let v = (9, 0)
switch v {
case (let x, 0), (0, let y):
    ...
default:
    ...
}
```

# 4 Patterns

可以将 `switch-case` 中的 pattern 用于 `if` 中:

```swift
let v = (12, 100)
if case (let x, 100) = v {
    ...
}
```

如果 pattern 匹配, 那么该 condition 将为 true.

在 `for-in` loop 中直接使用 pattern:

```swift
let v = [(10, 0), (30, -30), (-20, 0)]

for (x, y) in v {
    if y == 0 {
        ...
    }
}
```

这是上述代码的更简洁实现:

```swift
for case (let x, 0) in v {
    ...
}
```

`where` 也可以用于此处:

```swift
for case let (x, y) in points where x == y || x == -y  {
    ...
}
```

> Because patterns can bind values, if-case statements and for-case-in loops are useful for working with enumerations that have associated values, as described in [Associated Values](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/enumerations/#Associated-Values).

# 5 Control Transfer Statements

> The `continue` , `break` , and `fallthrough` statements are described below. The return statement is described in [Functions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions/), and the throw statement is described in [Propagating Errors Using Throwing Functions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/errorhandling/#Propagating-Errors-Using-Throwing-Functions).

## 5.1 Continue

Just `continue` .

## 5.2 Break

Just `break` .

## 5.3 Fallthrough

Switch 默认 case 匹配时就中断 execution, 如果想要继续往下执行就使用 `fallthrough` .

Fallthrough 的 case 并不会检查是否匹配.

> C 语言中默认会自动 fallthrough, 同样也不会检查是否匹配.

# 5 Labeld Statements

可以给 loop 和 state 添加 label:

```swift
<#label name#>: while <#condition#> {
   <#statements#>
}
```

这样在 sub-statements 中可以精准控制:

```swift
labeled_loop: while square != finalSquare {
    v += 1
    switch v {
    case ... :
        break labeled_loop
    case ...:
        continue labeled_loop
    default:
        ...
    }
}
```

# 6 Early Exit

使用 `guard` 确保满足 condition 时, 之后的代码可以 execute. 与 `if` 不同的是其总是带有 `else` clause, 只有当 condition 不满足时才执行.

```swift
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }

    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }

    print("I hope the weather is nice in \(location).")
}
```

`else` 子句中必须转移控制权.

# 7 Deferred Actions

`defer` 用于控制代码何时执行:

```swift
var score = 1
if score < 10 {
    defer {
        print(score)
    }
    score += 5
}
// Prints "6".
```

> The code inside of the defer always runs, regardless of how the program exits that scope. That includes code like an early exit from a function, breaking out of a for loop, or throwing an error. 

> If you write more than one defer block in the same scope, the first one you specify is the last one to run.

> If your program stops running — for example, because of a runtime error or a crash — deferred code doesn’t execute. However, deferred code does execute after an error is thrown; for information about using defer with error handling, see [Specifying Cleanup Actions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/errorhandling/#Specifying-Cleanup-Actions).

# 8 Checking API Availability

检查 API 的 version availability.

直接看示例.

```swift
if #available(iOS 10, macOS 10.12, tvOS 10.12.3, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}
```

> for the full list, see [Declaration Attributes](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/attributes/#Declaration-Attributes). 

```swift
@available(macOS 10.12, *)
struct ColorPreference {
    var bestColor = "blue"
}


func chooseBestColor() -> String {
    guard #available(macOS 10.12, *) else {
       return "gray"
    }
    let colors = ColorPreference()
    return colors.bestColor
}
```

```swift
if #available(iOS 10, *) {
} else {
    // Fallback code
}


if #unavailable(iOS 10) {
    // Fallback code
}
```