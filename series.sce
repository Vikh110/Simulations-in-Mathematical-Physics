// Vishwas Khandelwal 17036567106
// Aim:To find the value of sine, cosine and exponential function using the corresponding series expansion.
// Also plot the functions in given range


clc
clear
clf()
disp(" 3-cosine series"," 2-sine series"," 1-exponential series","Choose among the following")
c=input("Enter your choice:")
n=input("Enter upto which series is to be evaluated:")
x0=input("Enter intial value of x:")
xn=input("Enter last value of x:")

select(c)
//EXPONENTIAL SERIES :e^x=1 + x + x^2/2! + x^3/3! +...........
case 1 then
    k=1
    for i=x0:0.1:xn
        y=0
        for j=0:1:n
        y=((i^j)/factorial(j))+y
        end
        a(k)=i
        b(k)=y
        k=k+1
    end
xgrid(1)
xtitle("exponential series","x-axis","y-axis")
plot(a,exp(a),"*r")
plot(a,b)
legend("e^x by inbuilt","e^x by for loop",1,%T);
//SINE SERIES :sin(x)=x - x^3/3! + x^5/5! +......
case 2 then
    k=1
for j=x0:%pi/16:xn
  y=0
    for i=0:1:n
    y=(((-1)^i).*(j^(2*i+1))./factorial(2*i+1))+y
end
b(k)=y
a(k)=j
k=k+1
end
xgrid(1)
xtitle("sine series","x-axis","y-axis")
plot(a,sin(a),"*r")
plot(a,b)
legend("sin(x) by inbuilt","sin(x) by for loop",2,%T);
//COSINE SERIES: cos(x)=1 - x^2/2! + x^4/4!+.........
case 3 then
    k=1
    for i=x0:%pi/16:xn
        y=0
        for j=0:1:n
        y=((((-1)^j)*(i^(2*j)))/factorial(2*j))+y
        end
        a(k)=i
        b(k)=y
        
        k=k+1
    end
xgrid(1)
xtitle("cosine series","x-axis","y-axis")
plot(a,cos(a),"*r")
plot(a,b)
legend("cos(x) by inbuilt","cos(x) by for loop",4,%T);
end


// OUTPUT

// Choose among the following
//
//  1-exponential series
//
//  2-sine series
//
//  3-cosine series
// EXPONENTIAL SERIES
//Enter your choice:1
//
//Enter upto which series is to be evaluated:10
//
//Enter intial value of x:0
//
//Enter last value of x:4
//
//
// SINE SERIES
//Enter your choice:2
//
//Enter upto which series is to be evaluated:100
//
//Enter intial value of x:-3*%pi
//
//Enter last value of x:3*%pi
//
//
// COSINE SERIES
//Enter your choice:3
//
//Enter upto which series is to be evaluated:100
//
//Enter intial value of x:-3*%pi
//
//Enter last value of x:3*%pi
