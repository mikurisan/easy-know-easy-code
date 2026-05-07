*Source: [Fundamental text and font styling](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Text_styling/Fundamentals)*

# 1 What is involved in styling text in CSS?

Text content 就像一连串的 inline element, 一个挨着一个, 不换行除非达到末尾.

Text 样式通常分为两类:

- **Font styles**

- **Text layout styles**

# 2 Fonts

## 2.1 Color

例如:

```css
color: red;
```

### 2.2 Font families

例如:

```css
font-family: "Arial";
```

### 2.2.1 Web safe fonts

可以在多数 systems 中使用的字体:

| Name | Generic type | Notes |
|------|--------------|-------|
| Arial | sans-serif | It's often considered best practice to also add Helvetica as a preferred alternative to Arial as, although their font faces are almost identical, Helvetica is considered to have a nicer shape, even if Arial is more broadly available. |
| Courier New | monospace | Some OSes have an alternative (possibly older) version of the Courier New font called Courier. It's considered best practice to use both with Courier New as the preferred alternative. |
| Georgia | serif | |
| Times New Roman | serif | Some OSes have an alternative (possibly older) version of the Times New Roman font called Times. It's considered best practice to use both with Times New Roman as the preferred alternative. |
| Trebuchet MS | sans-serif | You should be careful with using this font — it isn't widely available on mobile OSes. |
| Verdana | sans-serif | |

