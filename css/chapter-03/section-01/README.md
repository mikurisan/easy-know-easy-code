*Source: [Introduction to CSS layout](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Introduction)*

CSS page layout 用于控制 elements 的 position 介于以下 factor: their default position in normal layout flow, the other elements around them, their parent container, and the main viewport/window.

# 1 Normal layout flow

> Elements on a webpage lay out in normal flow if you haven't applied any CSS to change the way they behave.

从一份 normal layout flow HTML 开始是构建网页的最佳起点.

# 2 How are elements laid out by default?

[Block-level element](https://developer.mozilla.org/en-US/docs/Glossary/Block-level_content)'s content 能够填充(占满)其父元素的 inline space (水平方向空间, 独占一行), 其会沿着 the block dimension (垂直方向) 增长以容纳 (accomodate) 其 content.

[Inline-level element](https://developer.mozilla.org/en-US/docs/Glossary/Inline-level_content) 的 size 就是其 content 的 size.

可以更改 inline-level element 的 `display` property 使其具有 `block` 的特征.

系统使用 normal layout flow 对 elements 进行布局, block-level elements 按照 *block flow direction* 进行布局, 这取决于父级的 [writing mode](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/writing-mode) (初始为 horizontal-tb, 垂直, 从上到下).

对于 inline-level elements, 其会在 inline space 中紧邻着, 当 space 不够时才移动到下一行.

Collapsing margins is only relevant in the vertical direction.

# 3 Overriding normal flow

有以下几种方式:

**the `display` property**

- 更改 element 在 normal flow 中的行为, 如 `block`, `inline` or `inline-block`.

**Floats**

- 应用 `float` value, 让 block-level elements 可以沿着该 bloakc-level elements 的一侧排列 (如果有 space 的话).

**Position**

- 应用 `postion` value 可以精准控制 boxes 在其他 boxes 中的放置位置. 在 normal flow 中默认为 `static`. (比如使用 `fixed` 固定在页面上的广告条, 滑动都在那个位置)

可以通过 `display` 访问特定的布局系统. 比如 [CSS grid](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Grids) and [Flexbox](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout/Flexbox), 它们能够改变 子元素在其父元素内部的布局方式.

Responsive design 指的是根据不同的 devices 切换布局, 其中最重要的是 [`@media`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/At-rules/@media), 其可以根据 device attributes (比如屏幕宽度或分辨率) 应用不同的布局.

## 3.1 Other layout techniques

不常用的, 提及一下:

- [Table layout](https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Table): 设计用于 HTML table styling, 也可以通过 `display: table` 用于非 table 元素.

- [Multi-column layout](https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Multicol_layout): 让 block content 以 columns 的形式布局.
