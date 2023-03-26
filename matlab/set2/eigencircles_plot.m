function eigencircles_plot(A)
%eigencircles_plot plots the eigencircles of a matrix + eigenvalues
d = diag(A);
R = A - diag(d);

hold on
axis equal
for k = 1:size(A,1)
    sum_row = sumabs(R(k,:));
    circle_plot(d(k), 0, sum_row)
end

%plotting the eigenvalue points
e = eig(A)
for k = 1:size(e)
    Re = real(e(k));
    Im = imag(e(k));
    plot(Re, Im, '.', 'MarkerSize', 30);
end

end


function circle_plot(x,y,r)
t = 0:0.01:2*pi;
plot(x+r*cos(t),y+r*sin(t),'LineWidth',2);
end
