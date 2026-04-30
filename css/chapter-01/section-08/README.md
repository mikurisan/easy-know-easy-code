*Source: [Handling conflicts](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Handling_conflicts)*

理解 cascade, specificity and inheritance 的基本概念.

# 1 Conflicting rules

[Cascade](https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Cascade/Introduction) 和 [specificity](https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Cascade/Specificity) 是一种机制, 当 rules 之间发生冲突时决定如何处理.

[Inheritance](https://developer.mozilla.org/en-US/docs/Web/CSS/Guides/Cascade/Inheritance) 意味着会继承 parent element 中的值, 但有些并不会.

## 1.1 Cascade

意味着 CSS rules 的 origin 和 order 很重要, 两个 equal specificity 的 rules 同时运用时, 后者会覆盖前者而生效.

例如:

```css
h1 {
  color: red;
}
h1 {
  color: blue;
}
```

最终生效的是 blue.

## 1.2 Specificity

即衡量一个 selector 的精确程度 (specific):

- A type (element) selector 权重最低. Pseudo-element 同.

- A class selector 权重次低. Attribute selectors and pseudo-classes 同.

- An ID selector 权重最高.

## 1.3 Inheritance

一些 CSS property values 可以被子 elements 继承, 一些不可以.

# 2 Understanding inheritance

`width`, `margin`, `padding` and `border` 为 inherited properties.

## 2.1 Controlling inheritance

使用 universal property values 以控制 inheritance. 每个 CSS property 都可以使用:

- [`inherit`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/inherit): 设置 property value 与父元素相同.

- [`initial`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/initial): 设置 property value 为初始值.

- [`revert`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/revert): 重置 property value 为浏览器默认值. 多数情况下类似于 `unset`.

- [`revert-layer`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/revert-layer): 设置 property value 为 previous [cascade layer](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/At-rules/@layer) 中的值.

- [`unset`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/unset): 设置 property value 为自然值. 如果是自然继承则为 `inherit`, 否则为 `initial`.

## 2.2 Resetting all property values

Property [`all`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/all) 用于快速设置所有 property value 为上述的 inheritance value.

# 3 Understanding the cascade

当 element 被应用了多个不同的 property values 时的生效顺序:

1. Source Order

2. Specificity

3. Importance

## 3.1 Source order

同级的 rules 则后面的会 overwrite 前面的.

## 3.2 Specificity

更 specific 的 rules 优先级更高.

Selector 的 specificity 的得分由以下 3 个部分的得分来衡量:

- **IDs**: 百位, 每包含一个 ID selector 得 1 分.

- **Classes**: 十位, 每包含一个 class selector, attribute selector, or pseudo-class 得 1 分.

- **Elements**: 个位, 每包含一个 element selector or pseudo-element 得 1 分.

示例:

| Selector | Identifiers | Classes | Elements | Total specificity |
|---|---|---|---|---|
| h1 | 0 | 0 | 1 | 0-0-1 |
| h1 + p::first-letter | 0 | 0 | 3 | 0-0-3 |
| li > a[href*="en-US"] > .inline-warning | 0 | 2 | 2 | 0-2-2 |
| #identifier | 1 | 0 | 0 | 1-0-0 |

> The universal selector (*), combinators (+, >, ~, ' '), and specificity adjustment selector (:where()) along with its parameters, have no effect on specificity.

**IDs versus classes**

因为 id 是唯一的, 所以 priority 更高.

## 3.3 Inline styles

拥有最高 precedence, 相当于 specificiy 1-0-0-0.

## 3.4 `!important`

特殊标记, 让目标可以 overrule 上述所有规则, 甚至是 inline styles!

```css
.better {
  background-color: gray;
  border: none !important;
}
```

# 4 The effect of CSS location

优先级后者覆盖前者:

- Declarations in user agent style sheets (e.g., the browser's default styles, used when no other styling is set).

- Normal declarations in user style sheets (custom styles set by a user).

- Normal declarations in author style sheets (these are the styles set by us, the web developers).

- Important declarations in author style sheets.

- Important declarations in user style sheets.

- Important declarations in user agent style sheets.

