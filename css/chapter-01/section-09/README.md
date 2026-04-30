*Source: [CSS values and units](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Values_and_units)*

Property 有 value, value 有 type.

# 1 What is a CSS value?

CSS values define what types of value are valid for each CSS property.

> You'll see CSS value types referred to as data types.

# 2 Numbers, lengths, and percentages

The following are all classed as numeric:

| Data type | Description |
| --- | --- |
| [\<integer\>](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/integer) | 整数. |
| [\<number\>](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/number) | A decimal number. |
| [\<dimension\>](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/dimension) | 有单位的整数. includes the [\<length\>](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/length), [\<angle\>](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/angle), [\<time\>](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/time), and [\<resolution\>](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/resolution) types. 
| [\<percentage\>](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/percentage) | 就是百分数 |

## 2.1 Lengths

### 2.1.2 Absolute length units

| Unit | Name | Equivalent to |
|------|------|---------------|
| cm | Centimeters | 1cm = 37.8px = 25.2/64in |
| mm | Millimeters | 1mm = 1/10th of 1cm |
| Q | Quarter-millimeters | 1Q = 1/40th of 1cm |
| in | Inches | 1in = 2.54cm = 96px |
| pc | Picas | 1pc = 1/6th of 1in |
| pt | Points | 1pt = 1/72nd of 1in |
| px | Pixels | 1px = 1/96th of 1in |

### 2.1.3 Relative length units

例如:

- `em`: 相对于当前元素的字体大小, 或用于 [`font-size`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/font-size) 时相对于父元素的字体大小, `rem` 则相对于根元素的字体大小.

- `vh` 和 `vw`: 相对于 viewport 的高度和宽度.

## 2.2 Percentages

相对于 parent.

## 2.4 Numbers

无单位的数字.

# 3 Color

由 red, green and blue channels 组成, 每个 channels 支持 256 个值. (256 x 256 x 256 = 16,777,216).

## 3.1 Color keywords

通过 keywords (or named color) 来指定 color, 见 [`<named-color>`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/named-color).

## 3.2 Hexadecimal RGB values

使用十六进制 rgb 值.

## 3.3 RGB values

使用 [`rgb()`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/color_value/rgb), 参数值以此为 red, green and blue.

```css
background-color: rgb(2 121 139);
```

**RGB with opacity**

```css
background-color: rgb(2 121 139 / 0.3);
```

## 3.4 Using hues to specify a color

可以使用 [`<hue>`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/hue) 来表示颜色, 其借助 [`<angle>`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/angle) 来表示 hue, 参考 [color wheel](https://developer.mozilla.org/en-US/docs/Glossary/Color_wheel).

[`hsl()`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/color_value/hsl), [`hwb()`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/color_value/hwb), and [`lch()`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/color_value/lch) 可以使用 `\<hue\>` .

> [`lab()`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/color_value/lab) 基于人眼可见色彩范围来定义颜色.

### 3.4.1 HWB

指定 `srgb()` 色彩. 由 3 部分组成:

- **Hue**: 取值为 0-360, 表示 angles.

- **Whiteness**: 取值 0%-100%, 决定 color 有多白.

- **Blackness**: 取值 0%-100%, 决定 color 有多黑.

### 3.4.2 HSL

指定 `srgb()` 色彩. 由 3 部分组成:

- **Hue**: 取值为 0-360, 表示 angles.

- **Saturation**: 取值 0%-100%, 决定 color 的饱和度.

- **Lightness**: 取值 0%-100%, 决定 color 多明亮度.

其还有第四个可选参数用于表示 transparency, 使用 `/` 分隔.

```css
background-color: hsl(188 97% 28% / 0.3);
```

# 4 Image

[`<image>`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/image) value type 可以是 `url()` 指定的图片地址, 或者是 gradient (渐变).

```css
background-image: url("https://mdn.github.io/shared-assets/images/examples/big-star.png");

background-image: linear-gradient(
90deg,
rgb(119 0 255 / 39%),
rgb(0 212 255 / 25%)
);
```

## 5 Position

[`<position>`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/position_value) value type 表示一组 2D coordinates. 其接受关键字 `top`, `left`, `bottom`, `right`, and `center` 使得 item 对齐于一个 2D box 相应的边界.

一般 position value 包含两个值, 一个表示水平, 一个表示垂直. 如果仅指定一个轴, 则另一个轴将默认为 `center` .

Position 从 left 和 top 开始算起.

# 6 Strings and identifiers

之前所说的 keywrods 更准确的术语是 identifiers, 不需要 quoted, 区别于 strings.

# 7 Functions

Propery value 支持 [functions](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/Functions), 例如 [Transform functions](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/Functions#transform_functions), [Math functions](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/Functions#math_functions).

探索更多 [CSS value functions](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/Functions).

