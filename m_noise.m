function [core_s,f_s] = m_noise( core,f,lc,lf )
ss = size(core);
core_s=zeros(0,0);
for i=1:1:ss(1)
    for j=1:1:ss(2)
    core_s(i,j) = core(i,j) + random('Normal',0,lc,1,1);
    end
end
f_s = zeros(0);
for i = 1:1:length(lf)
f_s = f + random('Normal',0,lf,1,1);
end
f_s = f_s';
end

