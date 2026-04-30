*Source: [Sizing items in CSS](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Sizing)*

# 1 The natural or intrinsic size of things

Things 本身包含的 size 信息.

比如 img 本身就包含了 size, 即使没有任何指定.

# 2 Setting a specific size

被指定的 size 叫做 **extrinsic size**.

如果 size 装不下 content, content 就会 overflow.

## 2.1 Using percentages

基于父元素的 size 计算.

## 2.2 Percentage margins and padding

`margins` 和 `padding` 使用 percentage, 其计算是基于其 containing block 的 inline size, 即其宽度计算的.

## 2.3 min- and max- sizes

给定 element 最小最大值, 当 content 超过或没有达到时, elemen 的 size 会自适应变化.

## 2.4 `max-width` on images

设置 images 的最大宽度百分比, 使其 size 能够自适应 containing block 而变化.

# 3 Viewport units

The viewport — which is the visible area of your page in the browser you are using to view a site — also has a size

两个单位用于表示 viewport 的 size:

- `vw`: viewport width. `1vw` 表示 1% of viewport width.

- `vh`: viewport height. `1vh` 表示 1% of viewport height.

