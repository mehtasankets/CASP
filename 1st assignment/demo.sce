// x initialisation 
x=[0:0.1:2*%pi]';
//simple plot
plot(sin(x))
clf()
plot(x,sin(x))
//multiple plot
/*
clf()
plot(x,[sin(x) sin(2*x) sin(3*x)])
clf()

// axis on the right 
plot(x,sin(x)) 
a=gca(); // Handle on current axes entity 
a.y_location ="right"; 
clf()

// axis centered at (0,0)
plot(x-4,sin(x),x+2,cos(x))
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin"; 

// Some operations on entities created by plot ...
a=gca();
a.isoview='on'; 
a.children // list the children of the axes : here it is an Compound child composed of 2 entities 
poly1= a.children.children(2); //store polyline handle into poly1 
poly1.foreground = 4; // another way to change the style...
poly1.thickness = 3;  // ...and the tickness of a curve.
poly1.clip_state='off' // clipping control
a.isoview='off'; 

//LineSpec and GlobalProperty examples:
clf();
t=0:%pi/20:2*%pi;
plot(t,sin(t),'ro-.',t,cos(t),'cya+',t,abs(sin(t)),'--mo')
scf(2)
plot([t ;t],[sin(t) ;cos(t)],'xdat',[1:2])
scf(3)
axfig3 = gca();
scf(4) // should remain blank
plot(axfig3,[t ;t],[sin(t) ;cos(t)],'zdat',[1:2],'marker','d','markerfac','green','markeredg','yel')
xdel(winsid())

//Data specification
t=-%pi:0.1:%pi;
size(t)
plot(t) // simply plots y versus t vector size
clf(); // clear figure

plot(t,sin(t)); // plots sin(t) versus t
clf();

t=[1     1     1     1
   2     3     4     5
   3     4     5     6
   4     5     6     7];

plot(t) // plots each t column versus row size
clf();

subplot(221)
plot(t,sin(t)); // plots sin(t) versus t column by column this time
xtitle("sin(t) versus t")
subplot(222)
plot(t,sin(t)')
xtitle("sin(t)'' versus t")
subplot(223)
plot(t',sin(t))
a=gca();
a.data_bounds=[0 -1;7 1]; // to see the vertical line hiddden by the y axis
xtitle("sin(t) versus t''")
subplot(224)
plot(t',sin(t)')
xtitle("sin(t)'' versus t''")

clf();

//Special case 1
//x : vector ([5 6 7 8]) and y : matrix (t)
x=[5 6 7 8]
plot(x,t);
plot(x',t); // idem, x is automatically transposed to match t (here the columns)
clf()

// Only one matching possibility case : how to make 4 identical plots in 4 manners...
// x is 1x4 (vector) and y is 4x5 (non square matrix)
subplot(221);
plot(x,[t [8;9;10;12]]');
subplot(222);
plot(x',[t [8;9;10;12]]');
subplot(223);
plot(x,[t [8;9;10;12]]');
subplot(224);
plot(x',[t [8;9;10;12]]');
clf()

//Special case 2
// Case where only x or y is a square matrix
//x : matrix (t) and y  : vector ([1 2 3 4])
plot(t,[1 2 3 4]) // equivalent to plot(t,[1 1 1 1;2 2 2 2;3 3 3 3;4 4 4 4])
plot(t,[1;2;3;4]) // the same plot
clf();

// t is transposed : notice the priority given to the columns treatment
plot(t',[1 2 3 4]) // equivalent to plot(t',[1 1 1 1;2 2 2 2;3 3 3 3;4 4 4 4]) 
plot(t',[1 2 3 4]') // the same plot 
clf();

// y is a function defined by..
// ..a primitive
plot(1:0.1:10,sin) // equivalent to plot(1:0.1:10,sin(1:0.1:10))
clf();

// ..a macro:
deff('[y]=toto(x)','y=x.*x')
plot(1:10,toto)*/