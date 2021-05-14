%Set box size and probability of occupation
L = 10;
box = zeros(L,L);
p = 0.8;

%Determine which cells are occupied
for i = 1:L^2
    prob = rand();
    if prob < p
        box(i) = 1;
    end 
end 

%This plots the occupation map
figure
pcolor(box);
colormap(gray(2));
axis ij
axis square

%This adds a zero row to the bottom of the matrix
box(L+1,L+1) = 0;

%Set the first column of occupied spots on fire
for j = 1:L
    t = 1;
    if box(j) == 1
        box(j) = t+1;
    end
end

%Spreading the fire to nearest neighbors
for j = 1:(L^2)-L
for i = L+1:(L+1)^2
    if box(i) == 1 && box(i+(L+1)) == t+j
        box(i) = (t+1)+j;
    end
    if box(i) == 1 && box(i+1) == t+j
        box(i) = (t+1)+j;
    end
    if box(i) == 1 && box(i-1) == t+j
        box(i) = (t+1)+j;
    end
    if box(i) == 1 && box(i-(L+1)) == t+j
        box(i) = (t+1)+j;
    end
end
end
T = max(box);
T = max(T);
T = T - 1;

