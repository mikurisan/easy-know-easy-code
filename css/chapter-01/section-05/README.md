*Source: [Pseudo-classes and pseudo-elements](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Pseudo_classes_and_elements)*

# 1 What is pseudo-class?

选择处于 certain state 的 elements. 使用 colon 开头, 形式如 `:xxx`.

之所以说是 "pseudo", 是因为 element 本身没有添加 class attriute, 但却可以 select 它, 就好像它添加了 class atrribute 一样.

## 1.2 Basic pseudo-class example

```css
p:first-child {}
```

选择 `p` 的第一个子 element.

## 1.3 User-action pseudo classes

例如:

```css
:hover {}

:focus {}
```

# 2 What is a pseudo-element?

使用 double colons 开头, 形式如 `::xxx`.

之所以说是 "pseudo", 是因为本身没有这个 element, 但是却好像添加了 element 一样.

例如:

```css
p::first-line {}
```

选择 `p` 的第一行, 但是第一行会根据 screen 宽度或字数内容而动态变化, 如果用 element 来选择很难实现.

# 3 Combining pseudo-classes and pseudo-elements

二者可以组合使用.

# 4 Generating content with `::before` and `::after`

与 [`content`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/content) 结合使用以插入 content 到 html 中. 也称为 *generated content*.

例如:

```css
.box::before{
    content: "This is the start. "
}
```
会在对应 `.box` element 的 content 前插入该字符串.

## 4.1 Generated content icons

通常的用法是用于插入 icons 而非上面的 string, 从 accessibility 的角度而言.

## 4.2 Generated shapes

插入 empty string, 随后将其渲染为某种几何形状 (改变 shape).