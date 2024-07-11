// SURYAKANT SHARMA
// 21730823
// AIM:- To evaluate the integral of any function using Simpson's 3/8 rule and scilab inbuilt command.
clc()
clc()
clear
x0=input("Enter the lower limit of interval:-:")
xn=input("Enter the upper limit of interval:-:")
n=input("Enter the no. of subintervals(odd):")
function y=f(x)
    y=x^3
endfunction
h=(xn-x0)/n
s=f(x0)+f(xn)
p=0
q=0
for i=3:3:n-3
    p=p+f(x0+i*h)
end
for j=1:1:n-1
  if (modulo(j,3)~=0) then
    q=q+f(x0+j*h)
end
end
s=(3*h/8)*(s+2*p+3*(q))
disp("Value by simpson 3/8 rule: "+string(s))
z=integrate('x^3','x',x0,xn);
disp("Value by integration:_"+string(z))

//OUTPUT
//
//Enter the lower limit of interval:-:0
//
//Enter the upper limit of interval:-:4
//
//Enter the no. of subintervals(odd):171
//
//
// Value by simpson 3/8 rule: 64
//
// Value by integration:_64
//
//
