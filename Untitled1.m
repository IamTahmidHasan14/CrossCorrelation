M=10;
N=50;
%i=1:M;
%j=1:N;
X=zeros([M N]);
for i=1: M
    for j=1: N        
        X(i, j)=cos(2*pi*i*j/N);
    end
end
plot(X(1,:));
mu =zeros([1,N]);
for i=1:M
    mu=mu+X(i,:);
end
C=zeros([N,N]);
plot(C);
for i=1:M
    C=C+((X(1,:)-mu)'*X(i,:));
end
hm=HeatMap(C);
plot(hm);
