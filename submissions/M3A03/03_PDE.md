---
title: TDAT3024 – Matteøving 3
author:
- Tore Bergebakken
- Jon Åby Bergquist
- Kristoffer Vanebo
titlepage: true
header-includes:
- \usepackage{tgbonum}
---

**NB**: CP-oppgavene står bakenfor de tekstlige oppgavene siden de er eksportert fra Live Editor i Matlab.

# 8.1.4

Vi skal undersøke om bakoverdifferansemetoden er stabil for varmelikninger med $c < 0$. Antar at $c$ er konstanten som ellers kalles $D$, i en generell varmelikning

$$u_{tt} = cu_{xx}$$

Da er $\sigma = \frac{ck}{h^2} < 0$ siden både $k$ og $h$ er positive.

Fra Von Neumann-stabilitetsanalysen i læreboka vet vi at metodens kjerne, iterasjonen $w_j = A^{-1}w_{j-1} + b$,
er stabil for $|1 + 2\sigma (1 - \cos x)| > 1 \Rightarrow \sigma > 0$ (8.17).
Siden vi nå fant at for $c < 0$ er $\sigma < 0$, kan ikke bakoverdifferansemetoden være betingelsesløst stabil for varmelikninger med $c < 0$, Q.E.D.

# 8.2.1b

Skal vise at $u(x,t) = e^{-x-2t}$ er en løsning på

$$u_{tt} = 4u_{xx}$$

med initialbetingelsene

$$
\begin{cases}
u(x,0) = e^{-x} \text{ for } 0 \le x \le 1\\
ut(x,0) = -2e^{-x} \text{ for } 0 \le x \le 1\\
u(0,t) = e^{-2t} \text{ for } 0 \le t \le 1\\
u(1,t) = e^{-1-2t} \text{ for } 0 \le t \le 1
\end{cases}
$$

Viser først at løsningen passer i likninga:

$$
\begin{aligned}
u &= e^{-x-2t}\\
u_x &= -e^{-x-2t}\\
u_{xx} &= e^{-x-2t}\\
u_t &= -2e^{-x-2t}\\
u_{tt} &= 4e^{-x-2t}\\
\Rightarrow u_{tt} &= 4u_{xx}
\end{aligned}
$$

Så tar vi for oss betingelsene:

$$
\begin{aligned}
u(x,0) &= e^{-x-2\cdot 0} = e^{-x}\\
u_t(x,0) &= -2e^{-x-2\cdot 0} = -2e^{-x}\\
u(0,t) &= e^{-0-2t} = e^{-2t}\\
u(1,t) &= e^{-1-2t}
\end{aligned}
$$

Betingelsene er oppfylt, så $u$ er en gyldig løsning av likningen.

# 8.2.3

Skal vise at $u_1(x,t) = \sin \alpha x \cos c \alpha t$ og $u_2(x,t) = e^{x + ct}$ er løsninger av bølgelikningen $u_{tt} = c^2 u_{xx}$.

## 8.2.3 -- Løsning 1

Deriverer $u_1$:

$$
\begin{aligned}
u_1 &= \sin \alpha x \cos c\alpha t\\
u_{1t} &= -c\alpha \sin \alpha x \sin c\alpha t\\
u_{1tt} &= -c^2\alpha^2 \sin \alpha x \cos c\alpha t\\
u_{1x} &= \alpha \cos \alpha x \cos c\alpha t\\
u_{1xx} &= -\alpha^2 \sin \alpha x \cos c\alpha t\\
\end{aligned}
$$

Setter inn i likningens to sider:

$$
\begin{aligned}
u_{1tt} &= -c^2\alpha^2 \sin \alpha x \cos c\alpha t\\
c^2u_{1xx} &= -\alpha^2 \sin \alpha x \cos c\alpha t\\
u_{1tt} &= c^2 u_{1xx}\\
-c^2\alpha^2 \sin \alpha x \cos c\alpha t &=
-c^2\alpha^2 \sin \alpha x \cos c\alpha t\\
\end{aligned}
$$

Har da vist at $u_1$ er en løsning på bølgelikningen.

## 8.2.3 -- Løsning 2

Deriverer $u_2$:

$$
\begin{aligned}
u_2 &= e^{x + ct}\\
u_{2t} &= ce^{x + ct}\\
u_{2tt} &= c^2e^{x + ct}\\
u_{2x} &= e^{x + ct}\\
u_{2xx} &= e^{x + ct}
\end{aligned}
$$

Setter inn i likningens to sider:

$$
\begin{aligned}
u_{2tt} &= c^2e^{x + ct}\\
c^2u_{2xx} &= c^2e^{x + ct}\\
u_{2tt} &= c^2 u_{2xx}\\
c^2e^{x + ct} &= c^2e^{x + ct}\\
\end{aligned}
$$

Har da vist at $u_2$ er en løsning på bølgelikningen.
