# The Bascis

Swift 是一门 safe language.

## Constants and Variables

- constants: 定义后不可变
- variables: 定义后可变.

### Declaring Constants and Variables

使用以下 keywrods:

- constatns: `let`
- variables: `var`

>  For information about how Swift checks your code when you set an initial value this way, see [Constant Declaration](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/declarations/#Constant-Declaration).

### Type Annotations

为 constants and variables 提供类型注解, 语法示例:

```swift
var v: String
```

swift 可从 initial value 中推断 type, 因而该 step 并不总是必须的.

> Swift can almost always infer the type to be used for that constant or variable, as described in [Type Safety and Type Inference](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics/#Type-Safety-and-Type-Inference).

### Naming Constants and Variables

constants and variables 的 name 可以包含 any character, 示例:

```swift
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
```

### Print Constants and Variables

直接使用全局函数:

```swift
print("hello world")
```

在 `print` 中使用 constants or variables 占位符:

```swift
print("hello \(userName)")
```

> All options you can use with string interpolation are described in [String Interpolation](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/stringsandcharacters/#String-Interpolation).

## Comments

- single-line comments: `//`

- multiline comments: `/* .. */`

multiline comments 中可以嵌套 multiline comments.

## Semicolons

`;` 并不是强制的, 但在一行中想分隔多个 statements 就需要了.

## Integers

### Integer Bounds

访问 integer type 的 `min` 和 `max` 属性可获取其最值.

如果溢出即超过最值会导致程序停止, 当然也可以显式的操作溢出情况 as described in [Overflow Operators](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators#Overflow-Operators).

### Int

非必要只用 `Int`, 其会根据 platform 自适应, 类似于:

- On a 32-bit platform, Int is the same size as `Int32`.

- On a 64-bit platform, Int is the same size as `Int64`.

### UInt

usigned integer type `UInt`,  其会根据 platform 自适应, 类似于:

- On a 32-bit platform, UInt is the same size as `UInt32`.

- On a 64-bit platform, UInt is the same size as `UInt64`.

> 非必要最好就用 `Int` 更具通用性, as described in [Type Safety and Type Inference](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Type-Safety-and-Type-Inference).

## Floating-Point Numbers

`Float` and `Double` .

一般情况下就用 `Double` .

## Type Safety and Type Inference

Swift 是 *type-safe* language. 不同 type 之间的 implicityly convert 是不允许的, 但是某些 type 是可以 explicitly convert.

可以根据 initial value 进行 type inference, 从而避免很多手动的 type declarations.

## Numeric Literals

Integer literals can be written as:

- A decimal number, with no prefix

- A binary number, with a 0b prefix

- An octal number, with a 0o prefix

- A hexadecimal number, with a 0x prefix

Decimal float 有一个可选的指数 `e` (大小写均可) 表示以 10 为底的指数.

Hexadecimal float 有一个可选的指数 `p` (大小写均可) 表示以 2 为底的指数.

Numeric literals 可以在首位填充 0, 添加 underscores 以提高 readability.

## Numeric Type Conversion

能用 `Int` 直接用, 除非有特殊需求才指定更具体的 type.

> Extending existing types to provide initializers that accept new types (including your own type definitions) is covered in [Extensions](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/extensions).

### Integer Conversion

不同 type 之间运算会导致在 compile 时发生 error , 必须进行 explicit conversion, 形式 `SomeType(ofInitialValue)` .

### Integer and Floating-Point Conversion

同样必须进行 explicit conversion.

对于 floating-point value 而言, 其总是会被 truncated.

## Type Aliases

使用 keyword `typealias` 给 existing types 创建 aliases:

```swift
typealias MyType = UInt16
```

## Booleans

即 type `Bool`, 有且仅有两个值 `true` or `false`, 这意味着 numeric value 是无法作为 boolean value 的.

## Tuples

