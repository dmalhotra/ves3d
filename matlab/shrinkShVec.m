% Copyright (C) 2010-2017 The Ves3D authors (see NOTICE)
% Author: Abtin Rahimian
% From Abtin Rahimian's MATLAB toolkit Ves3DMat (2010), added to Ves3D in 2017.

function shcOut = shrinkShVec(shc)
  
  persistent indices freqs
  
  %-- Calculating the sizes
  [d1 d2]= size(shc);
  p = (sqrt(8*d1+1)-3)/4;

  ii = find(freqs == p, 1);
  if(isempty(ii))
    nf = (2*p+1)*(p+1);
    idx =reshape(1:nf, p+1, 2*p+1);
    for ii=0:p
      idx(ii+1, [1:p-ii p+ii+2:2*p+1]) = 0;
    end
    %To have same orders next to each other
    idx = idx';
    idx = idx(idx~=0);
    indices{end+1} = idx;
    freqs(end+1) = p;
    ii = length(freqs);
  end
  
  shcOut = shc(indices{ii},:);    
  
