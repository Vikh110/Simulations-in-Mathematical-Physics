// SURYAKANT SHARMA
// 21730823
// AIM:- To fit a nth order polynomial function in given data points using SCILAB INBUILT command.


clc
clf()
clear
n=input("ENTER THE ORDER OF POLYNOMIAL:-")
x=input("ENTER THE VALUE OF X:-")
y=input("Enter the value of y:-")
k=n
for j=1:1:n+1
    for i=1:1:length(x)
        A(i,j)=x(i,1)^k
    end
    k=k-1
end
B=[y]
P=lsq(A,B);
y2=0
k=n
for z=1:1:n+1
y2=y2+P(z,1)*x^(k)
k=k-1
end
xgrid(1)
xtitle(string(n)+"th ORDER POLYNOMIAL FIT USING SCILAB INBUILT COMMAND","X","Y")
plot(x,y,"x")
plot(x,y2)
legend("GIVEN DATA POINT","FITTED LINE")

// OUTPUT 1- 5TH ORDER

//ENTER THE ORDER OF POLYNOMIAL:-5
//
//ENTER THE VALUE OF X:-[1 2 3 4 5]'
//
//Enter the value of y:-[1 35 250 1050 3050]'
//
// OUTPUT 2- 2ND ORDER POLYNOMIAL
//
//ENTER THE ORDER OF POLYNOMIAL:-2
//
//ENTER THE VALUE OF X:-[1 2 3 4 5 6]'
//
//Enter the value of y:-[1 4 10 16 24 36]'
