alpha = 3.2;
p_0 = 0.1;
p = [];
for i = 1:25
    p(1) = alpha*p_0*(1-p_0);
    p(i+1) = alpha*p(i)*(1-p(i));
end
p = p';
n = [0:length(p) - 1];
n = n';
plot(n,p);
xlabel('n')
ylabel('p')
ylim([0 1])