> Among various resources, the [cssfontstack.com](https://www.cssfontstack.com/) website maintains a list of web safe fonts available on Windows and macOS operating systems.

### 2.2.2 Default fonts

CSS 提供了 5 种 generic (通用的) font names:

| Term | Definitoin |
| --- | --- |
| `sefif` | Fonts that have serifs (the flourishes and other small details you see at the ends of the strokes in some typefaces). |
| `sans-serif` | Fonts that don't have serifs. |
| `monospace` | Fonts where every character has the same width, typically used in code listings. |
| `cursive` | Fonts that are intended to emulate handwriting, with flowing, connected strokes. |
| `fantasy` | Fonts that are intended to be decorative. |

实际上所使用的 font fact (字体样式) 会因 browsers 或操作系统而异.

最差的情况是 browsers 会尽力提供看起来合适的字体, 前 3 种相对可预测, 后 2 种可预测性较差, 建议谨慎使用和测试.


### 2.2.3 Font stacks

提供 **font stacks** 让 broswers 能够有更对的 fonts 选择. 例如:

```css
font-family: "Trebuchet MS", "Verdana", sans-serif;
```

当第一个 font 无法使用便顺延下一个. 

如果所有的 fonts 都无法使用, 通常会使用 serif font, 即 *Time New Roman*.

> 最好将字体名称 quoted, 如果其中有一些特殊符号. 当字体名称与 generic font names 或者 CSS 种的 keywords 重名时, 也要 quoted.

## 2.3 Font size

最常用的 units:

- `px`(pixels): 决定文本的 pixels high. 绝对单位, 在几乎所有页面上的最终计算值都是相同的.

- `em`s: 1 `em` 等于父元素的字体大小 (具体而言是 M 大写字母的宽度).

- `rem`s: 与 `em` 类似, 但是相对于的是 root elements 的字体大小而不是父元素.

## 2.4 Font style, font weight, text transform, and text decoration

**[`font-size`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/font-style)**: 是否将文本设为 italic (斜体文本), 取值如下:

- `normal`: 不设置

- `italic`: 设置. 如果字体没有斜体版本, 将通过倾斜 (oblique) 来模拟.
- `oblique`: 使用模拟版本的倾斜字体.

**[`font-size`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/font-weight)**: 设置粗细程度 (bold), 可以是 keywords 或数字.

**[`text-transform`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/text-transform)**: 字体被转换的形式, 取值如下:

- `none`: 防止任何 transform.

- `uppercase`: 大写.

- `loswercase`: 小写.

- `capitalize`: 首字母大写.

- `full-width`: 将所有字符 (glyphs) 放入一个固定大小的正方体中, 即任何语言的字符所占空间都是一样的, 达到对齐的效果.

**[`text-decoration`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/text-decoration)**: 字体修饰的形式, 取值如下:

- `none`: 清除已有 decoration.

- `underline`: 下划线.

- `overline`: 上划线.

- `line-through`: 删除线 (strikethrough).

可以接受多个值, 也有 longhand 写法.

## 2.5 Text drop shadows

[`text-shadow`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/text-shadow) property 添加下拉阴影, 接受 4 个值, 依次为:

1. Shadow 的 horizontal offset, 可以是 length 或 size units, 最常用的是 `px`. 正数表示往右偏移, 必填.

2. Shadow 的 vertical offset. 正数往下偏移, 必填.

3. Blur radius (模糊半径). 默认为 0, 接受多数 length and size units.

4. Shadow 的颜色. 默认为 [currentColor](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/color_value#currentcolor_keyword).

**Multiple shadows**

对一个 text 指定多个 shadow, 使用 comma 分隔即可.

> You can see more interesting examples of text-shadow usage in the Sitepoint article [Moonlighting with CSS text-shadow](https://www.sitepoint.com/moonlighting-css-text-shadow/).

# 3 Text layout

## 3.1 Text alignment

[`text-align`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/text-align) 属性用于控制 text 与其 content box 的对齐关系, 接受 4 个值:

- `left`: 左对齐 (left-justfies).

- `right`: 右对齐.

- `center`: 居中对齐.

- `justify`: 让文本均匀分布, 调整 words 之间的 gap 使得每行的宽度一致. 小心使用, 尤其是长单词比较多的时候.

## 3.2 Line height

[`line-height`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/line-height) 属性设置 text 高度, 接受多数 length and size units, 也接受 unitless value, 这也是最常用的, 其基于 font-size 的 height 进行倍乘.

## 3.3 Letter and word spacing

[`letter-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/letter-spacing) 和 [`word-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/word-spacing) property 可以设置字母和单词之间的 spacing, 接受多数 length units.

## 3.4 Other properties worth looking at

> 直接复制原文了, 有空看.

Font styles:
  - `font-variant`: Switch between small caps and normal font alternatives.

  - `font-kerning`: Switch font kerning options on and off.

  - `font-feature-settings`: Switch various OpenType font features on and off.

  - `font-variant-alternates`: Control the use of alternate glyphs for a given font-face.

  - `font-variant-caps`: Control the use of alternate capital glyphs.

  - `font-variant-east-asian`: Control the usage of alternate glyphs for East Asian scripts, like Japanese and Chinese.

  - `font-variant-ligatures`: Control which ligatures and contextual forms are used in text.

  - `font-variant-numeric`: Control the usage of alternate glyphs for numbers, fractions, and ordinal markers.

  - `font-variant-position`: Control the usage of alternate glyphs of smaller sizes positioned as superscript or subscript.

  - `font-size-adjust`: Adjust the visual size of the font independently of its actual font size.

  - `font-stretch`: Switch between possible alternative stretched versions of a given font.

  - `text-underline-position`: Specify the position of underlines set using the text-decoration-line property underline value.

  - `text-rendering`: Try to perform some text rendering optimization.

Text layout styles:
  - `text-indent`: Specify how much horizontal space should be left before the beginning of the first line of the text content.

  - `text-overflow`: Define how overflowed content that is not displayed is signaled to users.

  - `white-space`: Define how whitespace and associated line breaks inside the element are handled.

  - `word-break`: Specify whether to break lines within words.

  - `direction`: Define the text direction. This depends on the language and usually it's better to let HTML handle that part as it is tied to the text content.

  - `hyphens`: Switch on and off hyphenation for supported languages.

  - `line-break`: Relax or strengthen line breaking for Asian languages.

  - `text-align-last`: Define how the last line of a block or a line, right before a forced line break, is aligned.

  - `text-orientation`: Define the orientation of the text in a line.

  - `overflow-wrap`: Specify whether or not the browser may break lines within words in order to prevent overflow.

  - `writing-mode`: Define whether lines of text are laid out horizontally or vertically and the direction in which subsequent lines flow.

# 4 Font Shorthand

Many font properties can also be set through the shorthand property [font](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/font). These are written in the following order: font-style, font-variant, font-weight, font-stretch, font-size, line-height, and font-family.

> 直接复制引用了, shorthand 写法基本都要遵循一些顺序还有规则, 不细看了.
