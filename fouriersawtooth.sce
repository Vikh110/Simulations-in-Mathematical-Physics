//SURYAKANT SHARMA
//21730823
//Aim:To evaluate the fourier coefficients of a sawtooth wave and plot its fourier expansion for different values of n in the period[-L,L]


clc
clc
clf()
clear
n=input("ENTER THE VALUE OF n:-")
l=input("ENTER THE LIMITING VALUE OF FUNCTION:-")
function f=f(x)
    f=x
endfunction
a0=(1/(2*l)*integrate('f','x',-l,l))
for i=1:n
    A(i)=(1/l)*integrate('f(x)*cos(i*%pi*x/l)','x',-l,l)
    B(i)=(1/l)*integrate('f(x)*sin(i*%pi*x/l)','x',-l,l)
end
disp(a0,"a0=")
disp(A(1),"A1")
disp(B(1),"B1")
c=1
for k=-5*l:0.1:5*l
    p(c)=k
    u=0
for i=1:n
    u=u+A(i)*cos(i*%pi*k/l)+B(i)*sin(i*%pi*k/l)
    
end
q(c)=a0+u
c=c+1
end
xgrid(1)
xtitle("sawtooth wave by fourier series","x-axis","y-axis")
plot(p,q)


//OUTPUT:
//ENTER THE VALUE OF n:-20
//
//ENTER THE LIMITING VALUE OF FUNCTION:-%pi
//
//
// a0=
//
//   0.
//
// A1
//
//   0.
//
// B1
//
//   2.
//
