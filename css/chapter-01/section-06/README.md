*Source: [Combinators](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Combinators)*

# 1 Descendant combinator

使用 a single space ` ` 表示.

例如

```css
body article p {}
```

选择 body 下的 artile 下的 p 元素.

# 2 Child combinator

使用 `>` 表示.

例如

```css
article > p {}
```

选择 article 的直接子元素 p.

# 3 Next-sibling combinator

使用 `+` 表示.

例如

```css
h1 + p {}
```

选择 h1 直接下一个同级的 p.

# 4 Subsequent-sibing combinator

使用 `~` 表示.

例如

```css
h1 ~ p {}
```

选择所有与 h1 的同级的 p.

# 5 Combining combinators with selectors

二者可以随意组合.