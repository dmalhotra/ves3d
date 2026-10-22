% Copyright (C) 2010-2017 The Ves3D authors (see NOTICE)
% Author: Abtin Rahimian

function out = ReadAscii(name,count)

if ( nargin < 2 )
  count = {};
else
  count = {count};
end

fid = fopen(name,'r');
out = fscanf(fid,'%g',count{:});
fclose(fid);
