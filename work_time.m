function [t,X,tim] = work_time(A,e,b,x0,t)
c = clock;
prop = odeset('MaxStep',5);
[T,x1] = ode23s(@(t,x)right_side(t,x,A'*A,e,A'*b),[0 t],x0,prop);
t = T;
X = x1;
d = clock;
tim = d-c;
end

