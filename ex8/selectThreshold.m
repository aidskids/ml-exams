function [bestEpsilon bestF1] = selectThreshold(yval, pval)
bestEpsilon = 0;
bestF1 = 0;
F1 = 0;
stepsize = (max(pval) - min(pval)) / 1000;
  for epsilon = min(pval):stepsize:max(pval)
      hxval=pval<epsilon;
      tp=sum((hxval==1)&(yval==1));
      fp=sum((hxval==1)&(yval==0));
      fn=sum((hxval==0)&(yval==1));
      tn=sum((hxval==1)&(yval==1));
      p=tp/(tp+fp);
      r=tp/(tp+fn);
      F1=2*p*r/(p+r);
      if F1 > bestF1
         bestF1 = F1;
         bestEpsilon = epsilon;
      end
  end
end