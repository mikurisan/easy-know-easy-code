Swift 是一门 safe language.

## 1 Constants and Variables

- constants: 定义后不可变
- variables: 定义后可变.

### 1.1 Declaring Constants and Variables

使用以下 keywrods:

- constatns: `let`
- variables: `var`

>  For information about how Swift checks your code when you set an initial value this way, see [Constant Declaration](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/#Constant-Declaration).

### 1.2 Type Annotations

为 constants and variables 提供类型注解, 语法示例:

```swift
var v: String
```

swift 可从 initial value 中推断 type, 因而该 step 并不总是必须的.

> Swift can almost always infer the type to be used for that constant or variable, as described in [Type Safety and Type Inference](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/#Type-Safety-and-Type-Inference).

### 1.3 Naming Constants and Variables

constants and variables 的 name 可以包含 any character, 示例:

```swift
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
```

### 1.4 Print Constants and Variables

直接使用全局函数:

```swift
print("hello world")
```

在 `print` 中使用 constants or variables 占位符:

```swift
print("hello \(userName)")
```

> All options you can use with string interpolation are described in [String Interpolation](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters/#String-Interpolation).

## 2 Comments

- single-line comments: `//`

- multiline comments: `/* .. */`

multiline comments 中可以嵌套 multiline comments.

## 3 Semicolons

`;` 并不是强制的, 但在一行中想分隔多个 statements 就需要了.

## 4 Integers

### 4.1 Integer Bounds

访问 integer type 的 `min` 和 `max` 属性可获取其最值.

如果溢出即超过最值会导致程序停止, 当然也可以显式的操作溢出情况 as described in [Overflow Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators#Overflow-Operators).

### 4.2 Int

非必要只用 `Int`, 其会根据 platform 自适应, 类似于:

- On a 32-bit platform, Int is the same size as `Int32`.

- On a 64-bit platform, Int is the same size as `Int64`.

### 4.3 UInt

usigned integer type `UInt`,  其会根据 platform 自适应, 类似于:

- On a 32-bit platform, UInt is the same size as `UInt32`.

- On a 64-bit platform, UInt is the same size as `UInt64`.

> 非必要即使可能只存储 negative value 也最好只用 `Int`,  这样更具通用性, as described in [Type Safety and Type Inference](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Type-Safety-and-Type-Inference).

## 5 Floating-Point Numbers

`Float` and `Double` .

一般情况下就用 `Double` .

## 6 Type Safety and Type Inference

Swift 是 *type-safe* language. 不同 type 之间的 implicityly convert 是不允许的, 但是某些 type 是可以 explicitly convert.

可以根据 initial value 进行 type inference, 从而避免很多手动的 type declarations.

## 7 Numeric Literals

Integer literals can be written as:

- A decimal number, with no prefix

- A binary number, with a 0b prefix

- An octal number, with a 0o prefix

- A hexadecimal number, with a 0x prefix

Decimal float 有一个可选的指数 `e` (大小写均可) 表示以 10 为底的指数.

Hexadecimal float 有一个可选的指数 `p` (大小写均可) 表示以 2 为底的指数.

Numeric literals 可以在首位填充 0, 添加 underscores 以提高 readability.

## 8 Numeric Type Conversion

能用 `Int` 直接用, 除非有特殊需求才指定更具体的 type.

> Extending existing types to provide initializers that accept new types (including your own type definitions) is covered in [Extensions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/extensions).

### 8.1 Integer Conversion

不同 type 之间运算会导致在 compile 时发生 error , 必须进行 explicit conversion, 形式 `SomeType(ofInitialValue)` .

### 8.2 Integer and Floating-Point Conversion

同样必须进行 explicit conversion.

对于 floating-point value 而言, 其总是会被 truncated.

## 9 Type Aliases

使用 keyword `typealias` 给 existing types 创建 aliases:

```swift
typealias MyType = UInt16
```

## 10 Booleans

即 type `Bool`, 有且仅有两个值 `true` or `false`, 这意味着 numeric value 是无法作为 boolean value 的.

## 11 Tuples

使用 `()` 定义, item 可以为任意 type, 例如

```swift
let http404Error = (404, "Not Found")
```

可以多元赋值:

```swift
let (statusCode, statusMessage) = http404Error

let (justTheStatusCode, _) = http404Error
```

可以使用索引访问:

```swift
http404Error.0
```

可以添加 item 名:

```swift
let http200Status = (statusCode: 200, description: "OK")
```

可以使用 item 名访问:

```swift
http200Status.statusCode
```

## 12 Optionals

*optionals* 表示某 type 的量的 value 可能是 absent.

使用 `?` 标记, 例如 `Int?` .

### 12.1 nil

optionals type value 可以被设为 `nil` , 随后可以在 conditional statement 用作条件判断; 而非 optional type 的 value 不能被设置为 `nil` . 这样做的目的是确保要么 100% 有 value, 要么就可能没有 value, 二者是严格的 separated type.

```swift
if <#someOptional> != nil {}
```

### 12.2 Optional Binding

optional binding 用于 find out 一个 optional type 是否包含 value, 如果包含, 则可以将其作为 temporary 量使用在 conditional statement 中.

```swift
if let <#constantName#> = <#someOptional> {
    // use <#constantName#>
}
```

由于上述情况是 very common, 可以用以下简写:

```swift
if <#someOptional> {
    // usd <#constantName>: 此时 optional type 转为 constant type (local), 二者 name 相同.
}
```

### 12.3 Providing a Fallback Value

使用 `??` 提供 default value 当 optional value 为 `nil` :

```swift
let <#constantName#> = (<#someOptional#> ?? <#defaultValue#>)
```

若 optional value 非 `nil` 则会自动 unwrapping.

> For more information about using ?? to provide a fallback value, see [Nil-Coalescing Operator](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/basicoperators#Nil-Coalescing-Operator).

### 12.4 Force Unwrapping

使用 `!` 强制 unwrapping 一个非 `nil` 的 optional value, 否则将触发 runtime error.

```swift
let <#constantName#> = <#someOptional#>!
```

> For more information about enforcing data requirements and checking assumptions at runtime, see [Assertions and Preconditions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Assertions-and-Preconditions).

### 12.5 Implicitly Unwrapped Optionals

使用 `!` 定义一个 implicitly unwrapped optional type, 其和 optional type 别无二致, 只是表示这是一个一定有 value 的 optional type.

使用它的时候会 implicitly 进行 unwrapping:

```swift
let <#someImplicitlyOptional#>: <#type#>! = value
let <#constantName#>: <#type#> = <#someImplicitlyOptional#>
```

如果 `<#constantName#>` 没有 explicitly 定义 `<#type#>` , 那么就不会 unwrapping.


>  The primary use of implicitly unwrapped optionals in Swift is during class initialization, as described in [Unowned References and Implicitly Unwrapped Optional Properties](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/automaticreferencecounting#Unowned-References-and-Implicitly-Unwrapped-Optional-Properties).

## 13 Memory Safety

This protection is known as memory safety and includes the following requirements:

- Values are set before being read. The protection against interacting with uninitialized regions of memory is also known as definite initialization.

- Arrays and buffers are accessed only at valid indexes. The protection against out-of-bounds access is also known as bounds safety.

- Memory is accessed only during the value’s lifetime. The protection against use-after-free errors is also known as lifetime safety.

- Access to memory overlaps only in provably safe ways. The protection against possible data races in concurrent code is also known as thread safety.

> For information about how Swift ensures you set initial values, see [Initialization](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization), for information about how Swift checks memory safety in concurrent code, see [Concurrency](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/concurrency), and for information about how Swift checks overlapping accesses to memory, see [Memory Safety](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/memorysafety).

## 14 Error Handling

使用 `throws`　标记一个 function 存在 error condition:

```swift
func <#funcName#> throws{}
```

使用 `try` 处理该 function 并包含在 do-catch statement 中:

```swift
do {
    try <#funcName#>
} catch {
}
```

> Throwing, catching, and propagating errors is covered in greater detail in [Error Handling](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/errorhandling/).

## 15 Assertions and Preconditions

Assertions and Preconditions 判断 conditino 为 `false` **立即停止 execution**. 前者仅生效于 development, 后者还可用于 production.

### 15.1 Debuging with Assertions

传入 condition和可选 message:

```swift
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
```

等价于使用 `assertionFailure` :

```swift
if age >= 0 {
} else {
    assertionFailure("A person's age can't be less than zero.")
}
```

### 15.2 Enforcing Preconditions

使用方式同上, 对应的 keyword 分别为 `precondition` 和 `preconditionFailure` .

> 使用 unchecked mode (-Ounchecked) 编译的时候, compiler 会假设 preconditions 总是 `true` 以优化 code, 但无论如何遇到 `fatalError` 就会停止 execution. 因而在开发早期, 常常使用 `fatalError("Unimplemented")` 标记尚未实现的功能.