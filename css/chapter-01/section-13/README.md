*Source: [Images, media, and form elements](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Images_media_forms)*

# 1 Replaced elements

Images and video 被称为 **[replaced elements](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Images_media_forms)**, 拥有 aspect ratio (纵横比).

> In web development, replaced elements are HTML elements whose content are replaced by external resources or content defined outside of the document structure, and are not considered in the CSS rendering model. They are external objects whose representation is independent of the CSS formatting model.

# 2 Sizing images

Image 有 instrinsic dimensions 而不受 box dimensions 的限制.

因而需要调整 image size 让其适应 box, 之前所提到的诸如 `max-width` 调整的都是 `<img>` 这个容器.

## 2.1 Handling image display issues with `object-fit`

`object-fit` property 用于调整 img 去适应 `<img>` 这个容器, 其接受:

- `cover`: img 保持 aspect ratio 以完全填充 `<img>` 容器.

- `contain`: img 保持 aspect ratio 以适应 `<img>` 容器.

# 3 Replaced elements in layout

当 replaced elements 变成某种 layout 的一部分时, 其依然保持 intrinsic dimensions 特性.

# 4 Form elements

> Form elements have issues when it comes to styling with CSS. [The Web Forms extensions module](https://developer.mozilla.org/en-US/docs/Learn_web_development/Extensions/Forms) covers the trickier aspects of styling certain form input types, which we will not go into here. There are, however, a few key basics worth highlighting in this section.

许多 form 通过 `<input>` element 添加, 其拥有各种各样的 form fields.

# 5 Syling text input elements

Text input elements 比较简单, 其行为就像其他 boxes 一样.

其默认样式的渲染取决于 os 或 browser.

# 6 Normalizing form behavior

Form elements behave differently across different browsers and operating systems. 

## 6.1 Inheritance and form elements

在一些 browsers 中, form elements 默认不继承 styling. 

开启例如:

```css
font-family: inherit;
```

## 6.2 Form elements and box-sizing

不同的 browser 中, form elements 会针对其不同的 widgets(组件) 采取不同的 box sizing rules (盒模型).

为了保持一致可以使用:

```css
box-sizing: border-box;
padding: 0;
margin: 0;
```

其余两个 property 是实践推荐.

## 6.3 Other useful settings

防止 older browsers 显示 scrollbar:

```css
textarea {
  overflow: auto;
}
```

## 6.4 Putting it all together into a "reset"

推荐的 form 重置规则, 相当于将上述规则整合了一下:

```css
button,
input,
select,
textarea {
  font-family: inherit;
  font-size: 100%;
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}

textarea {
  overflow: auto;
}
```

> Check out [Normalize.css](https://necolas.github.io/normalize.css/), which is a very popular stylesheet used as a base by many projects

