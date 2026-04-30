*Source: [What is CSS?](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/What_is_CSS)*

CSS (Cascading Style Sheet, 层叠样式表) 可以创建 great-looking web page.

## 1 Browser default styles

Broswer 自带 default styles, 它们对 html 没有任何 change.

> Broswer 有时也叫做 [user agent](https://developer.mozilla.org/en-US/docs/Glossary/User_agent)

## 2 What is CSS for?

用于和 the look and feel of web page 相关的 purposes:

- Text styling

- Creating layouts

- Special effects

> [How browsers load websites](https://developer.mozilla.org/en-US/docs/Learn_web_development/Getting_started/Web_standards/How_browsers_load_websites)

### 3 CSS syntax basics

定义 elements 以及应用于他们的 groups of styles. 例如:

```css
h1 {
  color: red;
  font-size: 2.5em;
}
```

专业名词解释:

- 写在这里的 elements 叫做 [selector](https://developer.mozilla.org/en-US/docs/Glossary/CSS_Selector), 其会选择对应的 elements.

- braces 包含的为 declarations, 由 property-value pairs 组成

不同的 selector 有不同的 [properties](https://developer.mozilla.org/en-US/docs/Glossary/Property/CSS) .

### 4 How is CSS applied to HTML?

HTML 被 converted 为 DOM tree. CSS 被 sorted 到不同的 buckets, 随后应用到 DOM tree 中, 生成 render tree, 最后 painted 到 browser windows 中.