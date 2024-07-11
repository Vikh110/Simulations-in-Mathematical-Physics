//SURYAKANT SHARMA
// 21730823
// AIM:-To solve the given second order differential equations using Euler,rk-2,rk-4,scilab inbuilt method and plot the solution.
// y"+2y'=-y
clc()
clf()
clear
// METHOD;- EULER
function dy=f1(x,y,z)
    dy=z;
endfunction
function dz=f2(x,y,z)
    dz=-y-2*z;
endfunction
x(1)=0;
y(1)=0;
z(1)=1;
h=0.1;
i=1;
for j=x(1):h:10
    x(i+1)=j+h;
    y(i+1)=y(i)+h*f1(x(i),y(i),z(i));
    z(i+1)=z(i)+h*f2(x(i),y(i),z(i));
    i=i+1;
end
subplot(221)
xgrid(1)
xtitle("EQN-1 BY EULER","X-AXIS","Y-AXIS")
plot(x,y)
plot(x,z,"O")
legend("plot for(x,y)","plot for (x,z)");
// METHOD RK-2
x(1)=0;
y(1)=0;
z(1)=1;
i=1;
k=0.1;
for j=0:k:10
    k1=k*f1(x(i),y(i),z(i));
    l1=k*f2(x(i),y(i),z(i));
    k2=k*f1(x(i)+k,y(i)+k1,z(i)+k1);
    l2=k*f2(x(i)+k,y(i)+l1,z(i)+l1);
    x(i+1)=x(i)+k;
    y(i+1)=y(i)+(k1+k2)/2;
    z(i+1)=z(i)+(l1+l2)/2;
    i=i+1;
end
subplot(222)
xgrid(1)
xtitle("EQN-1 BY RK-2","X-AXIS","Y-AXIS")
plot(x,y)
plot(x,z,"O")
legend("plot for(x,y)","plot for (x,z)");
// METHOD RK-4
x(1)=0;
y(1)=0;
z(1)=1;
i=1;
k=0.1;
for j=0:k:10
    k1=k*f1(x(i),y(i),z(i));
    k2=k*f1(x(i)+k/2,y(i)+k1/2,z(i)+k1/2);
    k3=k*f1(x(i)+k/2,y(i)+k2/2,z(i)+k2/2);
    k4=k*f1(x(i)+k,y(i)+k3,z(i)+k3);
    l1=k*f2(x(i),y(i),z(i));
    l2=k*f2(x(i)+k/2,y(i)+l1/2,z(i)+l1/2);
    l3=k*f2(x(i)+k/2,y(i)+l2/2,z(i)+l2/2);
    l4=k*f2(x(i)+k,y(i)+l3,z(i)+l3);
    x(i+1)=x(i)+k;
    y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
    z(i+1)=z(i)+(l1+2*l2+2*l3+l4)/6;
    i=i+1;
end
subplot(223)
xgrid(1)
xtitle("EQN-1 BY RK-4")
plot(x,y)
plot(x,z,"O")
legend("plot for(x,y)","plot for (x,z)");
//INBUILT
function z=f(x,y)
  z(1)=y(2)
  z(2)=-y(1)-2*z(1)
endfunction
x0=0;
y0=0;
z0=1;
x=0:0.1:10;
y=ode([y0;z0],x0,x,f)
subplot(224)
xgrid(1)
xtitle("EQN-1 BY INBUILT COMMAND")
plot(x,y(1,:))
plot(x,y(2,:),"o")
legend("plot for(x,y)","plot for (x,z)");
