// SURYAKANT SHARMA
// 21730823
//Aim:To evaluate the DIRAC DELTA FUNCTION using Simpson's 1/3rd rule and scilab inbuilt commAND


clc()
clear
clf()
a=input("Enter the mean value:-")
s=input("Enter the standard deviation:-")

function p=f(x)
    p=(exp(-(x-a)^2/(2*s*s))*(x+3))/sqrt(2*%pi*s*s)
endfunction
x=0:0.1:7
//inbuilt
y=integrate('f(x)','x',0,x)
subplot(121)
xgrid(1)
xtitle("DIRAC DELTA FUNCTION BY SCILAB INBUILT COMMAND","X-AXIS","Y-AXIS")
plot(x,f)
plot(x,y,"x")
legend("function","integration of function") 
//simpson's 1/3rd rule
n=input("Enter the no. of subintervals(even):")
x0=0
z=1
for g=0:0.1:7
    xn=g
h=(xn-x0)/n
d=f(x0)+f(xn)
l=0
k=0
for i=2:2:n-2
    l=l+f(x0+i*h)
end
for j=1:2:n-1
    k=k+f(x0+j*h)
end
b(z)=(h*(d+2*l+4*k))/3
v(z)=g
z=z+1
end
subplot(122)
xgrid(1)
xtitle("DIRAC DELTA FUNCTION BY SIMPSON 1/3 RULE","X-AXIS","Y-AXIS")
plot(x,f)
plot(v,b,"O")
legend("function","integration of function") 


// OUTPUT
//STANDARD DEVIATION = 0.1
//Enter the mean value:-2
//
//Enter the standard deviation:-0.1
//
//Enter the no. of subintervals(even):200
//
//STANDARD DEVIATION =0.01
//Enter the mean value:-2
//
//Enter the standard deviation:-0.01
//
//Enter the no. of subintervals(even):1000
//
// STANDARD DEVIATION = 0.001
//Enter the mean value:-2
//
//Enter the standard deviation:-0.001
//
//Enter the no. of subintervals(even):10000
//
//
