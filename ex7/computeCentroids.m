function centroids = computeCentroids(X, idx, K)
centroids = zeros(K, size(X,2));
for i=1:K
  Xs=X(find(idx==i),:);
  centroids(i,:)=sum(Xs)/size(Xs,1);
end
end