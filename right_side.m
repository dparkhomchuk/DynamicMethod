function right_part = right_side(t,x,A,e,b)
%temp = [[zeros(length(b),length(b)),eye(length(b),length(b))];[-A/e(1),-e(2)/e(1)*eye(length(b),length(b))]]; 
%right_part = [[zeros(2,2),eye(2,2)];[-[1,2;3,4]/e(1),-e(2)/e(1)*eye(2,2)]]*x + ...
%right_part =temp*x + [zeros(length(b),1);b/e(1)];

temp = [[zeros(length(b),length(b)),eye(length(b),length(b))];[-A/e(1),-e(2)/e(1)*eye(length(b),length(b))]]; 
right_part =temp*x + [zeros(length(b),1);b/e(1)];

end
    
