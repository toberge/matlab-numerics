%Program 6.4 Plotting program for one-body problem
%Inputs: time interval inter, initial conditions
% ic=[x0 vx0 y0 vy0 z0 vz0], x position, x velocity, y pos, y vel,z pos, z
% vel
% number of steps n, steps per point plotted p
% Calls a one-step method such as trapstep.m
% Example usage: orbit([0 100],[0 1 2 0 ? ?],10000,5)
function z=orbit(inter,ic,n,p)

h=(inter(2)-inter(1))/n; % plot n points
x0=ic(1);vx0=ic(2);y0=ic(3);vy0=ic(4);z0=ic(5);vz0=ic(6); % grab initial conds
y(1,:)=[x0 vx0 y0 vy0 z0 vz0];t(1)=inter(1); % build y vector

set(gca,'XLim',[-5 5],'YLim',[-5 5],'XTick',[-5 0 5],'YTick',...
[-5 0 5],'Drawmode','fast','Visible','on');
cla;
sun=line('color','y','Marker','.','markersize',25,...
'xdata',0,'ydata',0);
drawnow;
head=line('color','r','Marker','.','markersize',25,...
'erase','xor','xdata',[],'ydata',[]);
tail=line('color','b','LineStyle','-','erase','none', ...
'xdata',[],'ydata',[]);

%[px,py]=ginput(1); % include these three lines
%[px1,py1]=ginput(1); % to enable mouse support
%y(1,:)=[px px1-px py py1-py]; % 2 clicks set direction

for k=1:n/p
    for i=1:p
        t(i+1)=t(i)+h;
        y(i+1,:)=rk4step(t(i),y(i,:),h);
    end
    y(1,:)=y(p+1,:);t(1)=t(p+1);
    set(head,'xdata',y(1,1),'ydata',y(1,3))
    set(tail,'xdata',y(2:p,1),'ydata',y(2:p,3))
    drawnow;
end

function y=rk4step(t,w,h)
%one step of the Runge-Kutta order 4 method
s1=ydot(t,w);
s2=ydot(t+h/2,w+h*s1/2);
s3=ydot(t+h/2,w+h*s2/2);
s4=ydot(t+h,w+h*s3);
y=w+h*(s1+2*s2+2*s3+s4)/6

function z=ydot(t,y)
%Lorenz equations
s=10; r=28; b=8/3;
z(1)=-s*y(1)+s*y(2);function y=rk4step(t,w,h)
%one step of the Runge-Kutta order 4 method
s1=ydot(t,w);
s2=ydot(t+h/2,w+h*s1/2);
s3=ydot(t+h/2,w+h*s2/2);
s4=ydot(t+h,w+h*s3);
y=w+h*(s1+2*s2+2*s3+s4)/6

function z=ydot(t,y)
%Lorenz equations
s=10; r=28; b=8/3;
z(1)=-s*y(1)+s*y(2);
z(2)=-y(1)*y(3)+r*y(1)-y(2)
z(3)=y(1)*y(2)-b*y(3)