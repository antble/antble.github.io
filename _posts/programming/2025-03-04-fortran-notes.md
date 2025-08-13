---
layout: post-math
title: Fortran Notes
date: 2025-03-04
last_modified_at: 2025-03-05
category: programming
tag: [fortran, notes]
---


Collection of Fortran notes. 

During my master’s studies, I worked with a large Fortran 77 codebase that many avoided due to its age and complexity. Despite its intimidating size, especially for someone at my experience level, I was intrigued by the challenge of porting it to Python using modern libraries. To do so, I first needed to understand how the original Fortran code functioned, which meant learning to read Fortran before attempting to write it.

Over time, I became familiar with its structure, syntax, and quirks. This foundational experience proved valuable during my doctoral studies, where I encountered a substantial Fortran 90 codebase. Compared to Fortran 77, Fortran 90 offers a more refined and readable syntax, particularly for those with a background in Python.

Below are some key Fortran concepts I found especially useful:


# Compiling and linking in Fortran 

Assume we have a module `b.f90` that contains a functionality that is used in the main program. To linked this to the main, do the following steps. 
1. compile a module file `*.mod`
2. linked it to the main program 
   
```fortran 
gfortran -c b.f90   ! b.o and module_name.mod is created 
gfortran main.f90 b.o ! a.out is created 
```




# Arrays 

- array's index start at 1  [1]
- fortra arrays are very powerful and allows to define 
  - matrices 
  - vectors 
  - other arrays with up to 7 dimensions 
- several ways to define an array 
  {% highlight fortran %}
  integer, parameter :: V = 200, L = 1000
  integer :: array1(V)
  real :: vector(0:L)
  real :: matrix(V,L)
  ! or 
  integer, dimension(V) :: array1 
  real, dimension(0:L) :: vector 
  real, dimension(M, N) :: matrix 
  {% endhighlight %}

## Dynamic memory allocation 
- static vs dynamic memory allocation 
- what if you don't know the exact size of the array you want to use?
  - if array size depends on the input, its memory can be allocated at runtime 

- 2 ways to allocate memory dynamically 
  {% highlight fortran %}
  integer :: allocatable :: M(:,:) 
  or 
  integer :: err
  allocate(M(4,5), err=err)
  if (err /=0 ) STOP
  ...
  deallocate(M)
  {% endhighlight %}
- don't forget to deallocate an allocated variable (?)
  
- "..use only allocatable arrays in your codes" [2]. This is to avoid wasted RAM usage. 



## Intrinsic array functions 
- `SIZE(array[,dim])`
- `SHAPE(array)` 
- `COUNT(L_array[,dim])` 
- `SUM(array[,dim][,mask])` 
- `ANY(L_array[,dim])` 
- `MINVAL/MAXVAL(array[,dim][,mask])` 
- `MINLOC/MAXLOC(array[,mask])` 


# Functions, Subroutine, Modules, 
Dividing a complicated computational tasks into modular form of procedures is a common task in any programming language. In Fortran, this can be achieve by using the following *programm unit*: functions, subroutine, and modules. 
Each of these has a purpose and should be used properly for efficiency and speed. 



## FUNCTIONS 
supplying the functions:
- define the fxns 
- reference or use it 
- returns a single object and usually does not alter the values of its argument

1. functions 
    - internal 
            - the use of `CONTAINS`
    - external 
        - same file : 
            - the use of `INTERFACE`
        - different file
            - the use of `USE` : regarded as a re-declaratioin of all the modules entities inside the local scoping unit, with exactly the same names and properties [4].  
    - optional arguments
      - either in the positional lists or in the keyword list
    - procedures as arguments
  
2 ways to define a `FUNCTON`: 

{% highlight fortran %}
function distance(p,q)
real :: distance 
...
end function distance 
! or 
real function distance(p,q)
...
end function distance 
! or 
function distance(p,q) result(r)
real :: r
...
end function
{% endhighlight %}

- dummy arguments may be declared `optional` 
- (or) you may follow a (possibly empty) ordinary positional argument list for leading arguments by a keyword argument list

{% highlight fortran%}
subroutine mincon(n, f, x, upper, lower, equalities, inequalities, convex, xstart)
real, optional, dimension(x) :: upper, lower
...
end subroutine mincon 

! and we may call it using 
call mincon(n, f, x, upper)

! another way to set an optional argument
call mincon(n, f, x, equalities=q, xstart=x0)
{% endhighlight %}



## SUBROUTINE 
- performs more complicated task
- returns several results through its arguments and other means 
How do you hand the flow of information between the subroutines? 
1. via data held in a module and accessed by the subprograms, see section on `modules`
2. via arguments in the procedure calls 
   - type of an actual argument == type of the dummy argument 



### CONTAINS, USE
{% highlight fortran %}
module example 
    type type1 
    contains 
        procedure, nopass :: static_method1 
    end type type1 
    type type2
    contains 
        procedure, nopass :: static_method1 
    end type type2 
end module example 

use example  ! all public objects in namespace example available 
use example, only: type1 ! class prototype type1 available, type2 not available 
use example, mytype => type1 ! within this scoping unit, type1 is referred to as "mytype" 
{% endhighlight %}


