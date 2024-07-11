// SURYAKANT SHARMA
// 21730823
// Aim:- To plot the Bessel Polynomials.


clc()
clf()
clear
n=input("ENTER THE ORDER OF POLYNOMIAL:-")
p=1
for x=0:0.1:10
  a(p)=x
  s=0
  for m=0:1:100
    s=s+(-1)^m*(x/2)^(2*m+n)/(factorial(m)*gamma(n+m+1))
end
b(p)=s
p=p+1
end
subplot(221)
xgrid(1)
xtitle("Bessel polynomial of order "+string(n)+" using series solution","x-axis","y-axis")
plot(a,b)
x=0:0.1:10
y=besselj(n,x)
subplot(222)
xgrid(1)
xtitle("Bessel polynomial of order "+string(n)+" using inbuilt command","x-axis","y-axis")
plot(x,y)
subplot(223)
xgrid(1)
xtitle("Bessel polynomial of order "+string(n)+" ","x-axis","y-axis")
plot(a,b,'*r')
plot(x,y)
legend("by series solution","by inbuilt command",1,%F)


// OUTPUT
// ENTER THE ORDER OF POLYNOMIAL:-2

