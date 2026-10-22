function count = writeData(fileName, suffix, data)
% WRITEDATA(fileName, data) - Project specific interface to write binary files

% Copyright (C) 2010-2017 The Ves3D authors (see NOTICE)
% Author: Abtin Rahimian
% From Abtin Rahimian's MATLAB toolkit Ves3DMat (2010), added to Ves3D in 2017.

if(isstr(suffix))
  fileName = ['../data' filesep fileName suffix '.bin'];
else
  fileName = ['../data' filesep fileName num2str(suffix) '.bin'];
end

if(~exist('../data', 'dir'))
  mkdir('../data')
end

fid = fopen(fileName, 'w');
if(fid>0)
	count = fwrite(fid, data, 'double');
	fclose(fid);
else
	count = fid;
end