### INTENT 
- `IN` : only receive values from the outside
- `OUT` : doesn't have to receive anything, can be used to pass computational result back to the outside world
- `INOUT` : receive a value use it fro computation and hold a result so that it can be passed back to the outside world. 

{% highlight fortran %}
program swap
implicit none 
real :: a=1, b=2

print *, "Before calling swap fxn:", a, b
CALL swap_num(a,b)
print *, "After calling swap fxn: ", a, b

contains 
    subroutine swap_num(a,b)
        real, intent(inout) :: a, b 
         real :: temp 
         temp = a
         a = b 
         b = temp
    end subroutine swap_num4
end program swap   
{% endhighlight %}


this will print: 
{% highlight fortran %}
 Before calling swap fxn:   1.00000000       2.00000000
 After calling swap fxn:    2.00000000       1.00000000
{% endhighlight %}



### INTERFACE
- any **external function** to be used should be listed in an interface block along with the declaration of its arguments and their types and the type of the function value.
- `INTERFACE` should be placed after the `implicit none`
- another use of interface is for overloading, that is being able to call several procedures by the same generic name [4]
  - another form of overloading occurs when an *interface blocks* specifies a defined operation or a defined assignment to extend operation or assignment

{% highlight fortran %}
program square_a_number 
implicit none  
INTERFACE 
    real function squared_num(a) 
     real, intent(in) :: a 
   end function squared_num 
END INTERFACE
real :: a=2 
print *, squared_num(a) 
end program square_a_number  
    
real function squared_num(a) 
real, intent(in) :: a  
    squared_num = a*a 
end function squared_num 
{% endhighlight %}



## MODULE 
- conveniently packages collections of declarations and subprograms so that they may be imported into other program units 
- functionality of the module unit is similar to that of the C header file 
- accessible by *use association*
{% highlight fortran %}
module Circle 
    real, parameter :: pi = 3.1415925 
    real :: r
end module Circle


program Area 
use Circle, only : r
implicit none 

interface 
    function area_circle(r) 
        real, intent(in) :: r 
    end function area_circle 
end interface 

! prompt user for radius of circle 
write(*, '(A)', ADVANCE = "NO") "Enter the radius of the circle: "
read(*,*) r

! write out the area of circle using function call 
write(*, 100) "Area of circle with radius", r, " is", area_circle(r)
100 format (A, 2x, F6.2, A, 2x, F12.2)
end program Area

function area_circle(r)
use Circle, only: pi 
implicit none 
real :: area_circle 
real, intent(in) :: r 

area_circle = pi*r*r 
end function area_circle 
{% endhighlight %}


- arrays are not allowed to be passed as formal arguments to subprogram, module comes handy for this case - the module construct provides a way to pass dynamically arrays to several program units [5]





# Putting it all together 
{% highlight fortran %}
!main program 
program test
    use sorts 
    type(length) :: s = length(10.0), l
    type(length_squared) :: s2 = length_squared(10.0)
    type(velocity) :: v 
    type(time) :: t = time(3.0)
    v = s/t 
! Note: v = s + t or v = s*t would be illegal 
    t = t + time(1.0)
    l = sqrt(s2)
    print *, v, t, l 
end program test
{% endhighlight %}



`sorts.f95` code : 
{% highlight fortran %}
module sorts
    type time
        real :: seconds 
    end type time 

    type velocity
        real :: metres_per_second 
    end type velocity

    type length 
        real :: metres 
    end type length 

    type length_squared
        real :: metres_squared 
    end type length_squared 

    interface operator(/)
        module procedure length_by_time 
    end interface 

    interface operator(+)
        module procedure time_plus_time
    end interface 

    interface sqrt 
        module procedure sqrt_metres_squared 
    end interface 

contains 
    function length_by_time(s, t)
        type(length), intent(in) :: s 
        type(time), intent(in) :: t 
        type(velocity) :: length_by_time 
        length_by_time%metres_per_second = s%metres / t%seconds 
    end function length_by_time 

    function time_plus_time(t1, t2) 
        type(time), intent(in) :: t1, t2 
        type(time) :: time_plus_time
        time_plus_time%seconds = t1%seconds + t2%seconds 
    end function time_plus_time

    function sqrt_metres_squared(l2)
        type(length_squared), intent(in) :: l2 
        type(length) :: sqrt_metres_squared
        sqrt_metres_squared%metres = sqrt(l2%metres_squared)
    end function sqrt_metres_squared

end module sorts
{% endhighlight %}



# Object-oriented programming 
- OOP "viewed as a collection of interacting, but mostly independent software components - components are objects and are "entity that encapsulates both data and procedures" [1]


Fortran doesnt have "notion on separate instances of a module. In order to obtain class-like behaviour, one can combine a module, which contains the methods that operate on the class, with derived type containing the data." [2].

The "instances" comes from the derived data type being allocated multiple times which can used as arguments to the methods within that module. 


{"class" module is made up of (derived data type) + methods on this derived data type}
 ==> {one can create instances of this derived data type and call the methods on this derived data type}





{% include references_fortran.md%}