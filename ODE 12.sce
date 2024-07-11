// SURYAKANT SHARMA
// 21730823
// AIM:-TO SOLVE FIRST ORDER DIFFERENTIAL EQUATIONS USING RK2,RK4,EULER, SCILAB INBUILT ANDANALYTICAL METHOD AND PLOT THE SOLUTION.
// y'=-exp(-t)*y+t^2....(2)
clf()
clc
clear
//RK-2
function ydot=f(t,y)
  ydot=-exp(-t)*y+t^2
endfunction
k=0.01
t(1)=0;
y(1)=0;
i=1;
for z=0:k:10
  k1=k*f(t(i),y(i));
  k2=k*f(t(i)+k,y(i)+k1)
  t(i+1)=z+k
  y(i+1)=y(i)+(k1+k2)/2;
  i=i+1
end
subplot(221);
xgrid(1)
xtitle("ydot=-exp(-t)*y+t^2 by rk-2","x-axis","y-axis")
plot(t,y)
//RK-4
function ydot=f(t,y)
  ydot=-exp(-t)*y+t^2
endfunction
k=0.01
t(1)=0;
y(1)=0;
i=1;
for z=0:k:10
  k1=k*f(t(i),y(i));
  k2=k*f(t(i)+k/2,y(i)+k1/2)
  k3=k*f(t(i)+k/2,y(i)+k2/2)
  k4=k*f(t(i)+k, y(i)+k3)
  t(i+1)=z+k;
  y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6
  i=i+1;
end
subplot(222)
xgrid(1)
xtitle("ydot=-exp(-t)*y+t^2by rk-4","x-axis","y-axis")
plot(t,y)
//ODE
function ydot= f(t,y)
  ydot= -exp(-t)*y+t^2
endfunction
y0=0;
t0=0;
t=0:0.1:10;
y=ode(y0,t0,t,f);
subplot(223)
xgrid(1)
xtitle("ydot= exp(-t)*y+t^2 by ode","x-axis","y-axis")
plot(t,y)
  //EULER
  h=0.01
j=1
k=1
function ydot= f(t,y)
  ydot= -exp(-t)*y+t^2
endfunction
a=0//initial state of x:
y=0//enter initial state of y
v=10//enter last value of x
for i=a:h:v-h
    g=y+h*f(i,y);
    y=g;
    b(j)=y
    x(j)=i
    j=j+1
  end;
  subplot(224)
  xgrid(1)
  xtitle("ydot= exp(-t)*y+t^2 by euler","x-axis","y-axis")
  plot(x,b)
