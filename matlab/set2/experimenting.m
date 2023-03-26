A = [-2 0 1/2 1; -1/4 1 1/4 0; 0 0 3 -1; 1/8 1/8 1/4 2];
%eigencircles_plot(A)

B = [3 1 1; 1 0 1; -1 1 -2];
%eigencircles_plot(B)

P = [0 0 1/2 0 1/2; 0 0 1 0 0; 1/4 1/4 0 1/4 1/4; 
    0 0 1/2 0 1/2; 0 0 0 0 1];
%eigencircles_plot(P)

d = [3 2 1 8];
D = diag(d);
eigencircles_plot(D)
