gama = 1.2;
P_0 = 1000;
P = [];
for i = 1:25
    P(1) = 1000;
    P(i+1) = gama*P(i);
    p = P(i);
end
P = P';
n = [0:length(P) - 1];
n = n';
plot(n,P);
