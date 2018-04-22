function idx = findClosestCentroids(X, centroids)
idx = zeros(size(X,1), 1);
for i=1:length(idx)
  [~,k]=min(sum((X(i,:)-centroids).^2,2));
  idx(i)=k;
end
end