## 1 For-In Loops

其他 for-in 遍历 data structure 或者 range index 前面已有了解, 此处略过.

使用 `stride(from:to:by)` 可以生成等差数列用于 Iterating:

```swift
for #NUM# in stride(from: 0, to: 10, by: 2) {}
```

>  Types conform to the Sequence protocol 即可用于 for-in loops.

## 2 While Loops

Swift provides two kinds of while loops:

- `while` evaluates its condition at the start of each pass through the loop.

- `repeat-while` evaluates its condition at the end of each pass through the loop.

### 2.1 While

```swift
while <#condition#> {
   <#statements#>
}
```

### 2.2 Repeat-While

```swift
repeat {
   <#statements#>
} while <#condition#>
```

## 3 Conditional Statements

包括 `if` 和 `switch` .

### 3.1 If

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

### 3.2 Switch

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
case <#value 2#>,
    <#value 3#>:
    <#value from statement2#>
default:
    <#value from statement3#>
}
```

#### NoImplict Fallthrough

Swift 中的 `switch` 默认只要一个 `case` 匹配到就会自动结束, 不会 fallthrough 到最后一个, 因而不用 explicitly 使用 `break` .

> You can use a `break` statement to match and ignore a particular case or to break out of a matched case before that case has completed its execution. For details, see [Break in a Switch Statement](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#Break-in-a-Switch-Statement).

> To explicitly fall through at the end of a particular switch case, use the fallthrough keyword, as described in [Fallthrough](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/controlflow/#Fallthrough).

#### Interval Matching

`case` 中可以使用 range operator.

例如:

```swift
case 5..<12
```

#### Tuples

`case` 中可以使用 tuples:

```swift
case (0, 0)
```

#### Value Bindings