// SURYAKANT SHARMA
// 21730823
// AIM:-To evaluate the integral using SIMPSON 1/3 and SCILAB INBUILT command


clc()
clear
x0=input("ENTER THE LOWER LIMIT OF INTERVAL:")
xn=input("ENTER THE UPPER LIMIT OF INTERVAL:")
n=input("ENTER THE NO OF SUBINTERVALS(EVEN):-")
function y=f(x)
    y=x^3
endfunction
h=(xn-x0)/n
s=f(x0)+f(xn)
p=0
q=0
for i=2:2:n-2
    p=p+f(x0+i*h)
end
for j=1:2:n-1
    q=q+f(x0+j*h)
end
s=(h/3)*(s+2*p+4*q)
disp("Value by SIMPSON 1/3 RULE:"+string(s))
z=integrate('x^3','x',x0,xn);
disp("Value by INTEGRATION:"+string(z))


// OUTPUT
//ENTER THE LOWER LIMIT OF INTERVAL:0
//
//ENTER THE UPPER LIMIT OF INTERVAL:5
//
//ENTER THE NO OF SUBINTERVALS(EVEN):-200
//
//
// Value by SIMPSON 1/3 RULE:156.25
//
// Value by INTEGRATION:156.25
