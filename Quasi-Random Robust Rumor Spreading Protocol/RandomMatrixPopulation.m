clear all
N = 5;
A = zeros(5);
for j = 1:N
    for k = 1:j-1
        K = rand()
        if K > .5
            A(j,k) = 1;
        end
    end
end
A = A' + A;
k = 1:30;
[B,XY] = bucky;
gplot(A,XY(k,:),'-*')
axis square