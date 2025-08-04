---
layout: post-physics
title: "Two-electron SCF Fortran Code"
date: 2025-08-02 
last_modified_at: 2025-08-04 
category: physics
tag: physics, fundamentals
---
# Table of Content
- [Table of Content](#table-of-content)
  - [Main Program](#main-program)
    - [Overlap Energy](#overlap-energy)
    - [Kinetic Energy](#kinetic-energy)
    - [Potential Energy](#potential-energy)
    - [Integral](#integral)
      - [Overlap Integral](#overlap-integral)
      - [Kinetic Energy Integral](#kinetic-energy-integral)
      - [Potential Integral](#potential-integral)
    - [Diagonalization](#diagonalization)
  - [Auxilliary Subroutine, Function](#auxilliary-subroutine-function)
    - [Matrix Multiplication](#matrix-multiplication)
    - [Error Function](#error-function)


## Main Program
{% highlight fortran %}
	IMPLICIT DOUBLE PRECISION(A-H, O-Z)
	IOP = 2 
	N = 3 
	R = 1.4632D0
	ZETA1 = 2.0925D0
	ZETA2 = 1.24D0
	ZA = 2.0D0
	ZB = 1.0D0
	! Call the subroutine to perform the calculation
	CALL HFCALC(IOP, N, R, ZETA1, ZETA2, ZA, ZB)
	END 

	SUBROUTINE HFCALC(IOP, N, R, ZETA1, ZETA2, ZA, ZB)
	IMPLICIT DOUBLE PRECISION (A-H,O-Z)
	IF (IOP .EQ. 0) GOTO 20
	PRINT 10, N, ZA, ZB
10    FORMAT(1H1, 2X, 4HSTO-, I1,21HG FOR ATOMIC NUMBERS, 
     +       F5.2, 5H AND, F5.2)
	 CALL INTGRL(IOP, N, R, ZETA1, ZETA2, ZA, ZB) ! calculate integrals
	 CALL COLECT(IOP, N, R, ZETA1, ZETA2, ZA, ZB) ! put all integrals into arrays
	 CALL SCF(IOP, N, R, ZETA1, ZETA2, ZA, ZB) ! perform SCF calculation
20    CONTINUE
	RETURN
	END

{% endhighlight %}

{% highlight fortran %}
FUNCTION TWOE(A, B, C, D, RAB2, RCD2, RPQ2)
    IMPLICIT DOUBLE PRECISION (A-H,O-Z)
    DATA PI/3.1415926535898D0/
    TWOE=2.0D0*PI**(2.5D0)/((A+B)*(C+D)*DSQRT(A+B+C+D))
    + *F0((A+B)*(C+D)*RPQ2/(A*B+C*D))
    + *DEXP(-A*B*RAB2/(A+B)-C*D*RCD2/(C+D))
    RETURN
END 
{% endhighlight %}


$$(ab|cd) = \frac{2\pi^{5/2}}{(a+b)(c+d)\sqrt{a+b+c+d}} \times \exp\left(-\frac{ab}{a+b}R_{AB}^2 - \frac{cd}{c+d}R_{CD}^2\right) \times F_0(T)$$


where 

$$ T = \frac{(a+b)(c+d)}{a+b+c+d}R^2_{PQ} $$

### Overlap Energy
- see Appendix A for the derivation: 
\begin{equation}
    \left(A | B \right) = \frac{\pi}{(\alpha + \beta)}^{3/2} \exp\left[\frac{-\alpha\beta}{(\alpha + \beta)}|R_{AB}|^2\right]
\end{equation} 
where: $R_{AB} = |R_A -R_B|$


{% highlight fortran %}
FUNCTION S(A,B,RAB2)
    IMPLICIT DOUBLE PRECISION(A-H, O-Z)
    DATA PI/3.1415926535898D0/
    S = (PI/(A+B))**1.5D0*DEXP(-A*B*RAB2/(A+B))
    RETURN
END
{% endhighlight %}

### Kinetic Energy
- see Appendix A for the derivation: 
\begin{align}
    \left(A\left|-\frac{1}{2}\nabla^2\right|B\right) = \frac{\alpha \beta}{(\alpha + \beta)} \\ [3 - \frac{2\alpha\beta}{(\alpha + \beta)}|R_{AB}|^2]\left[\frac{\pi}{(\alpha + \beta)}\right]^{3/2}\exp\left[\frac{-\alpha\beta}{(\alpha + \beta)}|R_{AB}|^2\right]
\end{align}

{% highlight fortran %}
FUNCTION T(A,B,RAB2)
IMPLICIT DOUBLE PRECISION(A-H, O-Z)
DATA PI/3.1415926535898D0/
    T=A*B/(A+B)*(3.0D0-2.0D0*A*B*RAB2/(A+B))*(PI/(A+B))**1.5D0
    +    *DEXP(-A*B*RAB2/(A+B))
    RETURN
END
{% endhighlight %}

### Potential Energy
- see Appendix A for the derivation: 
\begin{equation}
    \left(A\left|-\frac{Z_C}{r_{1C}}\right|B\right) = \frac{-2\pi}{(\alpha + \beta)}Z_c \exp\left[ \frac{-\alpha \beta}{(\alpha + beta)}|R_A - R_B|^2\right] \times F_0[(\alpha + \beta)|R_p - R_C|^2]
\end{equation}

{% highlight fortran %}
FUNCTION V(A,B,RAB2,RCP2,ZC)
    IMPLICIT DOUBLE PRECISION(A-H, O-Z)
    DATA PI/3.1415926535898D0/
    V=2.0D0*PI/(A+B)*FO((A+B)*RCP2)*DEXP(-A*B*RAB2/(A+B))
    V = -V*ZC
    RETURN
END
{% endhighlight %}

### Integral

#### Overlap Integral
- overal integral has off-diagonal element calculated using equation (\ref{eq:1}):
  - this quantifies the degree to which the two atomic orbitals share the same space:
\begin{equation}
    S_{\mu \nu} = \sum_{p=1}^{3} \sum_{q=1}^{L} d_{p\mu}^{*} d_{q\nu} S_{pq} \label{eq:1} \quad \mu, \nu = 1,2 
\end{equation}
```fortran
...
S12 = S12 + S(A1(I), A2(J), R2)*D1(I)*D2(J) 
...
```
- $S_{pq}$ is defined: 
\begin{equation}
S_{pq} = \int d\mathbf{r} \phi_{p}^{GF}(\alpha_{p\mu}, r-R_A)\phi_{q}^{GF}(\alpha_{q\nu}, r-R_B)
\end{equation}
    - this has analytical solution given in [S(A,B,RAB2)](#overlap-energy) function.
- final overlap matrix has the form: 
$$
S=\left(\begin{array}{cc}
1 & S_{12} \\
S_{12} & 1
\end{array}\right)
$$

#### Kinetic Energy Integral
- kinetic integral elements calculated using equation (\ref{eq:2}):
\begin{equation}
    T_{\mu \nu} = \sum_{p=1}^{3} \sum_{q=1}^{L} d_{p\mu}^{*} d_{q\nu} T_{pq} \label{eq:2} \quad \mu, \nu = 1,2 
\end{equation}
```fortran
...
T11 = T11 + T(A1(I), A1(J),0.0D0)*D1(I)*D1(J)
T12 = T12 + T(A1(I), A2(J),R2)*D1(I)*D2(J)
T22 = T22 + T(A2(I), A2(J),0.0D0)*D2(I)*D2(J)
...
```
- $T_{pq}$ is defined: 
\begin{equation}
T_{pq} = \int d\mathbf{r} \phi_{p}^{GF}(\alpha_{p\mu}, r-R_A)\left[ -\frac{1}{2}\nabla_r^2 \right]\phi_{q}^{GF}(\alpha_{q\nu}, r-R_B)
\end{equation}
    - this has analytical solution calculated in [T(A,B,RAB2)](#kinetic-energy) function.
- final kinetic energy matrix has the form, defining the core Hamiltonian matrix: 
  - represents the total energy of a single electron in the potential of the nuclei, before considering electron-electron repulsion
$$
T=\left(\begin{array}{cc}
T_{11} & T_{12} \\
T_{12} & T_{22}
\end{array}\right)
$$

#### Potential Integral 
- 

### Diagonalization 
- subroutine uses the [Jacobi rotation method](https://en.wikipedia.org/wiki/Jacobi_eigenvalue_algorithm), which for a 2x2 matrix provides an exact, analytical solution.
\begin{equation}
    FC = CE
\end{equation}
- constructing the eigenvectors $C$

$$
C=\left(\begin{array}{cc}
\cos \theta & \sin \theta \\
\sin \theta & -\cos \theta
\end{array}\right)
$$

- finding the rotation matrix $\theta$:

$$
\theta=\frac{1}{2} \arctan \left(\frac{2 F_{12}}{F_{11}-F_{22}}\right)
$$

- computing the eigenvalues, which are the diagonal elements of the transformed matrix $E=C^TFC$, code uses the explicit formulas for these elements: 

$$
\begin{aligned}
&E_{11}=F_{11} \cos ^2 \theta+F_{22} \sin ^2 \theta+F_{12} \sin (2 \theta)\\
&E_{22}=F_{11} \sin ^2 \theta+F_{22} \cos ^2 \theta-F_{12} \sin (2 \theta)
\end{aligned}
$$


{% highlight fortran %}
SUBROUTINE DIAG(F,C,E)
        IMPLICIT DOUBLE PRECISION(A-H,O-Z)
        DIMENSION F(2,2), C(2,2), E(2,2)
        DATA PI/3.1415926535898D0/
        IF (DABS(F(1,1)-F(2,2)) .GT. 1.0D-20) GO TO 10

        THETA = PI/4.0D0
        GO TO 20
  10    CONTINUE

        THETA = 0.5D0*DATAN(2.0D0*F(1,2)/(F(1,1)-F(2,2)))
  20    CONTINUE
        C(1,1) = DCOS(THETA)
        C(2,1) = DSIN(THETA)
        C(1,2) = DSIN(THETA)
        C(2,2) = -DCOS(THETA)
        E(1,1) = F(1,1)*DCOS(THETA)**2+F(2,2)*DSIN(THETA)**2
     $  +F(1,2)*DSIN(2.0D0*THETA)
        E(2,2) = F(2,2)*DCOS(THETA)**2+F(1,1)*DSIN(THETA)**2
     $  -F(1,2)*DSIN(2.0D0*THETA)
        E(2,1) = 0.0D0
        E(1,2) = 0.0D0

        IF(E(2,2) .GT. E(1,1)) GO TO 30
        TEMP = E(2,2)
        E(2,2) = E(1,1)
        E(1,1) = TEMP
        TEMP = C(1,2)
        C(1,2) = C(1,1)
        C(1,1) = TEMP
        TEMP = C(2,2)
        C(2,2) = C(2,1)
        C(2,1) = TEMP
  30    RETURN
       END


{% endhighlight %}




## Auxilliary Subroutine, Function 


### Matrix Multiplication
{% highlight fortran %}
    SUBROUTINE MULT(A,B,C,IM,M)
        IMPLICIT DOUBLE PRECISION(A-H,O-Z)
        DIMENSION A(IM,IM), B(IM,IM), C(IM,IM)
        DO 10, I=1,M
        DO 10, J=1,M
        C(I,J)=0.0D0
        DO 10 K=1,M
10     C(I,J) = C(I,J) + A(I,K)*B(K,J)
        RETURN
    END
{% endhighlight %}


### Error Function 

{% highlight fortran %}
    FUNCTION FO(ARG)
        IMPLICIT DOUBLE PRECISION(A-H,O-Z)
        DATA PI/3.1415926535898D0/
        IF (ARG .LT. 1.0D-6) GO TO 10

        FO=DSQRT(PI/ARG)*DARF(DSQRT(ARG))/2.0D0
        GO TO 20

10     FO=1.0D0-ARG/3.0D0
20     CONTINUE
        RETURN
    END
{% endhighlight %}


{% highlight fortran %}
    FUNCTION DARF(ARG)
        IMPLICIT DOUBLE PRECISION(A-H,O-Z)
        DIMENSION A(5)
        DATA P/0.3275911D0/
        DATA A/0.254829592D0, -0.284496736D0,1.421413741D0,
    $   -1.453152027D0,1.061405429D0/
        T=1.0D0/(1.0D0+P*ARG)
        TN = T
        POLY = A(1)*TN
        DO 10 I=2,5
        TN = TN*T
        POLY=POLY + A(I)*TN
10     CONTINUE
        DARF = 1.0D0-POLY*DEXP(-ARG*ARG)
        RETURN
    END
{% endhighlight %}