format rat

n = 5;
p = 0.85;
A = [0 0 0 0 1; 
    0 0 1/2 1 0; 
    0 0 0 0 0; 
    0 1 1/2 0 0; 
    1 0 0 0 0];
I = eye(n);
K = zeros(n) + 1/n;

G = p*A + (1 - p)*K;


N = null(G - I, "r");
scoreV = (1 / sum(N)) * N
