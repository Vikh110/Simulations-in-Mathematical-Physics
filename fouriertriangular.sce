// Vishwas Khandelwal 17036567106
// Aim:To evaluate the fourier coefficients of a triangular wave and plot its fourier expansion for different values of n in the period[-L,L]


clc()
clf()
clear
n=input("ENTER THE VALUE OF n:-")
l=input("ENTER THE LIMITING VALUE OF FUNCTION:-")
function f=f(x)
    if x<0  then
        f=1+2*x;
    else
        f=1-2*x;
    end
endfunction
a0=(1/(2*l)*integrate('f','x',-l,l))
for i=1:n
    A(i)=(1/l)*integrate('f(x)*cos(i*%pi*x/l)','x',-l,l)
    B(i)=(1/l)*integrate('f(x)*sin(i*%pi*x/l)','x',-l,l)
end
disp(a0,"a0")
disp(A(1),"A1")
disp(B(1),"B1")
c=1
for k=-5*l:0.1:5*l
    p(c)=k
    u=0
for j=1:n
    u=u+A(j)*cos((j*%pi*k)/l)+B(j)*sin((j*%pi*k)/l)
    
end
q(c)=a0+u
c=c+1
end
xgrid(1)
xtitle("FOURIER SERIES PLOT FOR TRIANGULAR WAVE","x-axis","y-axis")
plot(p,q)


//OUTPUT:
//ENTER THE VALUE OF n:-20
//
//ENTER THE LIMITING VALUE OF FUNCTION:-%pi
//
//
// a0
//
//  -2.1415927
//
// A1
//
//   2.5464791
//
// B1
//
//   0.
//
//
