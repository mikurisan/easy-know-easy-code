*Source: [Getting started with CSS](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Getting_started)*

A simple practice.

# 1 Adding CSS to HTML

有以下 different ways.

## 1.1 External stylesheets

将 CSS 放在 `.css` 文件中, 在 HTML 的 [`<head>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/head) 中引入. 例如:

```html
<link rel="stylesheet" href="styles.css" />
```

说明:

- `rel` : 即 relationship, 与当前 HTML 的关系.

- `href` : 即 hypertext reference, 所 link 资源的 url.

## 1.2 Internal stylesheets

将 CSS 写在 HTML 的 `<head>` 中的 `<style>` 里.

## 1.3 Inline styles

用于装饰 elements, 将 CSS 写在 `style` 属性中.

> Avoid using CSS in this way if possible.

# 2 Using Common Selectors

Selectors 用于在 CSS 中选取 elemtns.

下面是一些 common types of selectors 示例.

## 2.1 Selecting HTML elements

略.

## 2.2 Adding a class

给 elements 添加 class 后, 可以在用 selector 选择对应的包含该 class 的 elements.

## 2.3 Styling things based on their location in a document

根据 elements 的相对位置或绝对位置进行 select.

## 2.4 Styling things based on state

一些 elements 是有 state 的, 可以基于此进行 select.

## 2.5 Combining selectors and combinators

不同类型的 selectors 可以 combinated 一起使用.

# 3 Other CSS syntax features

## 3.1 Functions

CCS values 可以是 functions!

## 3.2 [@rules](https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Syntax/At-rules)

一些 instructions 告诉 CCS 应该如何 behave.

```css
body {
  background-color: pink;
}

@media (width >= 30em) {
  body {
    background-color: blue;
  }
}
```

## 3.3 Shorthand properties

一些 properties 可以使用 shorthand 的形式:

```css
padding: 10px 15px 15px 5px;
```

等价于

```css
padding-top: 10px;
padding-right: 15px;
padding-bottom: 15px;
padding-left: 5px;
```

## 3.4 CSS Comments

```css
/* This is a comment. */
```

## 3.5 White space in CSS

Extra white space 将会被 ignored.

