// Vishwas Khandelwal 17036567106
// AIM:- To fit a polynomial function in given data points using the LEAST SQUARE METHOD and SCILAB INBUILT command.

clc
clf()
clear
x=input("ENTER THE VALUE OF X:-")
// LINEAR FIT
y=input("ENTER THE VALUE OF Y FOR LINEAR FIT:-")
n=length(x)
B=[sum(y);sum((x).*y)]
A=[n sum(x);sum(x) sum(x^2)]
P=A\B
disp(P(1,1),"INTERCEPT")
disp(P(2,1),"SLOPE")
y1=P(1,1)+P(2,1)*x
subplot(221)
xgrid(1)
xtitle("LINEAR FIT USING LEAST SQUARE FIT METHOD","X","Y")
plot(x,y,"d")
plot(x,y1)
legend("GIVEN DATA POINT","FITTED LINE")
// SCILAB INBUILT COMMAND
C=[x,ones(x)]
D=[y]
Q=lsq(C,D);
y2=Q(1,1)*x+Q(2,1)
subplot(222)
xgrid(1)
xtitle("LINEAR FIT USING SCILAB INBUILT COMMAND","X","Y")
plot(x,y,"square")
plot(x,y2)
legend("GIVEN DATA POINT","FITTED LINE")

// QUADRATIC FIT
ys=input("ENTER THE VALUE OF Y FOR SQUARE FIT:-")
E=[x^2,x,ones(x)]
F=ys
R=lsq(E,F)
y3=R(1,1)*x^2+R(2,1)*x+R(3,1)
subplot(223)
xgrid(1)
xtitle("QUADRATIC FIT","X","Y")
plot(x,ys,"x")
plot(x,y3)
legend("GIVEN DATA POINT","FITTED GRAPH")

// CUBIC FIT
yc=input("ENTER THE VALUE OF Y FOR CUBIC FIT:-")
G=[x^3,x^2,x,ones(x)]
H=yc
S=lsq(G,H)
y4=S(1,1)*x^3+S(2,1)*x^2+S(3,1)*x+S(4,1)
subplot(224)
xgrid(1)
xtitle("CUBIC FIT","X","Y")
plot(x,yc,"o")
plot(x,y4)
legend("GIVEN DATA POINT","FITTED GRAPH")


// OUTPUT
//ENTER THE VALUE OF X:-[1 2 3 4 5 6]'
//
//ENTER THE VALUE OF Y FOR LINEAR FIT:-[2 3 5 6 6.5 7]'
//
//
// INTERCEPT
//
//   1.2666667
//
// SLOPE
//
//   1.0428571
//ENTER THE VALUE OF Y FOR SQUARE FIT:-[1 4 10 16 24 36]'
//
//ENTER THE VALUE OF Y FOR CUBIC FIT:-[1 8 27 64 125 216]'
//
