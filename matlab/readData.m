function [val rFlag] = readData(fileInit, suffix, dim)
% READDATA(fileInit, suffix, dim) - Project specific interface to read binary files

% Copyright (C) 2010-2017 The Ves3D authors (see NOTICE)
% Author: Abtin Rahimian
% From Abtin Rahimian's MATLAB toolkit Ves3DMat (2010), added to Ves3D in 2017.
  
  nd = prod(dim); % number of entries to be read
  if(isstr(suffix))
    fileName = ['../data' filesep fileInit suffix '.bin'];
  else
    fileName = ['../data' filesep fileInit num2str(suffix) '.bin'];
  end
  rFlag = exist(fileName,'file'); 
  if(rFlag)
	  fid = fopen(fileName,'r');
	  val = fread(fid, nd,'double');
	  fclose(fid);
  
	  if(size(dim,2)>1)
		  val = reshape(val, dim);
	  end
  else
	  val = [];
  end
