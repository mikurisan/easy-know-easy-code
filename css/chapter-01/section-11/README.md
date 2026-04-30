*Source: [Backgrounds and borders](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Backgrounds_and_borders)*
# 1 Background colors

[`background-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/background-color) 定义元素的 bg colors, 接受任意有效的 [`<color>`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/color_value) .

# 2 Background images

[`background-image`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/background-image) property 设置 image 为 bg.

默认情况下, 大图片不会被 scaled down(缩放), 小图片会被 tiled (平铺).

## 2.1 Controlling background-repeat

可选 values:

- `no-repeat`: 停止图片复制.

- `repeat-x`: 水平复制.

- `repeat-y`: 垂直复制.

- `repeat`: 两个方向复制, 默认.

- `space`: 尽可能多次复制, 并在图片之间添加 space 如果有额外 space 可用.

- `round`: 尽可能多次复制, 但是会拉伸图片填充额外 space.

## 2.2 Sizing the background image

[`background-size`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/background-size) property 接受 2 个参数以用于调整水平和垂直方向大小, 可以是 `<length>` 或 `<percentage>`, 也可以是关键字:

- `cover`: 让 image 尽可能覆盖 box, 同时保持 aspect ratio (纵横比), 这种情况下 image 可能会超出 box.

- `contain`: 让 image 调整至适合 box 的尺寸, 同时保持 aspect ratio, 这种情况下可能会留白.

## 2.3 Positioning the background image

[`background-position`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/background-position) property, 以 box 的 top-left-hand corner 为原点, 接受 2 个参数以调整水平和垂直位置. 可以是 `<length>` 或 `<percentage>`, 也可以是关键字, 例如 `top`, `right`.

# 3 Gradient backgrounds

使用 `background-image` property, 接受  [`<gradient>`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/gradient) data type 生成渐变图.

> A fun way to play with gradients is to use one of the many CSS gradient generators available on the web, such as [CSSGradient.io](https://cssgradient.io/).

# 4 Multiple background images

`background-image` property 可以接受多个值以 commas 分隔. 前面的 image 会 overlap 后面的 image.

这时候其他 `background-*` property 也可以接受多个值, 但是按位置匹配对应的 image:

```css
background-image:
  url("image1.png"), url("image2.png"), url("image3.png"), url("image4.png");
background-repeat: no-repeat, repeat-x, repeat;
background-position:
  10px 20px,
  top right;
```

如果匹配数对不上, 那么 values 会循环匹配.

# 5 Background attachment

[`background-attachment`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/background-attachment) property 决定当 content 滚动时 background 如何滚动:

- `scroll`: 让元素的 bg 滚动当 page 滚动, 当元素 content 滚动时 bg 不滚动.

- `fixed`: 固定不会滚动.

- `local`: 都滚动.

> 查看示例: [background-attachment.html](https://mdn.github.io/learning-area/css/styling-boxes/backgrounds/background-attachment.html).

# 6 Using the background shorthand property

[`background `](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/background) property 提供 shorthand 方式来设置多个 values.

使用多个 backgrounds 时, 使用 comma 进行分隔.

书写 shorthand 有以下 rules:

- `background-color` 只能在最后一个 comma 之后.

- `background-size` 只能接在 `background-position` 之后, 通过 `/` 分隔.

```css
.box {
  width: 500px;
  height: 300px;
  padding: 0.5em;
  background:
    linear-gradient(
        105deg,
        rgb(255 255 255 / 20%) 39%,
        rgb(51 56 57 / 100%) 96%
      )
      center center / 400px 200px no-repeat,
    url("https://mdn.github.io/shared-assets/images/examples/big-star.png")
      center no-repeat,
    rebeccapurple;
}
```

# 7 Accessibility considerations with backgrounds

当 background 上有 text 时需要考虑 [contrast](https://developer.mozilla.org/en-US/docs/Web/Accessibility/Guides/Understanding_WCAG/Perceivable/Color_contrast)(对比度) 使其 legible (清晰可读的). 此外, 应该设置 `background-color` 使得 text 可读当 bg image 没有加载的时候.

Background 中不应包含重要内容, 对于 screen readers 而言.

# 8 Borders

Border 的 property 的颗粒度很丰富, 直接看例子.

```css
border: 1px solid black;

border-top: 1px solid black;

border-width: 1px;
border-style: solid;
border-color: black;

border-top-width: 1px;
border-top-style: solid;
border-top-color: black;
```

> These top, right, bottom, and left border properties also have mapped [*logical* border properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Logical_properties_and_values#properties) that relate to the writing mode of the document (e.g., left-to-right or right-to-left text, or top-to-bottom). You can read about these in [handling different text directions](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Handling_different_text_directions).

# 9 Rounded corners

[`border-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/border-radius) property 接受 2 个参数用于设置水平和垂直半径, 可以是 lengths or percentage.

当然也有 longhands 写法.

