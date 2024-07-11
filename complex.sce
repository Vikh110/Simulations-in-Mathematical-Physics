//SURYAKANT SHARMA
//21730823
//Aim: To integrate a complex function analytically and scilab inbuilt command


clc
clear
x0=input("Enter the lower limit:")
xn=input("Enter the upper limit:")
n=input("Enter the no. of subintervals(even):")
function p=f1(z)
    p=1/(z^2+2)
endfunction
//Inbuilt
s=intc(x0,xn,f1)
disp("Integrated value using inbuilt command:"+string(s))
//By simpson 1/3rd rule
h=(xn-x0)/n
function y=f(x)
    y=1/(x^2+2)
endfunction
s=f(x0)+f(xn)
l=0
k=0
for i=2:2:n-2
    l=l+f(x0+i*h)
end
for j=1:2:n-1
    k=k+f(x0+j*h)
end
s1=(h*(s+2*l+4*k))/3
disp("Value by simpson rule:"+string(s1))


//OUTPUT
//Enter the lower limit:-10000
//
//Enter the upper limit:10000
//
//Enter the no. of subintervals(even):1000000
//
//
// Integrated value using inbuilt command:2.2212415
//
// Value by simpson rule:2.2212415
