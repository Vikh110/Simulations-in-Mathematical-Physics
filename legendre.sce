// Vishwas Khandelwal 17036567106
// AIM:-TO PLOT LEGENDRE POLYNOMIAL.


clc()
clf()
clear()
n=input("ENTER THE ORDER OF POLYNOMIAL:-")
if(modulo(n,2)==0) then
    m=n/2;
else
    m=(n-1)/2
end
p=1
for j=-1:0.01:1
    x(p)=j
    s=0
    for i=0:1:m
        s=s+(-1)^i*factorial(2*n-2*i)*x(p)^(n-2*i)/(2^n*factorial(i)*factorial(n-i)*factorial(n-2*i))
end
y(p)=s
p=p+1
end
subplot(221)
xgrid(1)
xtitle("Legendre polynomial of order "+string(n)+" by series solution","X-AXIS","Y-AXIS")
plot(x,y)
x=poly(0,'x')
v=(x^2-1)^n
for i=1:1:n
    v=derivat(v)
end
p=(1/2^n)*(1/factorial(n))*v
disp(p)
x=[-1:0.01:1];
z= legendre(n,0,x)
subplot(222)
xgrid(1)
xtitle("Legendre polynomial of order "+string(n)+" by inbuilt fuction","X-AXIS","Y-AXIS")
plot(x,z)
subplot(223)
xgrid(1)
xtitle("Legendre polynomial of order "+string(n),"X-AXIS","Y-AXIS")
plot(x,y,'*r')
plot(x,z)
legend("by series solution","by inbuilt",1)


//ENTER THE ORDER OF POLYNOMIAL:-6
//
//
//                  2          4          6
//  -0.3125 +6.5625x  -19.6875x  +14.4375x 
