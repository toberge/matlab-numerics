


### PA = LU

$$\begin{aligned}
PAx &= Pb \\
LUx &= Pb \\
\end{aligned}$$

Løser

$$\begin{aligned}
Lc &= Pb \\
Ux &= c \\
\end{aligned}$$

## Norms

### Vector norms

$$||x||_p = \sqrt[p]{|x_1|^p + \cdots + |x_n|^p}$$

$$||x||_1 = |x_1| + \cdots + |x_n| = \text{abs.verdi av alle elementene}$$

$$||\bold{x}||_\infin = \max|x_i|, i = 1,\dots,n = \text{maksimalt element}$$

### Matrix norms

$$||A||_1 = \text{maksimal kolonnesum}$$

$$||A||_\infin = \text{maximal absolute row sum} = \text{maksimal radsum}$$

### Errors

For a system $A \bold x = \bold b$ with approximate solution $\bold x_a$, we have:

#### Backward error

$$||\bold{b} - A\bold{x_a}||_\infin$$

#### Forward error

$$||\bold{x} - \bold{x_a}||_\infin$$

#### Residual

$$r = b - Ax_a$$

#### Relative backward error

$$\frac{||\bold{r}||_\infin}{||\bold{b}||_\infin} = \frac{||\bold{b} - A\bold{x_a}||_\infin}{||\bold{b}||_\infin}$$

#### Relative forward error

$$\frac{||\bold{x} - \bold{x_a}||_\infin}{||\bold{x}||_\infin}$$

#### Error magnification error

$$\frac{\text{relative forward error}}{\text{relative backward error}}$$

#### Condition number

The condition number is the largest error magnification factor (feilforstørringsfaktor)

$$cond(A) = ||A||_\infin \cdot ||A^{-1}||_\infin = ||A|| \cdot ||A^{-1}||$$

