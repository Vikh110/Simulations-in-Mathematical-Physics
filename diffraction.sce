//Vishwas Khandelwal 17036567106
//Aim:To plot the diffraction pattern spectrum for 1,2,...n slits


clc()
clf()
clear()
n=input("ENTER THE NO. OF SLITS:-")
lemda=5890D-10
a=2*lemda
b=2*a
z=1
for theta= (-%pi/2):0.01:%pi/2
    s(z)=theta
    i0=1
    alpha=(%pi/lemda)*a*sin(theta)
    bita=(%pi/lemda)*(a+b)*sin(theta)
    i=i0*(sin(alpha))^2/(alpha)^2*(sin(n*bita)^2)/(sin(bita))^2
    y(z)=i
    z=z+1
end
subplot(121)
xgrid(1)
xtitle("DIFFRACTION PATTERN FOR "+string(n)+" SLITS")
xlabel("ANGLE OF DIFFRACTION")
ylabel("INTENSITY")
plot(s,y)
subplot(122)
polarplot(s,y)


// OUTPUT-1
//ENTER THE NO. OF SLITS:-2
//OUTPUT-2
//ENTER THE NO. OF SLITS:-3
//OUTPUT-3
//ENTER THE NO. OF SLITS:-15000

