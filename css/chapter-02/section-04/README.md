*Source: [Web fonts](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Text_styling/Web_fonts)*

如何使用 custom fonts.

# 1 Web fonts

指定 font files, 当 webpages 被访问时一起下载.

使用 [`@font-face`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/At-rules/@font-face) ruleset 指定 font file, 随后在 `font-family` 中使用. 例如:

```css
@font-face {
  font-family: "myFont";
  src: url("myFont.woff2");
}

html {
  font-family: "myFont", "Bitstream Vera Serif", serif;
}
```

有一些重要的事要记住:

1. Fonts 并不都是免费的, 即使是免费也要遵循其 license conditions, 一般都要 crediting the creator (注明创作者身份).

2. 所有主流 broswers 支持 WOFF/WOFF2 (Web Open Font Format Version 1 and 2).

3. WOFF2 支持所有的 TrueType and Opentype 规范.

4. 如果要兼容 legacy broswers (旧版 broswers), 需要提供 EOF (Embedded Open Type), TTF(True Type Font), and SVG web fonts 以供下载.

# 2 Adding your own web fonts

## 2.1 Finding fonts

Fonts 由 font foundries 开发并存储成不同的 formats. 这里有 3 种类型的网站可以获取 fonts:

- 免费的 font distributor: 例如 [Font Squirrel](https://www.fontsquirrel.com/), [DaFont](https://www.dafont.com/), and [Everything Fonts](https://everythingfonts.com/).

- 付费的 font distributor: 有偿提供的 fonts 的, 比如 [myfonts.com](https://www.myfonts.com/). 也可以直接从 font foundries 购买, 比如 [Linotype](https://www.linotype.com/), [Monotype](https://www.monotype.com/ja), or [Exljbris](https://www.exljbris.com/).

- 在线 font service: 让整个过程变得简单.

## 2.2 Generating the required code

生成所需的 code 以及 font formats. 对于每个字体, 遵循以下步骤:

1. 确保你遵守 licensing requirements.

2. 前往 [Webfont Generator](https://transfonter.org/).

3. 上传 font files.

4. Convert and download.

## 2.3 Implementing the code

上述 font 会被转换为 WOFF/WOFF2 format. 此时将其导入:

```css
@font-face {
  font-family: "zantrokeregular";
  src:
    url("fonts/zantroke-webfont.woff2") format("woff2"),
    url("fonts/zantroke-webfont.woff") format("woff");
  font-weight: normal;
  font-style: normal;
  font-display: swap;
}
```

随后就可以使用了:

```css
font-family: "zantrokeregular", serif;
```

# 3 Using an online font service

Online font services 会存储并提供 font service 给你, 只需插入简单的几行代码即可, 而无需向上面那样使用 `@font-face`.

例如 [Adobe Fonts](https://fonts.adobe.com/) and [Cloud.typography](https://www.typography.com/webfonts), 基本都是 subscription-based, 而 [Google Fonts](https://fonts.google.com/) 是免费的.

# 4 `@font-face` in more detail

额外学习.

[@font-face tip: define font-weight and font-style to keep your CSS simple.](https://www.456bereastreet.com/archive/201012/font-face_tip_define_font-weight_and_font-style_to_keep_your_css_simple/)

[Creating Custom Font Stacks with Unicode-Range.](https://24ways.org/2011/creating-custom-font-stacks-with-unicode-range/)
