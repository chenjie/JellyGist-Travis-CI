# Basic $$\KaTeX$$ Cheat Sheet

This is an over simplified list of basic TeX commands supported by KaTeX.

## 上下标

| 公式 | 代码 |
|-----|------|
| $$x^2$$ | `x^2` |
| $$n_{k+1}$$ | `n_{k+1}` |
| $$n_{k+1}^2$$ | `n_{k+1}^2` |
| $$e^{e^{e^{e^{x}}}}$$ | `e^{e^{e^{e^{x}}}}` |

## 运算符

| 公式 | 代码 |
|-----|------|
| $$3+5=8$$ | `3+5=8` |
| $$3-5=-2$$ | `3-5=-2` |
| $$3\cdot5=15$$ | `3\cdot5=15` |
| $$n\times m$$ | `n\times m` |
| $$\pm 2$$ | `\pm 2` |
| $$2\div 3$$ | `2\div 3` |
| $$\frac{2}{3}$$ | `\frac{2}{3}` |
| $$\sqrt{2}$$ | `\sqrt{2}` |
| $$\sqrt[3]{8}=8^{\frac{1}{3}}=2$$ | `\sqrt[3]{8}=8^{\frac{1}{3}}=2` |
| $$\frac{2/3}{4/5}$$ | `\frac{2/3}{4/5}` |
| $$\frac{\frac{2}{3}}{\frac{4}{5}}$$ | `\frac{\frac{2}{3}}{\frac{4}{5}}` |
| $$\frac{\dfrac{2}{3}}{\dfrac{4}{5}}$$ | `\frac{\dfrac{2}{3}}{\dfrac{4}{5}}` |

## 函数

| 公式 | 代码 |
|-----|------|
| $$\ln e^x = x$$ | `\ln e^x = x` |
| $$\tan 90^\circ = \infty$$| `\tan 90^\circ = \infty` |

## 公式中的文本

| 公式 | 代码 |
|-----|------|
| $$3\text{ apples}\times 5\text{ apples}$$ | `3\text{ apples}\times 5\text{ apples}` |

## 括号

| 公式 | 代码 |
|-----|------|
| $$(1+\frac{1}{x})^2$$ | `(1+\frac{1}{x})^2` |
| $$\left(1+\frac{1}{x}\right)^2$$ | `\left(1+\frac{1}{x}\right)^2` |
| $$\left[-\frac{1}{x}\right]_1^\infty$$ | `\left[-\frac{1}{x}\right]_1^\infty` |
| $$\{1,2,3,\ldots ,n\}$$ | `\{1,2,3,\ldots ,n\}` |
| $$\left\{1,\frac{1}{2},\frac{1}{3},\ldots ,\frac{1}{n}\right\}$$ | `\left\{1,\frac{1}{2},\frac{1}{3},\ldots ,\frac{1}{n}\right\}` |

## 积分，数列和，极限

| 公式 | 代码 |
|-----|------|
| $$\int_0^2x^2dx$$ | `\int_0^2x^2dx` |
| $$\int\limits_{x\in C}dx$$ | `\int\limits_{x\in C}dx` |
| $$\sum_{i=1}^{n}i=\frac{n(n+1)}{2}$$ | `\sum_{i=1}^{n}i=\frac{n(n+1)}{2}` |
| $$\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}$$ | `\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}` |
| $$\prod_{i=1}^ni=n!$$ | `\prod_{i=1}^ni=n!` |

区块显示：

$$
\int_0^2x^2dx
$$

```latex
$$
\int_0^2x^2dx
$$
```

$$
\int\limits_{x\in C}dx
$$

```latex
$$
\int\limits_{x\in C}dx
$$
```

$$
\sum_{i=1}^{n}i=\frac{n(n+1)}{2}
$$

```latex
$$
\sum_{i=1}^{n}i=\frac{n(n+1)}{2}
$$
```

$$
\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}
$$

```latex
$$
\lim_{h\to 0}\frac{f(x+h)-f(x)}{h}
$$
```

$$
\prod_{i=1}^ni=n!
$$

```latex
$$
\prod_{i=1}^ni=n!
$$
```

## 空格

| 公式 | 代码 |
|-----|------|
| $$a b$$ | `a b` |
| $$a\: b$$ | `a\: b` |
| $$\int\limits_{x\in C}xdx$$ | `\int\limits_{x\in C}xdx` |
| $$\int\limits_{x\in C}\! x\, dx$$ | `\int\limits_{x\in C}\! x\, dx` |