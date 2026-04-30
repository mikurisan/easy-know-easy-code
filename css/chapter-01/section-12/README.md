*Source: [Overflowing content](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Overflow)*

# 1 What is overflow?

Overflow happens when there is too much content to fit in a box. 

# 2 CSS tried to avoid "data loss"

CSS 尽可能避免 data loss, 通过 overflow 的形式让你知道问题所在, 并假定你会处理它!

# 3 The overfow property

[`overflow`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/overflow) property 用于处理 overflowing content, 默认值为 `visible`.

接受两个参数, 分别作用于 x 轴和 y 轴, 如果只传一个参数, 那么会同时作用于两个轴.

也可以分为 `overflow-x` 和 `overflow-y`.

## 3.1 Hiding overflowing content

设置为 `hidden` 直接隐藏 overflow 部分.

## 3.2 Scrolling overflowing content

设置为 `scroll` 会隐藏 overflow 部分, 但可以通过滚动的方式查看.

## 3.3 Only displaying scrollbars when needed

设置为 `auto` 会自动根据 overflow 情况决定是否展示 scrollbars.

> 默认是否展示 scrollbars 取决于浏览器设置, 这里假设 scrollbars 是展示的, 然而在 Chrome 轴没有默认展示.

# 4 Unwanted overflow in web design

现代 layout methods 能灵活应对 overflow 而无需预设或假设 content 有多少.

> When developing a site, always keep overflow in mind. Test designs with large and small amounts of content. Increase and decrease font sizes by at least two increments. Ensure your CSS is robust. Changing overflow values to hide content or to add scrollbars is reserved for a few select use cases (for example, where you intend to have a scrolling box).
