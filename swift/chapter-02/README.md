Arithmatic operators 会 detect 并禁止 value overflow, 不过也提供了相应的 [Overflow Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators#Overflow-Operators).

该 chapter 仅描述 the common operators, 更多可见 [Advanced Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators/).

## 1 Assignment Operator

`=`.

## 2 Arithmetic Operators

four standard *arithmetic operators* for all number types:

- Addition `+`

- Subtraction `-`

- Multiplication `*`

- Division `/`

`+` 可用于 String.

### 2.1 Remainder Operator

The remainder operator (a % b) works out how many multiples of b will fit inside a and returns the value that’s left over.

严格来说, `%` 在 Swift 中并不是 *modulo operator*.

Remainder 的 sign 总是跟着被除数走.

### 2.2 Unary Minus Operator

prefixed `-`.

### 2.3 Unary Plus Operator

prefixed `+`. 实际上不执行任何 operation.

## 3 Compound Assignment Operators

例如 `+=`.

> For information about the operators provided by the Swift standard library, see [Operator Declarations](https://developer.apple.com/documentation/swift/operator_declarations).

## 4 Comparison Operators

- Equal to `==`

- Not equal to `!=`

- Greater than `>`

- Less than `<`

- Greater than or equal to `>=`

- Less than or equal to `<=`

> Swift also provides two identity operators (`===` and `!==`), which you use to test whether two object references both refer to the same object instance. For more information, see [Identity Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/classesandstructures#Identity-Operators).

Tuples 之间可以 compare, 只要对应的 item 的 type 是相同的, 顺序为从左到右, 例如:

```swift
(1, "zebra") < (2, "apple")   // true
```

> The Swift standard library includes tuple comparison operators for tuples with fewer than seven elements. To compare tuples with seven or more elements, you must implement the comparison operators yourself.

## 5 Ternary Conditional Operator

`qustion ? answer1 : answer2`.

## 6 Nil-Coalescing Operator

The nil-coalescing operator (`a ?? b`) unwraps an optional `a` if it contains `a` value, or returns a default value `b` if `a` is nil. The expression `a` is always of an optional type. The expression `b` must match the type that’s stored inside `a`.

等价于 `a != nil ? a! : b`.

## 7 Range Operators

Shortcuts for expressing a range of values.

### 7.1 Closed Range Operator

The closed range operator (`a...b`) defines a range that runs from `a` to `b`, and includes the values `a` and `b`.

常用于 iterating, 例如 `for index in 1...5 {}`.

### 7.2 Half-Open Range Operator

The half-open range operator (`a..<b`) defines a range that runs from `a` to `b`, but doesn’t include `b`.

### 7.3 One-Sided Ranges

Ranges that continue as far as possible in one direction, 理论上是无限的.

比如用于 iterating:

```swift
for name in names[2...] {
}

for name in names[...2] {
}

for name in names[..<2] {
}
```

此时其 range 会根据 context 自动推断, 因为这是 explicitly.

You can also check whether a one-sided range contains a particular value:

```swift
let range = ...5
range.contains(7)   // false
```

## 8 Logical Operators

Modify or combine the Boolean logic values `true` and `false`. 

- Logical Not `!`

- Logical AND `&&`

- Logical OR `||`

### 8.1 Logical NOT Operator

Prefixed `!` invert a Boolean values.

### 8.2 Logical AND Operator

Creates logical expressions where both values must be `true` for the overall expression to also be true.

### 8.3 Logical OR Operator

Create logical expressions in which only one of the two values has to be `true` for the overall expression to be true.

### 8.4 Combining Logical Operators

多个 logical operators 可以并列使用.

> The Swift logical operators `&&` and `||` are left-associative, meaning that compound expressions with multiple logical operators evaluate the leftmost subexpression first.

### 8.5 Explicit Parentheses

使用 parentheses 提高 readability, 使 intentions 更 clear.