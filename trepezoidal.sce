// SURYAKANT SHARMA
// 21730823
// AIM:- To evaluate the integral of given function using TRAPEZOIDAL RULE  and SCILAB INBUILT command. 


clc()
clf()
clear
x0=input("ENTER THE LOWER LIMIT OF INTERVAL:")
xn=input("ENTER THE UPPER LIMIT OF INTERVAL:")
n=input("ENTER THE NO OF SUBINTERVALS:-")
function y=f(x)
    y=x^2
endfunction
h=(xn-x0)/n
y0=f(x0)
yn=f(xn)
s=y0+yn
for i=1:1:n-1
    x(i)=x0+i*h
    y(i)=f(x(i))
    s=s+(2*y(i))
end
p=(h/2)*s
disp("Value by TRAPEZOIDAL RULE : "+string(p))
q=integrate('x^2','x',x0,xn);
disp("Value by INTEGRATION: "+ string(q))


// OUTPUT
//ENTER THE LOWER LIMIT OF INTERVAL:0
//
//ENTER THE UPPER LIMIT OF INTERVAL:5
//
//ENTER THE NO OF SUBINTERVALS:-250
//
//
// Value by TRAPEZOIDAL RULE : 41.667
//
// Value by INTEGRATION: 41.666667
//
//
