// Vishwas Khandelwal 17036567106
// Aim:- FOURIER SERIES


funcprot(0)
clc()
clf()
clear()
n=input("ENTER THE VALUE OF n:-")
l=input("ENTER THE LIMITING VALUE OF FUNCTION:-")
function f=f(x)
    if x<0  then
        f=0;
    else
        f=1;
    end
endfunction
a0=(1/(2*l)*integrate('f','x',-l,l))
for i=1:n
    A(i)=(1/l)*integrate('f(x)*cos(i*%pi*x/l)','x',-l,l)
    B(i)=(1/l)*integrate('f(x)*sin(i*%pi*x/l)','x',-l,l)
end
disp("FOR SQUARE WAVE")
disp(a0,"a0=")
disp(A(1),"A")
disp(B(1),"B")
c=1
for k=-5*l:0.01:5*l
    p(c)=k
    u=0;v=0;
for i=1:n
    u=u+A(i)*cos(i*%pi*k/l)
    v=v+B(i)*sin(i*%pi*k/l)
end
q(c)=a0+u+v
c=c+1
end
subplot(221)
plot(p,q)
xtitle("FOURIER SERIES PLOT FOR SQUARE WAVE")
xgrid(1)
function f=f(x)
    f=x
endfunction
a0=(1/(2*l)*integrate('f','x',-l,l))
for i=1:n
    A(i)=(1/l)*integrate('f(x)*cos(i*%pi*x/l)','x',-l,l)
    B(i)=(1/l)*integrate('f(x)*sin(i*%pi*x/l)','x',-l,l)
end
disp("FOR SAWTOOTH WAVE")
disp(a0,"a0=")
disp(A(1),"A")
disp(B(1),"B")
c=1
for k=-5*l:0.01:5*l
    p(c)=k
    u=0;v=0;
for i=1:n
    u=u+A(i)*cos(i*%pi*k/l)
    v=v+B(i)*sin(i*%pi*k/l)
end
q(c)=a0+u+v
c=c+1
end
subplot(222)
plot(p,q)
xtitle("FOURIER SERIES PLOT FOR SAWTOOTH WAVE")
xgrid(1)
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
disp("FOR TRIANGULAR WAVE")
disp(a0,"a0")
disp(A(1),"A")
disp(B(1),"B")
c=1
for k=-5*l:0.01:5*l
    p(c)=k
    u=0;v=0;
for i=1:n
    u=u+A(i)*cos(i*%pi*k/l)
    v=v+B(i)*sin(i*%pi*k/l)
end
q(c)=a0+u+v
c=c+1
end
subplot(223)
plot(p,q)
xtitle("FOURIER SERIES PLOT FOR TIANGULAR WAVE")
xgrid(1)


//ENTER THE VALUE OF n:-15
//
//ENTER THE LIMITING VALUE OF FUNCTION:-%pi
//
//
// FOR SQUARE WAVE
//
// a0=
//
//   0.5
//
// A
//
//  -1.240D-17
//
// B
//
//   0.6366198
//
// FOR SAWTOOTH WAVE
//
// a0=
//
//   0.
//
// A
//
//   0.
//
// B
//
//   2.
//
// FOR TRIANGULAR WAVE
//
// a0
//
//  -2.1415927
//
// A
//
//   2.5464791
//
// B
//
//   0.
//
