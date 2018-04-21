function plotData(X, y)
figure; hold on;
pos=find(y==1);
neg=find(y==0);
plot(X(pos,1),X(pos,2),'rx');
plot(X(neg,1),X(neg,2),'bo');
hold off;
end

